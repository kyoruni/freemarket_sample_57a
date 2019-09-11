class CategoriesController < ApplicationController
  before_action :set_category_list, only: [:show]
  def show
    @category       = Category.find(params[:id])

    # 親カテゴリーの場合
    if @category.is_root?
      @category_list     = @category.children.rand_recent(9) | @category.indirects.rand_recent(2) # ランダムで子カテゴリーを9件＆孫カテゴリーを2件取得
      @category_items    = Item.category_items(@category.indirects).order('created_at DESC');
      @category_message1 = category_message(@category.id, @category.name);

    # 子カテゴリーの場合
    elsif @category.has_children?
      @category_list     = @category.children.rand_recent(9) | @category.siblings.rand_recent(2) # ランダムで孫カテゴリーを9件＆兄弟カテゴリーを2件取得
      @category_items    = Item.category_items(@category.children).order('created_at DESC');
      @category_message1 = category_message(@category.parent.id, @category.name);

    # 孫カテゴリーの場合
    else
      @category_list     = @category.siblings.rand_recent(11)
      @category_items    = Item.category_item(@category).order('created_at DESC'); # ランダムで兄弟カテゴリーを11件取得
      @category_message1 = category_message(@category.root_id, @category.name);
    end

    # カテゴリーごとの共通メッセージ
    @category_message2 = "#{@category.name}の商品は#{category_count(@category_items)}点以上あります。"
  end

  private
  # カテゴリーごとのメッセージを作成
  def category_message(category_id, category_name)
    # レディースとメンズ
    if category_id == 1 || category_id == 2
      result = "#{category_name}の着ない服、いらない洋服を売るならメルカリへ。"
    # ベビー・キッズとインテリア
    elsif category_id == 3 || category_id == 4
      result = "#{category_name}の買取、処分ならメルカリへ。"
    # その他
    else
      result = "#{category_name}の買取、売るならメルカリへ。"
    end
  end

  # カテゴリーの商品件数を取得
  def category_count(category_items)
    count = category_items.count

    # 5の倍数の場合は、そのまま
    if count / 5 == 0 || count % 5 == 0
      result = count
    # それ以外は、5の倍数
    else
      result = ( count / 5 ) * 5
    end
    return result;
  end
end
