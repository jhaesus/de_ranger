module DeRanger
  class DeRange
    attr_accessor :available_ranges

    class << self
      def it available_ranges, reserved_ranges
        de_range = self.new available_ranges
        reserved_ranges.each do |reserved_range|
          de_range.subtract reserved_range
        end
        de_range.available_ranges
      end
    end

    def initialize available_ranges
      self.available_ranges = available_ranges
    end

    def subtract reserved_range
      self.available_ranges.each do |available_range|
        if reserved_range.cover?(available_range.begin) && reserved_range.cover?(available_range.end)
          self.available_ranges.delete(available_range)
        elsif reserved_range.cover?(available_range.begin)
          self.available_ranges.delete(available_range)
          self.available_ranges += [reserved_range.end..available_range.end]
        elsif reserved_range.cover?(available_range.end)
          self.available_ranges.delete(available_range)
          self.available_ranges += [available_range.begin..reserved_range.begin]
        elsif available_range.cover?(reserved_range.begin) && available_range.cover?(reserved_range.end)
          self.available_ranges.delete(available_range)
          self.available_ranges += [available_range.begin..reserved_range.begin,reserved_range.end..available_range.end]
        elsif available_range.cover?(reserved_range.begin)
          self.available_ranges.delete(available_range)
          self.available_ranges += [available_range.begin..reserved_range.begin]
        elsif available_range.cover?(reserved_range.end)
          self.available_ranges.delete(available_range)
          self.available_ranges += [reserved_range.end..available_range.end]
        end
      end
      reserved_range
    end
  end
end