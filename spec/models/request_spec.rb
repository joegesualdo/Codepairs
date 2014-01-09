# == Schema Information
#
# Table name: requests
#
#  id          :integer          not null, primary key
#  student_id  :integer
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Request do
  let(:request){ FactoryGirl.create(:request) }
  subject{ request }

  it { should belong_to :student }
  it { should have_and_belong_to_many :experts }

end
