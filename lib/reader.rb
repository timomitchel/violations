require 'CSV'
require 'pry'
require_relative 'violation'

class Reader

    def opener
     CSV.open("./data/Violations-2012.csv", headers: true, header_converters: :symbol)
    end

    def loader
      opener.map {|row| Violation.new(row)}
    end

    def count
      loader.count
    end

    def earliest_violation
      loader.sort_by {|violation| violation.violation_date}
    end

    def violation_type
      loader.sort_by {|violation| violation.violation_type}
    end

    def count_by_violation_type
      violation_type.reduce(Hash.new(0)) do |result, violation|
        result[violation.violation_type] += 1
        result
      end
    end

    def earliest_date_by_violation_type
      violation_type.reduce(Hash.new) do |result, violation|
        result[violation.violation_type] = violation.violation_date
        result
      end
    end

      def earliest_date_by_violation
        violation_type.reduce(Hash.new) do |result, violation|
        result[violation.violation_type] = violation_type.sort_by {|violation| violation.violation_date}
        result
      end
    end




end
reader = Reader.new
puts reader.count_by_violation_type
puts reader.earliest_date_by_violation_type


