require 'spec_helper'

describe Expert do
  let(:expert){FactoryGirl.create(:expert)}
  subject { expert }

  it { should be_a User}

  # Associations ==========================================
  it { should have_many(:students).through(:appointments) }
  it { should have_many :appointments }

  # Attributes ===========================================
  it { should respond_to :email }
end
