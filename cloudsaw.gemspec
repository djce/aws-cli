Gem::Specification.new do |s|
  s.name        = 'cloudsaw'
  s.version     = '0.4.1'
  s.date        = '2015-03-13'
  s.summary     = 'Tools for working with various Amazon Web Services'
  s.description = '
    cloudsaw provides tools for working with various Amazon Web Services.

    It includes:

    - SQS: create, delete, list queues; publish a message from stdin;
      receive messages to stdout; ...

    - S3: create, delete, list buckets; list objects, and multipart uploads;
      put object from stdin; get object to stdout; ...

    - SimpleDB: create, delete, list domains; query; dump entire domain as
      json; ...

    Defaults to eu-west-1, or whatever $AWS_REGION is set to.
    Respects $https_proxy.
  '
  s.homepage    = 'https://github.com/rvedotrc/cloudsaw'
  s.authors     = ['Rachel Evans']
  s.email       = 'cloudsaw-git@rve.org.uk'

  s.executables = %w[
cloudsaw-test
ec2-list-instances
s3-create-bucket
s3-delete
s3-delete-bucket
s3-empty-bucket
s3-get
s3-list-bucket
s3-list-buckets
s3-presigned-url
s3-put
s3-rm
s3-sync
sdb-backup
sdb-create-domain
sdb-delete-domain
sdb-empty-domain
sdb-list-domains
sdb-query
sdb-restore
sns-create-topic
sns-delete-topic
sns-list-subscriptions
sns-list-topics
sns-unsubscribe
sqs-create-queue
sqs-delete-queue
sqs-grep
sqs-list-queues
sqs-publish
sqs-receive
  ]

  s.files       = %w[
lib/cloudsaw.rb
  ] + s.executables.map {|s| "bin/"+s}

  s.require_paths = ["lib"]

  s.add_dependency 'aws-sdk-v1', "~> 1.63"
end
