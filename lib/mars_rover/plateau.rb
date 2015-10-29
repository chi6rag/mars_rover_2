module MarsRover
  class Plateau

    def initialize(x_max, y_max)
      validates_positivity_of x_max, y_max
      @x_min = @y_min = 0
      @x_max = x_max
      @y_max = y_max
    end

    private
    def validates_positivity_of x_max, y_max
      raise Exception.new 'Wrong Length or Breadth ' +
                          'Combination' unless (x_max > 0 && y_max > 0)
    end

  end
end