require './lib/reader'
RSpec.describe Reader do
  it 'class methods' do 
    reader = Reader.new
    expect(reader.opener.class).to be CSV
    expect(reader.loader.class).to be Array
    expect(reader.loader.first.class).to be Violation
    expect(reader.count).to eq 545

    expect(reader.earliest_violation[0].violation_date).to eq "2012-01-03 00:00:00"
  end
end