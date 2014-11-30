require 'flowdock_notification'

describe "FlowdockNotification::Notify" do

  let(:subject) { "Mail Subject" }
  let(:body) { "Notification to flowdock group" }
  let(:notification) { FlowdockNotification::Notify.new(subject, body) }

  describe "initialize" do
    it "should set subject and body" do
      expect( notification.subject ).to eql(subject)
      expect( notification.body ).to eql(body)
    end
  end

  describe "mailer_details" do
    it do
      expect( notification.mailer_details.keys ).to match_array([:to, :from, :subject])
      expect( notification.mailer_details[:subject] ).to eq(subject)
    end
  end

end
