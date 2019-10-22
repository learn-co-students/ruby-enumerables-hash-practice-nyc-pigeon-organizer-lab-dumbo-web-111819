require 'pry'

def nyc_pigeon_organizer(data)
#   pigeon_list = {}
  
#   # binding.pry
#   m = 0 
#   while m < data[:gender][:male].count do 
#     inner_hash = {}
#     inner_hash[:color]= nil
#     # data[:color].collect {|(key,value)| p %w[key] if value.include?(data[:gender][:male][m])}
#     inner_hash[:gender] = %w[male]
#     inner_hash[:lives] = []
#     # 
#     data[:lives]
#     pigeon_list[data[:gender][:male][m]] = inner_hash;
    
#     m += 1
    
#   end
#   pigeon_list
# # binding.pry
  
#   f = 0 
#   while f < data[:gender][:female].count do 
#     inner_hash = {}
#     inner_hash[:color]= []
#     inner_hash[:gender] = %w[female]
#     inner_hash[:lives] = []
#     pigeon_list[data[:gender][:female][f]] = inner_hash
    
#     f += 1 
#   end
#   pigeon_list
  
  #####
  #binding.pry
    new_hash = {}
  data.each do |key, value|
  
    value.each do |new_value, names|
      names.each do |name|

        if !new_hash[name]
          new_hash[name] = {}
        end

        if !new_hash[name][key]
          new_hash[name][key] = []
        end
 
        new_hash[name][key] << new_value.to_s

      end
    end
  end
  new_hash
end
