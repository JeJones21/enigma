require 'spec_helper'

RSpec.describe Shift do
  context 'Object Creation' do
    shift = Shift.new("02715", "040895")

      it 'exists and has readable attributes' do
        expect(shift).to be_an_instance_of(Shift)
        expect(shift.key).to eq("02715")
        expect(shift.date).to eq( "040895")
        expect(shift.offset.date).to eq("040895")
      end 
    end
  end
