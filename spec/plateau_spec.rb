require 'mars_rover'

module MarsRover
  RSpec.describe Plateau do

    describe '#new' do
      context 'with valid params' do
        it 'creates a new plateau' do
          p = Plateau.new(10,5)
          expect(p.instance_eval'@x_min').to eq(0)
          expect(p.instance_eval'@y_min').to eq(0)
          expect(p.x_max).to eq(10)
          expect(p.y_max).to eq(5)
        end
      end

      context 'with invalid params' do
        it 'raises Exception' do
          p = nil
          expect { p = Plateau.new(-10,20) }.to raise_error('Wrong Length or Breadth Combination')
        end
      end
    end

  end
end