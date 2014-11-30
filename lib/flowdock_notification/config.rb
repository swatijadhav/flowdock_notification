module FlowdockNotification
  class Config

    attr_accessor :notification_from, :notification_to

    def initialize
      @notification_from = ENV['FLOWDOCK_NOTIFICATION_FROM']
      @notification_to = ENV['FLOWDOCK_NOTIFICATION_TO']
    end

  end
end
