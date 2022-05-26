class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products, dependent: :destroy
  has_many :rentals, dependent: :destroy

  has_many :demands, through: :products, source: :rentals

  validates :first_name, :last_name, :date_of_birth, presence: true
  has_one_attached :photo
end
