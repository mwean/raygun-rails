class AppLogger
  def self.info(*args)
    new(*args).log(:info)
  end

  def self.warn(*args)
    new(*args).log(:warn)
  end

  def self.error(*args)
    new(*args).log(:error)
  end

  private

  attr_reader :subtype, :payload, :block, :level, :exception

  def initialize(subtype, payload, &block)
    @subtype = subtype
    @payload = payload
    @block = block
  end

  def log(level)
    @level = level

    execute_block
    handle_error
    write_log
  end

  def execute_block
    return unless block

    start_time = Time.now
    block.call
    end_time = Time.now
    payload[:duration] = end_time - start_time
  end

  def handle_error
    return unless level == :error
    @exception = payload.delete(:exception)
    payload[:error_id] = send_error_report
  end

  def send_error_report
    ErrorTracker.error(exception)
  end

  def write_log
    Rails.logger.send(level, payload)
  end
end
