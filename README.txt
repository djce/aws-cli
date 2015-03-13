aws-cli - simple command line tools for Amazon Web Services
-------------------------------------------------------------------------------

It includes:

- SQS: create, delete, list queues; publish a message from stdin;
receive messages to stdout; ...

- S3: create, delete, list buckets; list objects, and multipart uploads;
put object from stdin; get object to stdout; ...

- SimpleDB: create, delete, list domains; query; dump entire domain as
json; ...

Region can be set via $AWS_REGION / $AMAZON_REGION / $AWS_DEFAULT_REGION.

Respects $https_proxy.

Why?
-------------------------------------------------------------------------------

Mainly me just playing with the Ruby AWS SDK, and learning.

If I, or other people, happen to find these tools useful as a side effect,
then that's a bonus.

Requirements
-------------------------------------------------------------------------------

 - Ruby
 - The AWS Ruby SDK
 - Access to some AWS account

Configuration
-------------------------------------------------------------------------------

The usual environment variables: AWS_ACCESS_KEY_ID, AWS_SECRET_KEY etc.

AWS_REGION is respected, and defaults to eu-west-1.

Usage as a gem
-------------------------------------------------------------------------------

gem build aws-cli.gemspec
gem install <the .gem file it just built>

Usage from git
-------------------------------------------------------------------------------

Either:

  . setenv.sh
  some-command and args ...

or:

  ./sh some-command and args ...

