require 'pry-byebug'

class CircularQueue
  def initialize(buffer_size)
    @array = Array.new(buffer_size)
    @add_index = 0  
    @delete_index = nil
    @buffer_size = buffer_size
  end

  def enqueue(obj)
    @array[@add_index] = obj
    @add_index += 1
    @add_index = 0 if @add_index == @buffer_size
  end

  def dequeue
    #binding.pry
    start_index = @add_index
    loop do
      if @array[start_index] != nil
        @delete_index = start_index
        break
      end

      start_index += 1
      start_index = 0 if start_index == @buffer_size
      if start_index == @add_index
        @delete_index = (@add_index - 1)
        break
      end
    end

    deleted_object = @array[@delete_index]
    @array[@delete_index] = nil
    deleted_object
  end
end
    

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil