YAML::load_file('config/application.yml').each do |key, value|
  ENV[key] = value
end