def nyc_pigeon_organizer(data)
  name_list = {}
  # i = 0
  # while i < data[:gender][:male].length do
  #   if name_list[data[:gender][:male][i]] == nil
  #     name_list[data[:gender][:male][i]] = []
  #   end
  #   i += 1
  # end
  # i = 0
  # while i < data[:gender][:female].length do
  #   if name_list[data[:gender][:female][i]] == nil
  #     name_list[data[:gender][:female][i]] = []
  #   end
  #   i += 1
  # end
  data.each do |top, middle|
    middle.each do |middle, bottom|
      bottom.each do |name|
        if name_list[name] ==  nil
          name_list[name] = {}
        end
        if name_list[name][top] == nil
          name_list[name][top] = []
        end
        name_list[name][top].push(middle.to_s)
      end
    end
  end
  name_list
end