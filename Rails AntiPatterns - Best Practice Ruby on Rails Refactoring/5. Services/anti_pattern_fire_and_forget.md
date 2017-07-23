## AntiPattern: Fire and Forget

When dealing with external services, there are three main response strategies:

- Check the response, catching any and all errors, and gracefully handle each potential
case.
-  Check the response for simple success or failure and don’t gracefully handle anything
else.
- Don’t check the response at all; either assume that the request always succeeds or
simply don’t care if it fails.

The third strategy, which we call "fire and forget," may be valid in rare circumstances,
but in most cases, it’s insufficient.

For example, if you’re providing status updates to a
noncritical service such as Facebook, it may simply not matter if the update never
makes it to Facebook. The following code sample is an illustration of this strategy. It
uses the Facebooker library to post to the Facebook feed:

```ruby
def post_to_facebook_feed(message, action_links)
  facebook_session.user.publish_to(facebook_session.user,
                                   :message => message,
                                   :action_links => action_links)
end
```

Unfortunately, the publish_to method can raise a number of exceptions. Even if you
don’t care if this feed item was successfully posted, if you don’t rescue those exceptions,
an uncaught exception is thrown, resulting in a 500 error being presented to the user.

### Solution: Know What Exceptions to Look Out For

You could solve the problem of exceptions being thrown by using a heavy hand and
rescuing all exceptions as shown in the following rewritten method:

```ruby
def post_to_facebook_feed(message, action_links)
  facebook_session.user.publish_to(facebook_session.user,
                                   :message => message,
                                   :action_links => action_links)
rescue
end
```

Unfortunately, rescuing all errors is a very bad practice to get into; frankly, you
should never do it. When you rescue all errors, you run the risk of squelching potentially
important information.

The proper solution here is to understand the actual exceptions that will be raised
by the Facebook communication and rescue those, even if you decide not to do anything
with them.

It turns out that Facebooker can potentially raise 17 different individual errors.
These can be stored in an array and splatted on the rescue in order to increase readability
and reusability:

```ruby
def post_to_facebook_feed(message, action_links)
  facebook_session.user.publish_to(facebook_session.user,
    :message => message,
    :action_links => action_links)
  rescue *FACEBOOK_ERRORS => facebook_error
    HoptoadNotifier.notify facebook_error
end
```

The ```FACEBOOK_ERRORS``` constant contains the following exceptions:

```ruby
FACEBOOK_ERRORS = [Facebooker::NonSessionUser,
                   Facebooker::Session::SessionExpired,
                   Facebooker::Session::UnknownError,
                   Facebooker::Session::ServiceUnavailable,
                   Facebooker::Session::MaxRequestsDepleted,
                   Facebooker::Session::HostNotAllowed,
                   Facebooker::Session::MissingOrInvalidParameter,
                   Facebooker::Session::InvalidAPIKey,
                   Facebooker::Session::CallOutOfOrder,
                   Facebooker::Session::IncorrectSignature,
                   Facebooker::Session::SignatureTooOld,
                   Facebooker::Session::TooManyUserCalls,
                   Facebooker::Session::TooManyUserActionCalls,
                   Facebooker::Session::InvalidFeedTitleLink,
                   Facebooker::Session::InvalidFeedTitleLength,
                   Facebooker::Session::InvalidFeedTitleName,
                   Facebooker::Session::BlankFeedTitle,
                   Facebooker::Session::FeedBodyLengthTooLong]
```

 It turns out that a number of errors could potentially be raised when
making an HTTP request using the standard `Net::HTTP library:`

```ruby
HTTP_ERRORS = [Timeout::Error,
               Errno::EINVAL,
               Errno::ECONNRESET,
               EOFError,
               Net::HTTPBadResponse,
               Net::HTTPHeaderSyntaxError,
               Net::ProtocolError]
```

You would then use the following:

```ruby
begin
  req = Net::HTTP::Post.new(url.path)
  req.set_form_data({'xml' => xml})
  http = Net::HTTP.new(url.host, url.port).start
  response = http.request(req)
  rescue *HTTP_ERRORS => e
    HoptoadNotifier.notify e
end
```

Note that you shouldn’t rescue all errors with `rescue => e`, and there is a gotcha
if you try to. `Timeout::Error` doesn’t descend from StandardError, and rescue with
no exception classes specified rescues only exceptions that descend from
`StandardError`. Therefore, timeouts aren’t caught, and they result in total failure.

#### Message in a Bottle

 Most applications specify the following
in their environment:

```ruby
config.action_mailer.raise_delivery_errors = false
```

With this setting, no errors can be raised, including those for both connection errors
and bad email addresses.

But when sending an email with ActionMailer via SMTP, two possible types of
exceptions can occur. The first type can be considered server errors: exceptions caused
because of network problems or incorrect SMTP configuration. The second class of
exceptions are user errors, such as the user typing in an invalid email address

-- In progress --
