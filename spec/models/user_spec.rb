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
