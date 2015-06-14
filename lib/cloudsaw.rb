require 'aws-sdk-v1'

class CloudSaw

  def self.create_sns_client
    config = core_config.merge({
    })
    AWS::SNS.new(config)
  end

  def self.create_ec2_client
    config = core_config.merge({
    })
    AWS::EC2.new(config)
  end

  def self.create_sqs_client
    config = core_config.merge({
    })
    AWS::SQS.new(config)
  end

  def self.create_sdb_client
    config = core_config.merge({
      :simple_db_consistent_reads => true,
    })
    AWS::S3.new(config)
    AWS::SimpleDB.new(config)
  end

  def self.create_s3_client
    config = core_config.merge({
    })
    AWS::S3.new(config)
  end

  def self.create_route53_client
    config = core_config.merge({
    })
    AWS::Route53.new(config)
  end

  def self.create_cf_client
    config = core_config.merge({
    })
    AWS::CloudFormation.new(config)
  end

  def self.core_config
    {
      :proxy_uri => get_proxy,
      :max_retries => 2,
    }
  end

  def self.get_proxy
    e = ENV['https_proxy']
    e = "https://#{e}" if e && !e.empty? && !e.start_with?('http')
    return e
  end
end

