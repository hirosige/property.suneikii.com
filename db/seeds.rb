# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

Country.create(
    original_id: 'th',
    name_ja: 'タイ',
    name_th: 'ประเทศไทย',
    name_en: 'Thailand'
)

Province.create(
    original_id: 'bangkok',
    name_ja: 'Bangkok',
    name_th: 'กรุงเทพมหานคร',
    name_en: 'Bangkok',
    url_safe: 'bangkok',
    country_original_id: 'th'
)

District.create(
    original_id: '1002',
    name_ja: 'Dusit',
    name_th: 'เขตดุสิต',
    name_en: 'Dusit',
    url_safe: 'dusit',
    province_original_id: 'bangkok'
)

Subdistrict.create(
    original_id: '13',
    name_ja: 'Dusit',
    name_th: 'แขวงดุสิต',
    name_en: 'Dusit',
    url_safe: 'dusit',
    district_original_id: '1002'
)

User.create(
    name: 'admin',
    email: 'customer@suneikii.com',
    password: 'abCD1234',
    password_confirmation: 'abCD1234',
    role: :admin,
    confirmed_at: Time.now
)