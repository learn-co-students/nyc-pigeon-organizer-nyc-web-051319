def nyc_pigeon_organizer (data)
  new_list = {}

  data.each do |main, additional|
    additional.each do |category, arr|
      arr.each do |name|
        new_list[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end 
  x = new_list.keys
  data[:color].each do |color, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_list[item][:color] << color.to_s
        end 
      end 
    end 
  end 
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_list[item][:gender] << gender.to_s
        end 
      end 
    end 
  end 
  data[:lives].each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_list[item][:lives] << location
        end 
      end 
    end 
  end 
  
  return new_list 
end 
