# FlowdockNotification

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'flowdock_notification'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flowdock_notification

## Configuration

To send notification to your flowdock group, you will need email-address of flowdock group. You can get it from flow-settings of your group.

(Rails) Create config/initializers/flowdock_notification.rb

```ruby
FlowdockNotification.configure do |config|
  config.notification_from = "test@example.com"
  config.notification_to = "test@test.flowdock.com"
end
```

Alternatively, set environment variables before loading the gem:

```shell
FLOWDOCK_NOTIFICATION_FROM=test@example.com
FLOWDOCK_NOTIFICATION_TO=test@test.flowdock.com
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/flowdock_notification/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Authors / Credits

* Swati Jadhav (@swatijadhav)
