class Student < ApplicationRecord

  validates :index, presence: true, length: { is: 6 }, uniqueness: true

  validates :first_name, presence: true, length: { maximum: 50 }

  validates :last_name, presence: true, length: { maximum: 50 }

  validates :field_of_study, presence: true, length: { maximum: 100 }

  has_secure_password

  validates :password, presence: true, length: { minimum: 6 }

end
