require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }

  it 'get a bike' do
    #bike = Bike.new
    expect(subject).to be_working
  end
end
