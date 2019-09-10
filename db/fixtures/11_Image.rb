require 'csv'

CSV.read('db/fixtures/11_Image.csv', encoding: 'Shift_JIS:UTF-8').each_with_index do |img, i|
  next if i === 0

  image_id = img[0].to_i

  # 既にいたら上書き、いなかったら新規作成
  if Image.find_by_id(image_id)
    image           = Image.find(image_id)
    image[:id]      = image_id
    image[:image]   = img[1]
    image[:item_id] = img[2]
    image.save
  else
    image = Image.new
    image[:id]      = image_id
    image[:image]   = img[1]
    image[:item_id] = img[2]
    image.save
  end
end