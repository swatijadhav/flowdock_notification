require 'action_mailer'

module FlowdockNotification

  class Notify < ActionMailer::Base
    attr_accessor :subject, :body

    def initialize(subject: "", body: "")
      @body    = body
      @subject = subject
    end

    def send_notification
      mail mailer_details do |format|
        format.text { render text: body }
      end
    end

    def mailer_details
      {
        to:      FlowdockNotification.config.notofication_to,
        from:    FlowdockNotification.config.notofication_from,
        subject: subject
      }
    end
  end

end
