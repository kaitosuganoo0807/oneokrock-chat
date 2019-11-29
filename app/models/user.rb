class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :musics
  has_many :favorites
  has_many :favorite_musics, through: :favorites, source: :music
  has_many :tweets
  has_many :comments
end
