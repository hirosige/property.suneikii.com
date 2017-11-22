task "db:reset_counter" => :environment do
  Province.init_count
end