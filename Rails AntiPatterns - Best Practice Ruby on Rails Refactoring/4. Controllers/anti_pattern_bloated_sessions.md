## AntiPattern: Bloated Sessions

The general philosophy for the Rails framework and Rails applications is that each request to the application should be relatively stateless. 

This means that each request is independent of prior and future requests and contains all the information needed to perform that request.

For example, if an application features a multistep wizard, the server doesn’t
record internally which step a user is on as he or she moves through the wizard.

Instead, the client itself communicates which step it’s on and provides all the information necessary to process the request.
