module FlowdockNotification

  class notify
    attr_accessor :subject, :body

    def initialize(subject: "", body: "")
      @body    = body
      @subject = subject
    end

    def send_notification
      mail mailer_details
    end

    def mailer_details
      {
        to:      FlowdockNotification.config.notofication_to,
        from:    FlowdockNotification.config.notofication_from,
        subject: subject,
        body:    body
      }
    end
  end

end
