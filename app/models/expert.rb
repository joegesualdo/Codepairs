class Expert < User
  has_many :appointments
  has_many :students, through: :appointments

  def expert?
    true
  end

  def student?
    false
  end
end
