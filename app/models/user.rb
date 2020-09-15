class User < ApplicationRecord
  has_many :items
  has_many :orders
  has_many :comments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    password_REGEX = /\A[a-z0-9]+\z/i.freeze
    name_REGEX = /\A[ぁ-んァ-ン一-龥]/.freeze
    name_kana_REGEX = /\A[\p{katakana}\p{blank}ー－]+\z/.freeze

    validates :nickname
    validates :email
    validates :password, format: { with: password_REGEX, message: 'is invald. Input half-width characters.' }
    validates :last_name, format: { with: name_REGEX, message: 'is invalid. Input full-width characters.' }
    validates :first_name, format: { with: name_REGEX, message: 'is invalid. Input full-width characters.' }
    validates :last_name_kana, format: { with: name_kana_REGEX, message: 'is invalid. Input full-width katakana characters.' }
    validates :first_name_kana, format: { with: name_kana_REGEX, message: 'is invalid. Input full-width katakana characters.' }
    validates :birthday
  end
end
