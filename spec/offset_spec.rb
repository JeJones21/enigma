require './lib/offset'

RSpec.describe Offset do
  context 'initialize' do
    offset = Offset.new

    it "exists and has readable attributes" do
      expect(offset).to be_an_instance_of(Offset)
    end
  end
end
