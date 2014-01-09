# == Schema Information
#
# Table name: appointments
#
#  id         :integer          not null, primary key
#  expert_id  :string(255)
#  student_id :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Appointment < ActiveRecord::Base
  belongs_to :expert, foreign_key: 'expert_id'
  belongs_to :student, foreign_key: 'student_id'
end
