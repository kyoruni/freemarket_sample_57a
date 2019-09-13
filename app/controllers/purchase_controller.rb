class PurchaseController < ApplicationController
  require 'payjp'
  before_action :set_payjp_secret_key
  before_action :set_item
  before_action :move_to_root

  def index
    @user = User.find(current_user.id)
    card = Card.where(user_id: current_user.id).first
    #Cardテーブルは前回記事で作成、テーブルからpayjpの顧客IDを検索
    if card.blank?
      #登録された情報がない場合にカード登録画面に移動
      redirect_to controller: "card", action: "new"
    else
      #保管した顧客IDでpayjpから情報取得
      customer = Payjp::Customer.retrieve(card.customer_id)
      #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def pay
    card = Card.where(user_id: current_user.id).first
    Payjp::Charge.create(
    :amount => @item.price, #支払金額を入力（itemテーブル等に紐づけても良い）
    :customer => card.customer_id, #顧客ID
    :currency => 'jpy', #日本円
    )
    @item.update(buyer_id: current_user.id)
    redirect_to action: 'done' #完了画面に移動
  end

  private
  def set_item
    @item = Item.find(params[:item_id])
  end

  # URLから直接飛ぶのを防ぐ
  def move_to_root
    redirect_to root_path if current_user.id == @item.saler_id || @item.buyer_id.present?
  end
end
