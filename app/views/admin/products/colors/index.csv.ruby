require 'csv'
require 'nkf'

csv_str = CSV.generate do |csv|
  # I18n で CSV のカラム名を取得
  cols = {
    Color.human_attribute_name(:id)     => ->(s){ s.id },
    Color.human_attribute_name(:name)   => ->(s){ s.name },
  }

  # header の追加
  csv << cols.keys

  # body の追加
  @colors.each do |color|
    csv << cols.map{|k, col| col.call(color) }
  end
end
# 文字コード変換
NKF::nkf('--sjis -Lw', csv_str)