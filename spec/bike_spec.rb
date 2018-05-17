require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }

  it 'get a bike' do
    # what is exactly doing the 'be_working'
    expect(subject).to be_working
  end

end
