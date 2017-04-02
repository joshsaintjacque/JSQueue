require_relative '../lib/js_queue.rb'

describe JSQueue do
  let (:queue) { JSQueue.new 'A' }

  before do
    queue.enqueue 'B'
    queue.enqueue 'C'
  end

  it '#initialize' do
    expect( queue ).not_to be_empty
  end

  it '#first' do
    expect( queue.first ).to be_a QueueNode
    expect( queue.first.data ).to eq 'A'
  end

  it '#last' do
    expect( queue.last ).to be_a QueueNode
    expect( queue.last.data ).to eq 'C'
  end

  it '#enqueue' do
    queue.enqueue 'D'

    expect( queue.first.data ).to eq 'A'
    expect( queue.last.data ).to eq 'D'
  end

  it '#dequeue' do
    first_item = queue.dequeue

    expect( first_item ).to eq 'A'
    expect( queue.first.data ).to eq 'B'
  end

  it '#peek' do
    expect( queue.peek ).to eq 'A'
  end

  it '#empty?' do
    expect( queue.empty? ).to be_falsey
  end
end