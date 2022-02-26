require 'time'

class SecretFile
  def initialize(secret_data, security_logger)
    @data = secret_data
    @security_logger = security_logger
  end

  def data
    @security_logger.create_log_entry
    @data
  end
end

class SecurityLogger
  attr_reader :records

  def initialize
    @records = []
  end

  def create_log_entry
    records << "The record has been accessed at #{Time.now}"
  end
end

logger1 = SecurityLogger.new
secret = SecretFile.new("Shh....This is a Secret", logger1)

p secret.data
p secret.data
p secret.data
p secret.data
p secret.data

p logger1.records


