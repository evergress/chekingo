class Guestparent < ActiveRecord::Base
  has_many :add_kids
  attr_accessible :first_name, :last_name, :phone_number, :pin

  validates :first_name, :last_name, :phone_number, presence: true, on: :create
  validates :phone_number, uniqueness: true, on: :create


end
