require 'csv'
require 'nkf'

csv_str = CSV.generate do |csv|
  # I18n で CSV のカラム名を取得
  cols = {
    Order.human_attribute_name(:id)     => ->(s){ s.id },
  }

  # header の追加
  csv << cols.keys

  # body の追加
  @orders.each do |order|
    csv << cols.map{|k, col| col.call(order) }
  end
end
# 文字コード変換
NKF::nkf('--sjis -Lw', csv_str)