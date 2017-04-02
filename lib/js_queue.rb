require_relative 'queue_node'

class JSQueue
  attr_accessor :first, :last

  ##
  # Creates a new queue with an optional first item +data+.
  #
  # If an initial value is provided, it will be considered both the +first+ and
  # +last+ item in the queue.
  def initialize(data=nil)
    @first = QueueNode.new data unless data.nil?
    @first ||= nil
    @last = @first
  end

  ##
  # Adds the provided value +data+ to the back of the queue.
  #
  # If it is the only item in the queue, it will be considered both the +first+
  # and the +last+.
  def enqueue(data)
    node = QueueNode.new data
    unless last.nil?
      @last.next = node
      @last = node
    end
    @first = node if @first.nil?
  end

  ##
  # Removes and returns the data value of the +first+ item in the queue.
  #
  # == Example
  #   queue.dequeue # => 'I was first in line'
  def dequeue
    return if @first.nil?
    data = @first.data
    @first = @first.next unless @first.nil?
    @last = nil if @first.nil?
    data
  end

  ##
  # Returns the +first+ enqueued item's value, without removing it.
  #
  # == Example
  #   queue.peek # => 'I am first in line'
  def peek
    first.nil? ? nil : first.data
  end

  ##
  # Returns a Boolean indicating whether the queue has any items.
  #
  # == Example
  #   queue.empty? # => false
  def empty?
    first.nil?
  end
end