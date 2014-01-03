require 'spec_helper'

describe User do
    let(:user){ User.create(email: 'woo@test.com', password: 'password')}
    subject {user}

    # Attributes
    it { should respond_to :email }
    
    # Validations
    it { should allow_value('woowee@gmail.com').for(:email) }
    it { should_not allow_value('blahblah').for(:email) }
end
