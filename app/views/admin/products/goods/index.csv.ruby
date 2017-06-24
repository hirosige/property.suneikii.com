require 'csv'

CSV.generate do |csv|
  csv_column_names = %w(Firstname Lastname Email)
  csv << csv_column_names
  @users.each do |user|
    csv_column_values = [
        user.firstname,
        user.lastname,
        user.email
    ]
    csv << csv_column_values
  end
end