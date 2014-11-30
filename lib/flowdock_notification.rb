require "flowdock_notification/version"
require "flowdock_notification/config"
require "flowdock_notification/send_email"
require "flowdock_notification/notify"

module FlowdockNotification

  class << self
    attr_accessor :config
  end

  def self.configure
    yield(config)
  end

  def self.config
    @config ||= Config.new
  end

end
