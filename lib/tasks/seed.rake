Dir.glob(File.join(Rails.root, 'db', 'seeds', '*.rb')).each do |file|
  desc "Load the seed data from db/seeds/#{File.basename(file)}."
  task "db:seed:#{File.basename(file).gsub(/\..+$/, '')}" => :environment do
    load(file)
  end

  task "db:seed:exec" => :environment do
    load(file) if File.basename(file).gsub(/\..+$/, '').eql?('exec')
  end
end