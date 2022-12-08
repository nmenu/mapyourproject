class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :projects, dependent: :destroy
  has_one_attached :avatar

  validates :company_name, presence: true
  validates :address, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
