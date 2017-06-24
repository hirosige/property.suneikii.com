json.extract! course, :id, :title, :photo, :start_date, :end_date, :start_time, :end_time, :price, :list, :restaurant_id, :created_at, :updated_at
json.url course_url(course, format: :json)