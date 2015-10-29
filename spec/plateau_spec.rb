require 'mars_rover'

module MarsRover
  RSpec.describe Plateau do

    describe '#new' do
      context 'with valid length and breadth' do
        it 'creates a new plateau' do
          p = Plateau.new(5,5)
          expect(p.instance_eval("@length")).to eq(5)
          expect(p.instance_eval("@breadth")).to eq(5)
        end
      end
    end

  end
end