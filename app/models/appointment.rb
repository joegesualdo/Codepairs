class Appointment < ActiveRecord::Base
  belongs_to :expert, foreign_key: 'expert_id'
  belongs_to :student, foreign_key: 'student_id'
end
