require "reloadapp/version"
require "rb-fsevent"

module Reloadapp
  @@token = ''

  def self.run(token)
    @@token = token
    on_change { change_event }
  end

  def self.change_event
    `curl -silet http://reloadapp.com/faye -d 'message={"channel" :"/websites/#{@@token}/reload", "data":"reload"}' > /dev/null`
    puts "sending reload request"
  end

  def self.on_change &block
    FSEvent.new.tap do |fsevent|
      fsevent.watch('.', &block)
      fsevent.run
    end
  end
end
