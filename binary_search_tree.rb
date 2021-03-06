class BST
  attr_accessor :data, :left, :right
  def initialize( data )
    @data = data
    @left = nil
    @right = nil
  end
      
   
  def insert( new_data )
    if new_data <= @data
      @left.nil? ? @left = BST.new( new_data ) : @left.insert( new_data )
    elsif new_data > @data
      @right.nil? ? @right = BST.new( new_data ) : @right.insert( new_data )
    end
  end


  #  To figure out how to use &parameter ->
  # 1) https://medium.com/@sologoubalex/parameter-with-ampersand-operator-in-ruby-6a6a7fd666d5
  # 2) https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/


  def each(&block)
    left.each(&block) if left
    #block.call(data) same as yield data
    yield self.data
    right.each(&block) if right
  end
end
  
