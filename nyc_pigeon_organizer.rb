def nyc_pigeon_organizer(data)
  list = {}
  data.each do |color_gender_lives, value|
  value.each do |stats, all_names|
  all_names.each do |name|
   if list[name] == nil 
      list[name] = {}
end
  if list[name][color_gender_lives] == nil 
    list[name][color_gender_lives] = []
  end 
 list[name][color_gender_lives].push(stats.to_s)
end 
end 
end 
list
end