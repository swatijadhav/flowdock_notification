require 'flowdock_notification'

describe "FlowdockNotification::Config" do

  let(:notification_from) { "test@example.com" }
  let(:notification_to) { "test@test.flowdock.com" }

  before do
    # config is a cached class variable so we need to reset state
    FlowdockNotification.config = nil
  end

  it "should set the notification_from email-id" do
    FlowdockNotification.configure do |config|
      config.notification_from = notification_from
    end
    expect( FlowdockNotification.config.notification_from ).to eql(notification_from)
  end

  it "should set the notification_to key" do
    FlowdockNotification.configure do |config|
      config.notification_to = notification_to
    end
    expect( FlowdockNotification.config.notification_to ).to eql(notification_to)
  end

  it "should set the API key from ENV['FLOWDOCK_NOTIFICATION_FROM']" do
    ENV['FLOWDOCK_NOTIFICATION_FROM'] = notification_from
    expect( FlowdockNotification.config.notification_from ).to eql(notification_from)
  end

  it "should set the API key from ENV['FLOWDOCK_NOTIFICATION_TO']" do
    ENV['FLOWDOCK_NOTIFICATION_TO'] = notification_to
    expect( FlowdockNotification.config.notification_to ).to eql(notification_to)
  end

end
