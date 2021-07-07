require = 'pp'
data = pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


def nyc_pigeon_organizer(data)
  hash = {}
  data.each do |key,value|
  
    value.each do |new_value,names|      # color, gender, lives
  
      names.each do |name|
        if !hash.has_key?(name)
          hash[name] = {}
        end
        if !hash[name].has_key?(key)
          hash[name][key] = []
        end 
        hash[name][key] <<  new_value.to_s     
      end
    end
  end
  hash
end