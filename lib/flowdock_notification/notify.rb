require 'action_mailer'

module FlowdockNotification

  class Notify
    attr_accessor :subject, :body

    def initialize(subject= "", body= "")
      @body    = body
      @subject = subject
    end

    def send_notification
      FlowdockNotification::SendEmail.send_notification(mailer_details, body)
    end

    def mailer_details
      {
        to:      FlowdockNotification.config.notification_to,
        from:    FlowdockNotification.config.notification_from,
        subject: subject
      }
    end

  end

end
