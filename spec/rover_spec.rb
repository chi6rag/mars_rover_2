require 'mars_rover'

module MarsRover
  RSpec.describe Rover do

    describe '#new' do
      let(:plateau){ Plateau.new(5, 5) }

      context 'with coordinates in range of plateau coordinates' do
        let(:rover){ Rover.new(3, 3, 'N', plateau) }

        it 'creates a new rover' do
          expect(rover.class).to eq(Rover)
          expect(rover.instance_eval('@x')).to eq(3)
          expect(rover.instance_eval('@y')).to eq(3)
          expect(rover.instance_eval('@heading')).to eq('N')
          expect(rover.instance_eval('@plateau_landed_on')).to eq(plateau)
        end
      end

      context 'with coordinates out of range of plateau coordinates' do
        it 'raises Exception' do
          expect { Rover.new(7, 3, 'N', plateau) }.to raise_error('Rover Coordinates Out of Bounds')
        end
      end

      context 'with invalid heading' do
        it 'raises Exception' do
          expect { Rover.new(3, 3, 'X', plateau) }.to raise_error('Unidentified Heading')
        end
      end
    end

  end
end