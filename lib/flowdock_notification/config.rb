module FlowdockNotification
  class Config

    attr_accessor :notofication_from
    attr_accessor :notofication_to

    def initialize
      @notofication_from = ENV['FLOWDOCK_NOTIFICATION_FROM']
      @notofication_to = ENV['FLOWDOCK_NOTIFICATION_TO']
    end

  end
end
