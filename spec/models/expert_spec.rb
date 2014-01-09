# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  type                   :string(255)
#  first                  :string(255)
#  last                   :string(255)
#

require 'spec_helper'

describe Expert do
  let(:expert){FactoryGirl.create(:expert)}
  subject { expert }

  it { should be_a User}

  # Associations ==========================================
  it { should have_many(:students).through(:appointments) }
  it { should have_many :appointments }
  it { should have_and_belong_to_many :requests }

  # Attributes ===========================================
  it { should respond_to :email }
end
