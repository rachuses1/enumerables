module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    for item in self
      yield(item)
    end
  end

  def my_each_with_index
    index = -1 
    for item in self
      yield(item, index += 1)
    end
  end

  def my_count
    count = 0
    if !block_given?
      self.size
    else
      for item in self
        if yield == true
          count += 1
        end
      end
    end
  end
end
