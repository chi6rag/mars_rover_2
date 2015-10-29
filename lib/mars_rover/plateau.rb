module MarsRover
  class Plateau
    def initialize(length, breadth)
      validates_positivity_of length, breadth
      @length = length
      @breadth = breadth
    end

    private
    def validates_positivity_of length, breadth
      raise Exception.new 'Wrong Length or Breadth ' +
                          'Combination' unless (length > 0 && breadth > 0)
    end

  end
end