## What's a Service

In this book, service generally refers to a system that responds to HTTP requests. Such
HTTP requests are usually to write, retrieve, or modify data. Examples of public-facing
HTTP services include Twitter’s API (http://apiwiki.twitter.com), the Amazon S3 service
(http://aws.amazon.com/s3/), the Delicious API (http://delicious.com/help/api), the
Digg API (http://apidoc.digg.com), and the New York Times APIs (http://developer
.nytimes.com/docs). Internally, services could exist to contain pieces of data and business
logic that are used by one or more applications

Internally, services could exist to contain pieces of data and business
logic that are used by one or more applications.

Using a broader scope of definition, service can refer to a system that provides
functionality through a standard interface. Working at this level of abstraction are
services such as relational databases (for example, MySQL), Memcached servers, message
queues (for example, RabbitMQ), and other types of data stores, such as Cassandra
(http://incubator.apache.org/cassandra/).

More specifically, this book
focuses on services that are designed to roughly follow a RESTful paradigm
