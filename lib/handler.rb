# frozen_string_literal: true

require 'json'

# Handler
class Handler
  def self.process(event:, context:)
    puts({ event: event, context: context.inspect }.to_json)

    true
  end
end
