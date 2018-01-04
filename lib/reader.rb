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




end
reader = Reader.new
reader.loader


