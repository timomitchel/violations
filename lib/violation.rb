require 'time'

class Violation

  attr_reader :violation_date, :violation_date_closed, :violation_type
  
  def initialize(info)
   @violation_date = info[:violation_date]
   @violation_date_closed = info[:violation_date_closed]
   @violation_type = info[:violation_type]
  end


end