require './lib/reader'
RSpec.describe Reader do
  it 'class methods' do 
    reader = Reader.new
    expect(reader.opener.class).to be CSV
  end
end