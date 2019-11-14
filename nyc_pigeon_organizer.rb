def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |color_gender_lives, value|
    value.each do |vvalue, names|
      names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][color_gender_lives] ||= []
        pigeon_list[name][color_gender_lives].push(vvalue.to_s)
      end
    end
  end
  pigeon_list
end
