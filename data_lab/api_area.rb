require 'net/http'
require 'json'
require 'uri'

def get_response(type)
  uri = URI.parse("https://api.openthailand.org/#{type}")

  response = nil

  request = Net::HTTP::Get.new(uri.request_uri, initheader = {'Content-Type' =>'application/json'})

  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true

  http.set_debug_output $stderr

  http.start do |h|
    response = h.request(request)

    parsed_body = JSON.parse(response.body)
    parsed_body['result']['data']
  end
end

def initialize_files
  Dir.glob(File.join('/vagrant', 'data_lab', 'output', '*.rb')).each do |file|
    File.unlink file
  end
end

def write_rb_file(data, name, parent_name, parent_id='')

  file = File.open("data_lab/output/#{name}.rb", 'a')

  file.puts "#{name.capitalize}.create("
  file.puts "    original_id: '#{data['id']}',"
  file.puts "    name_ja: '#{data['name']}',"
  file.puts "    name_th: '#{data['nameThai']}',"
  file.puts "    name_en: '#{data['name']}',"
  file.puts "    url_safe: '#{hyphenize(data['name'])}',"

  if parent_id.empty?
    file.puts "    #{parent_name}_original_id: 'th'"
  else
    file.puts "    #{parent_name}_original_id: '#{parent_id}'"
  end

  file.puts ")"
  file.puts ""
end

def hyphenize(name)
  name.split(' ').map(&:downcase).join('-')
end

initialize_files

provinces = get_response('provinces')

provinces.each do |province|

  write_rb_file(province, 'province', 'country')
  districts = get_response("provinces/#{province['id']}/districts")

  @province = province

  districts.each do |district|
    write_rb_file(district, 'district', 'province', @province['id'])

    sub_districts = get_response("provinces/#{province['id']}/districts/#{district['id']}/subdistricts")

    @district = district

    sub_districts.each do |sub_district|
      write_rb_file(sub_district, 'subdistrict', 'district', @district['id'])
    end

  end
end

