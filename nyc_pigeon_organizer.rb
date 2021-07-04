def names_list(data)
  names=[]
  data.map do |key,value|
    value.each do |key1,value1|
      names << value1
    end
  end
  names
end

def hash_pigeon(onekey,name,data)
  new_array=[]
  new_hash={}
  data.map do |key,value|
    value.map do |key1,value1|
      if onekey == key && value1.include?(name)
        new_array << key1.to_s
      end
    end
  end
  new_hash[onekey]=new_array
  new_hash
end

def merge_pigeon(name,data)
  keylist =data.keys
  new_array=[]
  i=0
  while i<keylist.length do
    new_array << hash_pigeon(keylist[i],name,data)
    i+=1
  end
  new_array.reduce({},:merge)
end

def nyc_pigeon_organizer(data)
  names=names_list(data)
  names=names.flatten.uniq
  pigeon_hash={}
  names.map do |element|
    pigeon_hash[element]=merge_pigeon(element,data)
  end
  pigeon_hash
end

#def nyc_pigeon_organizer(data)
  # write your code here!
#end
