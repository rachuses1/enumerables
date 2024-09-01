module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array

  def my_any?
    for item in self
      if yield(item) == true
        return true
      end
    end
    return false
  end


  def my_select
    produce = []
    for item in self
      if yield(item) == true
        produce << item
      end
    end
    return produce
  end


  def my_inject(num)

    for item in self
      num = yield(num, item)
    end
    
    return num


  end

  def my_all?
    for item in self
      result = yield(item)
     if result == false
        return false
      end    
  
    end
    return true
  end


  def my_map
    calculated = []
    for item in self
      calculated << yield(item)
    end
    p calculated
  end

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

    if block_given?
      count = 0
      for item in self
        if yield(item) == true
          count += 1
        end
      end
  
    else
     count= self.size
    end
    
    return count
  end


end
