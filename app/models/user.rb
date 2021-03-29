class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :trainee
  has_one :trainer
  accepts_nested_attributes_for :trainee
  accepts_nested_attributes_for :trainer
end
