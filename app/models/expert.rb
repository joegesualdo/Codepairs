class Expert < User
  has_many :appointments
  has_many :students, through: :appointments
  has_and_belongs_to_many  :requests

  def expert?
    true
  end

  def student?
    false
  end
end
