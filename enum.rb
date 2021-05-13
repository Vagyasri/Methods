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


   #%w[Sharon Leo Leila Brian Arun].my_each_with_index { |friend, index| puts "#{index}: #{friend}" if index.odd? }

    def my_select
        return enum_for unless block_given?
        my_each do |i|
            self.delete(i) if !yield i  
        end
        self
    end
end
   
=begin
    For Array
    puts %w[Sharon Leo Leila Brian Arun].my_select { |friend| friend != 'Brian' }

    For Hash
    c = {"a" => 100, "c" => 300, "b" => 200}
    puts c.select {|key, value| key < "b"}
=end   
