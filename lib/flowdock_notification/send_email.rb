require 'action_mailer'

module FlowdockNotification
  class SendEmail < ActionMailer::Base

    def self.send_notification(mailer_details, body)
      mail mailer_details do |format|
        format.text { render text: body }
      end
    end

  end
end
