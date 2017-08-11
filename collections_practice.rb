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
  array_count = Hash.new()
  array.each do |each_element|
    require 'pry'
    binding.pry
    array_count[each_element] += 1
  end
end
