class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum sex: {
    unknown: 0,
    male: 1,
    female: 2,
  }

  has_many :payments, dependent: :destroy
  mount_uploader :image, ImageUploader
  validates :name, presence: true
end