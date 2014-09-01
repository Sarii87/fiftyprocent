require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "it persists a model" do
    event = Event.new(name: "Froscon")
    event.save
    assert event.persisted?
  end 
end

