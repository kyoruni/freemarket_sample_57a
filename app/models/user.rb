class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :shipping_address
  accepts_nested_attributes_for :shipping_address

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # step1入力項目
  validates :name,                    presence: true, length: {maximum: 2}, on: :validates_step1
  validates :email,                   presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }, on: :validates_step1
  validates :password,                presence: true, length: {minimum: 6, maximum: 128}, on: :validates_step1
  validates :password_confirmation,   presence: true, length: {minimum: 6, maximum: 128}, on: :validates_step1
  validates :last_name,               presence: true, on: :validates_step1
  validates :first_name,              presence: true, on: :validates_step1
  validates :last_name_kana,          presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}, on: :validates_step1
  validates :first_name_kana,         presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}, on: :validates_step1
  validates :birth_year,              presence: true, on: :validates_step1
  validates :birth_month,             presence: true, on: :validates_step1
  validates :birth_day,               presence: true, on: :validates_step1
end
