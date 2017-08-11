require 'pry'
def begins_with_r(array)
  array.all? do |array|
    array[0] == "r"
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |phrase|
    phrase[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |non_string|
    !(non_string.class == String)
  end
end

def count_elements(array)
  array_count = []
  array.each do |name_hash|

    if array_count == []
      name_hash[:count] = 1
      array_count.push(name_hash)
    else
      array_count.each do |name_whatever|
        if name_whatever[:name] == name_hash[:name]
          name_whatever[:count] += 1
        end
      end
    end

  end
  array_count
end

def count_elements(array)
  counts = []
  array.each do |name_hash|
    if hash = counts.detect{|hash| hash[:name] == name_hash[:name] }
      hash[:count] += 1
    else
      name_hash[:count] = 1
      counts.push(name_hash)
    end
  end
  counts
end

# def merge_data(arr1,arr2)
#       merged =[ ]
#       merged << arr1[0].merge(arr2[0]["blake"])
#       merged << arr1[1].merge(arr2[0]["ashley"])
# end

def merge_data(array1, array2)
  merged = []
  array1.each_index do |i|
    array2[0].keys.each do |name|
      merged << array1[i].merge(array2[0][name]) if name == array1[i][:first_name]
    end
  end
  merged
end

# let(:cool) {
#   [
#           {
#                  :name => "ashley",
#           :temperature => "sort of cool"
#       },
#           {
#                  :name => "blake",
#           :temperature => "cool"
#       }
#   ]
# }

def find_cool(cool)
    cool.select {|i| i.any? {|k,v| v == "cool"}}
end

def organize_schools(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end
