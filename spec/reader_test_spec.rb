require './lib/reader'
RSpec.describe Reader do
  it 'class methods' do 
    reader = Reader.new
    expect(reader.opener.class).to be CSV
    expect(reader.loader.class).to be Array
    expect(reader.loader.first.class).to be Violation
  end
end