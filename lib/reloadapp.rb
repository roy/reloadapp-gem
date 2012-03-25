require "reloadapp/version"
require "rb-fsevent"

module Reloadapp
  def self.run
    on_change { change_event }
  end

  def self.change_event
    puts "You've changes something!" 
  end

  def self.on_change &block
    FSEvent.new.tap do |fsevent|
      fsevent.watch('.', &block)
      fsevent.run
    end
  end
end
