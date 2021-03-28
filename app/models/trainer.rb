class Trainer < ApplicationRecord
  belongs_to :user
  belongs_to :trainee

  has_many :trainees

  def full_name
    "#{user.name} #{user.surname}"
  end
end
