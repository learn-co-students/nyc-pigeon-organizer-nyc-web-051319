require 'pry'
def nyc_pigeon_organizer(data)
pigeon_list = {}
data.each do |key, value|
value.each do |category, names|
  names.each do |name|
pigeon_list[name] ||= {}
pigeon_list[name][key] ||= []
pigeon_list[name][key] << category.to_s

      end
    end
  end
  pigeon_list
end
