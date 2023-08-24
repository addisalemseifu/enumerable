require_relative 'enumerable'


class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each
    @list.each { |i| yield(i) }
  end
end

list = MyList.new(1, 2, 3, 4)
puts list.all?
