require 'CSV'
require 'pry'
class Reader

    def opener
     CSV.open("./data/Violations-2012.csv", headers: true, header_converters: :symbol)
    end

    def

end
reader = Reader.new
reader.opener
