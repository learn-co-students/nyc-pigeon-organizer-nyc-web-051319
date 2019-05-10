require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |att, info|
    info.each do |item, names|
      names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][att] ||= []
        pigeon_list[name][att] << item.to_s
      end
    end
  end
  pigeon_list
end
