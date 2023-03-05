# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
%i[
  犬
  猫
  小動物
  さかな
  とり
  爬虫類・その他
].each { |name| Genre.find_or_create_by(name:) }
genre_ids = Genre.all.pluck(:id)