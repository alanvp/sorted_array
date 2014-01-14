class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []
    input_arr.each {|elem| self.add(elem)}
  end

  def add(new_elem)
    @internal_arr.insert(first_larger_index(new_elem, 0, @internal_arr.size), new_elem)
 #   raise NotImplementedError.new("You need to implement the add method!")
  end

  def size
    @internal_arr.size
  end

  def [](index)
      return @internal_arr[index]
#   raise NotImplementedError.new("You need to implement the [] method!")
  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)
    if start_ind >= end_ind then return 0 end
    if (end_ind-start_ind) == 1
      if target < @internal_arr[start_ind] 
        return start_ind
      else return end_ind
      end
    end  
    middle_ind = (start_ind + end_ind) / 2  
    if target < @internal_arr[middle_ind]
      return first_larger_index(target, start_ind, middle_ind)
    elsif target >= @internal_arr[middle_ind]
      return first_larger_index(target, middle_ind, end_ind)  
    end 
#    raise NotImplementedError.new("You need to implement the first_larger_index method!")
  end

  def index(target)
    return @internal_arr.index(target)
#    raise NotImplementedError.new("You need to implement the index method!")
  end
end
