class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:omniauthable,
         omniauth_providers: [:facebook, :google_oauth2]


  has_many :sns_credential
  has_one :shipping_address
  accepts_nested_attributes_for :shipping_address
  accepts_nested_attributes_for :sns_credential

  
  def self.find_omniauth(auth)

    uid = auth.uid
    provider = auth.provider
    snscredential = SnsCredential.where(uid: uid, provider: provider).first
    if snscredential.present?
      user = User.where(id: snscredential.user_id).first
    else 
      # providerから取得したアドレスがすでに登録されているか確認
      user = User.where(email: auth.info.email).first
      if user.present? # 最初(providerに登録しているアドレスですでに登録されている時)
        SnsCredential.create(
          uid: uid,
          provider: provider,
          user_id: user.id)
      else  # 最初(登録されてなかった時)
        user = User.new(
          name: auth.info.name,
          email:    auth.info.email,
          password: Devise.friendly_token[0, 20],
          phone_number: "00000000000"
          )
      end
    end
    return user
  end




  belongs_to :region, optional: true
  has_many :items, foreign_key: "saler_id", class_name: "Item"
  has_many :items, foreign_key: "buyer_id", class_name: "Item"
  
  validates :name,                    presence: true
  validates :email,                   presence: true
  validates :password,                presence: true
  validates :password_confirmation,   presence: true
  validates :last_name,               presence: true
  validates :first_name,              presence: true
  validates :last_name_kana,          presence: true
  validates :first_name_kana,         presence: true
  validates :birth_year,              presence: true
  validates :birth_month,             presence: true
  validates :birth_day,               presence: true
end