def nyc_pigeon_organizer(data)
  new_hash = {}
  
  data.each do |attributes, values|
    values.each do |attribute, names|
      names.each do |name|
        new_hash[name] ||= {}
         new_hash[name][attributes] ||= []
        new_hash[name][attributes] << attribute.to_s 
      end
    end
  end
  new_hash
end