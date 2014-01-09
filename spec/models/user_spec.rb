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

describe User do
    let(:user){ FactoryGirl.create(:user)}
    subject {user}

    # Attributes
    it { should respond_to :email }
    it { should respond_to :first }
    it { should respond_to :last  }

    # Validations
    it { should validate_presence_of :first }
    it { should validate_presence_of :last }
    it { should allow_value('woowee@gmail.com').for(:email) }
    it { should_not allow_value('blahblah').for(:email) }
end
