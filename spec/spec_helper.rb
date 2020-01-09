# frozen_string_literal: true

require 'rspec'
require 'json'

RSpec::Matchers.define :be_valid_json do
  match do |actual|
    JSON.parse actual
    true
  rescue StandardError
    false
  end
end
