require 'spec_helper'

describe Student do
  let(:student){ FactoryGirl.create(:student)}
  subject { student }
  
  it { should be_a User }

  # Associations ==========================================
  it { should have_many(:experts).through(:appointments) }
  it { should have_many(:appointments) }
  it { should have_many :requests }

  # Attributes ============================================
  it { should respond_to :email }


end
