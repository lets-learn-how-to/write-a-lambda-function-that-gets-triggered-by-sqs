# frozen_string_literal: true

require 'handler'

class ContextStub
  def initialize(data)
    @data = data
  end

  def inspect
    @data
  end
end

describe Handler do
  context 'SNS Topic' do
    let(:response) do
      Handler.process(
        event: { type: 'thing' },
        context: ContextStub.new(env: 'test')
      )
    end

    it 'returns some json' do
      expect(response).to be_truthy
    end
  end
end
