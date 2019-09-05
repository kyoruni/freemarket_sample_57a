require 'csv'

CSV.read('db/fixtures/04_Brand.csv', encoding: 'Shift_JIS:UTF-8').each_with_index do |brand, i|
  next if i === 0

  name = brand[0]
  Brand.seed_once(:id) do |s|
    s.id   = i
    s.name = name
  end
end
