class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
    validates :email
    validates :password, format: { with: /\A[a-z0-9]+\z/i, message: "is invald. " }, length: { minimum: 6 }
    validates :last_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "is invalid. Input full-width characters."}
    validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "is invalid. Input full-width characters."}
    validates :last_name_kana, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: "is invalid. Input full-width katakana characters."}
    validates :first_name_kana, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: "is invalid. Input full-width katakana characters."}
    validates :birthday
  end
  
  # with_options presence: true do
  #   validates :nickname
  #   validates :email
  #   validates :password, format: { with: /\A[a-z0-9]+\z/i, message: "is invald" }, length: { minimum: 6 }
  #   validates :last_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "is invalid. Input full-width characters."}
  #   validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "is invalid. Input full-width characters."}
  #   validates :last_name_kana, format: { with: /^([ァ-ン]|ー)+$/, message: "is invalid. Input full-width katakana characters."}
  #   validates :first_name_kana, format: { with: /^([ァ-ン]|ー)+$/, message: "is invalid. Input full-width katakana characters."}
  #   validates :birthday
  # end
end
