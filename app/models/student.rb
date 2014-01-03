class Student < User

  has_many :appointments
  has_many :experts, through: :appointments

  def expert?
    false
  end

  def student?
    true
  end
end