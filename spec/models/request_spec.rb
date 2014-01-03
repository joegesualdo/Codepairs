require 'spec_helper'

describe Request do
  let(:request){ FactoryGirl.create(:request) }
  subject{ request }

  it { should belong_to :student }
  it { should have_and_belong_to_many :experts }

end
