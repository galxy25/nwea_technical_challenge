# Module flatten provides methods for flattening a list of integers.
module Flatten
  def flatten(nested_list)
    result = []
    unless validate_is_list(nested_list)
      throw "Input #{nested_list} is not a list"
    end
    nested_list.each do |element|
      if element.is_a? Integer
        result << element
        next
      end
      flatten(element).each do |nested_list_element|
        result << nested_list_element
      end
    end
    result
  end

  def validate_is_list(list)
    list.is_a? Array
  end
end
