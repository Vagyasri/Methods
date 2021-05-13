module Enumerable
    def my_each
      return enum_for unless block_given?
        for i in self
            yield i
        end
    end
  
  
   #%w[Sharon Leo Leila Brian Arun].my_each { |friend| puts friend}

    def my_each_with_index
      return enum_for unless block_given?
      j = 0
        for i in self
            yield i, j
            j += 1
        end 
    end   
end

   #%w[Sharon Leo Leila Brian Arun].my_each_with_index { |friend, index| puts "#{index}: #{friend}" if index.odd? }
