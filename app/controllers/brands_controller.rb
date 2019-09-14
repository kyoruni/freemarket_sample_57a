class BrandsController < ApplicationController
  before_action :set_category_list, only: [:show]
  before_action :set_brand_list,    only: [:show]

  def show
    @brand = Brand.find(params[:id])
    @brand_items   = @brand.items
    @brand_message1, @brand_message2 = brand_message(@brand.name)
  end

  private
  # ブランドごとのメッセージを作成
  def brand_message(brand_name)
    if brand_name == "シャネル"
      result1 = "カッコ良さの中に香る甘い艶やかなデザイン！世界中の女性を虜に続けるトップブランド！"
      result2 = "シャネルは、1909年通称ココシャネルが設立したブランドです。モノトーン色を基調としたファッションの提案が中心で、服飾の他にも化粧品・香水・宝飾品・時計など幅広い商品が展開されています。「古い価値観にとらわれない女性像」をブランドポリシーとし、今なおファッション界を牽引しています。"
    elsif brand_name == "ナイキ"
      result1 = "世界を代表するスポーツブランド！エアマックスなどのシューズで注目度がさらにアップ！"
      result2 = "ナイキは、1968年創業のアメリカのスポーツブランドです。シューズの歴史が長く、エアジョーダンやエアマックスなど世界的に有名です。かかとや足の裏にかかる衝撃を和らげるためソールに埋め込んでいるエアが特徴で、若者に人気です。最近ではユニフォームやキャップなども展開しています。"
    elsif brand_name == "ルイ ヴィトン"
      result1 = "男女に大人気のお洒落なモノグラム！ラクジュアルなデザインが毎日の生活にスパイスを与えます！"
      result2 = "ヴィトンは、創始者ルイヴィトンが1854年、世界初の旅行鞄専門店として設立したフランスのファッションブランドです。モノグラム・キャンバスに代表される高度なデザイン性と、上質な素材を使用し熟練の職人が生み出した製品は世界中で愛され、幅広い年代に人気です。"
    elsif brand_name == "シュプリーム"
      result1 = "Supreme（シュプリーム）は、アメリカ・ニューヨーク発のストリートファッションブランドです。"
      result2 = "主にスケーターカルチャーの中心的な役割を果たしており、広範囲ではその他にもヒップホップやパンクなどカウンターカルチャーに対して重要な役割を果たしています。デザイナー、ミュージシャン、アーティスト、フォトグラファーなどから強い支持を得ているブランドです。"
    elsif brand_name == "アディダス"
      result1 = "デザインと機能性を備え、スポーツブランドの誇りとクオリティを持った多様なアイテムを幅広く展開。"
      result2 = "アディダスは、1948年ドイツにて創業した世界的スポーツメーカーで、オリンピックやFIFAワールドカップなどの公式スポンサーです。アディダスといえば3本のライン、三つ葉マーク、円に3本線などのロゴが有名です。スニーカーはデザインと機能性でファンも多く、多数の定番モデルや名作モデルを世に輩出しました。"
    else
      result1 = ""
      result2 = "#{brand_name}の商品は#{brand_count(@brand_items)}点以上あります。"
    end

    return result1, result2
  end

  # ブランドーの商品件数を取得
  def brand_count(brand_items)
    count = brand_items.count

    # 商品件数が、5の倍数または4以下の場合：そのまま
    if count / 5 == 0 || count % 5 == 0
      result = count
    # それ以外：5の倍数
    else
      result = ( count / 5 ) * 5
    end
    return result;
  end
end
