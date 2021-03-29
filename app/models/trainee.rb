class Trainee < ApplicationRecord
  belongs_to :user
  has_one :trainer

  accepts_nested_attributes_for :trainer
end
