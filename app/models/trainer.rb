class Trainer < ApplicationRecord
  belongs_to :user

  has_many :trainees

  def full_name
    "#{user.name} #{user.surname}"
  end
end
