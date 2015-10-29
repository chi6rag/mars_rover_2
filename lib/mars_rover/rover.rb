module MarsRover
  class Rover
    HEADINGS = ['N', 'E', 'S', 'W']

    def initialize(x, y, heading, plateau)
      @plateau_landed_on = plateau
      validates_heading heading
      validates_range_of x, y
      @heading = heading.upcase
      @x = x
      @y = y
    end

    def execute instructions
      processed_instructions = process_instructions(instructions)
      processed_instructions.each do |instruction|
        self.send instruction
      end
    end

    protected
    def turn_left
      current_heading = @heading
      new_heading_index = (HEADINGS.find_index(current_heading)-1) % 4
      @heading = HEADINGS[new_heading_index]
    end
    alias_method :L, :turn_left

    def turn_right
      current_heading = @heading
      new_heading_index = (HEADINGS.find_index(current_heading)+1) % 4
      @heading = HEADINGS[new_heading_index]
    end
    alias_method :R, :turn_right

    def move
      case @heading
        when 'N'
          @y+=1
        when 'S'
          @y-=1
        when 'E'
          @x+=1
        when 'W'
          @x-=1
        else
      end
    end
    alias_method :M, :move

    private
    def validates_range_of(x, y)
      unless(x.between?(0, @plateau_landed_on.x_max) && y.between?(0, @plateau_landed_on.x_max))
        raise Exception.new 'Rover Coordinates Out of Bounds'
      end
    end

    def validates_heading(heading)
      raise Exception.new('Unidentified Heading') unless HEADINGS.include? heading
    end

    def process_instructions(instructions)
      instructions.split('')
    end

  end
end