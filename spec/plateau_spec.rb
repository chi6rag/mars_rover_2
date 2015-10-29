require 'mars_rover'

module MarsRover
  RSpec.describe Plateau do

    describe '#new' do
      context 'with valid params' do
        it 'creates a new plateau' do
          p = Plateau.new(5,5)
          expect(p.instance_eval("@length")).to eq(5)
          expect(p.instance_eval("@breadth")).to eq(5)
        end
      end

      context 'with invalid params' do
        it 'raises Exception' do
          p = nil
          expect { p = Plateau.new(-10,20) }.to raise_error('Wrong Length or Breadth Combination')
          expect(p.instance_eval('@length')).to be_nil
          expect(p.instance_eval('@breadth')).to be_nil
        end
      end
    end

  end
end