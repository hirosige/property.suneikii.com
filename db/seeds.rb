# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 性別追加用
Gender.create(name: "男物")
Gender.create(name: "女物")
Gender.create(name: "兼用")

# 色追加用
Color.create(name: "赤")

# 素材追加用
Ingredient.create(name: "布")

# カテゴリ追加用
GoodsCategory.create(name: "置物")

# サイズ追加用
Size.create(name: "Sサイズ")
Size.create(name: "Mサイズ")
Size.create(name: "Lサイズ")
Size.create(name: "XLサイズ")

Role.create(name: "顧客")
Role.create(name: "ビジネスパートナー")
Role.create(name: "テナント")
Role.create(name: "システム管理者")

# ページングテスト用
100.times do |i|
  Good.create!(
    name:    "グッズ#{i}",
    ingredient_id: 1,
    goods_category_id: 1,
    gender_id: 1,
    color_id: 1,
    size_id: 1
  )
end

100.times do |i|
  Color.create!(
      name:    "color_#{i}",
  )
end