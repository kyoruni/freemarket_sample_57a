class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_one :shipping_address
  accepts_nested_attributes_for :shipping_address
  belongs_to :region, optional: true
  has_many :items, foreign_key: "saler_id", class_name: "Item"
  has_many :items, foreign_key: "buyer_id", class_name: "Item"
  
  # バリデーション
  VALID_EMAIL_REGIX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :name,                  presence: true
  validates :email,                 presence: true
  validates :email,                 uniqueness: true
  validates :email,                 format: { with: VALID_EMAIL_REGIX }
  validates :password,              presence: true
  validates :password,              length: { minimum: 7, maximum: 128 }
  validates :password,              format: { with: /\A(?=.*?[a-zA-Z])(?=.*?\d)[a-zA-Z\d]{7,128}\z/,
                                    message: "には英字と数字の両方を含めてください"}
  validates :password,              confirmation: true
  validates :password_confirmation, presence: true
  validates :phone_number,          presence: true
  validates :last_name,             presence: true
  validates :first_name,            presence: true
  validates :last_name_kana,        presence: true, format: { 
                                    with: /\A[\p{katakana}ー－]+\z/, 
                                    message: "はカナ文字を入力してください" }
  validates :first_name_kana,       presence: true, format: { 
                                    with: /\A[\p{katakana}ー－]+\z/, 
                                    message: "はカナ文字を入力してください" }
end
