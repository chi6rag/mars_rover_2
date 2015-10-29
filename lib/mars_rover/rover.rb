module MarsRover
  class Rover
    def initialize(x, y, heading, plateau)
      @plateau_landed_on = plateau
      validates_heading heading
      validates_range_of x, y
      @heading = heading.upcase
      @x = x
      @y = y
    end

    private
    def validates_range_of x, y
      unless(x.between?(0, @plateau_landed_on.x_max) && y.between?(0, @plateau_landed_on.x_max))
        raise Exception.new 'Rover Coordinates Out of Bounds'
      end
    end

    def validates_heading heading
      raise Exception.new('Unidentified Heading') unless ['N', 'E', 'W', 'S']
                                                               .include? heading
    end

  end
end