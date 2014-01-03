require 'spec_helper'

describe User do
    let(:user){ FactoryGirl.create(:user)}
    subject {user}

    # Attributes
    it { should respond_to :email }
    
    # Validations
    it { should allow_value('woowee@gmail.com').for(:email) }
    it { should_not allow_value('blahblah').for(:email) }
end
