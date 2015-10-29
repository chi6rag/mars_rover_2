module MarsRover
  class Rover
    def initialize(x, y, plateau)
      @plateau_landed_on = plateau
      validates_range_of x, y
      @x = x
      @y = y
    end

    private
    def validates_range_of x, y
      unless(x.between?(0, @plateau_landed_on.x_max) && y.between?(0, @plateau_landed_on.x_max))
        raise Exception.new 'Rover Coordinates Out of Bounds'
      end
    end

  end
end