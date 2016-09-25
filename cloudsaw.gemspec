Gem::Specification.new do |s|
  s.name        = 'cloudsaw'
  s.version     = '0.4.5'
  s.date        = '2015-07-19'
  s.summary     = 'Tools for working with various Amazon Web Services'
  s.description = '
    cloudsaw provides tools for working with various Amazon Web Services.

    It includes:

    - SQS: list queues with message counts; publish a message from stdin;
      receive messages to stdout; search messages by content

    - S3: list buckets; list objects, and multipart uploads;
      put object from stdin; get object to stdout; generate presigned URL

    - SimpleDB: query; dump entire domain as json; restore from json

    - CloudFormation: show stack events

    Defaults to eu-west-1, or whatever $AWS_REGION is set to.
    Respects $https_proxy.
  '
  s.homepage    = 'https://github.com/rvedotrc/cloudsaw'
  s.authors     = ['Rachel Evans']
  s.email       = 'cloudsaw-git@rve.org.uk'

  s.executables = %w[
cfn-events
cloudsaw-test
s3-empty-bucket
s3-get
s3-list-bucket
s3-list-buckets
s3-presigned-url
s3-put
sdb-backup
sdb-empty-domain
sdb-query
sdb-restore
sqs-grep
sqs-list-queues
sqs-publish
sqs-receive
  ]

  s.files       = %w[
lib/cloudsaw.rb
  ] + s.executables.map {|s| "bin/"+s}

  s.require_paths = ["lib"]

  s.add_dependency 'aws-sdk-v1', "~> 1.64"
  s.add_dependency 'aws-sdk', "~> 2.0"
end
