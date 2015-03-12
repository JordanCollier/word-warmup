require './lib/word_cloud'
require_relative '../data/data.rb'

describe WordCloud do

  it 'can count phrases' do
    sayings = [
      "this that those",
      "this that these",
    ]
    word_cloud = WordCloud.new(sayings)
    expect(word_cloud.counts).to eq({
      'this' => 2,
      'that' => 2,
      'those' => 1,
      'these' => 1
    })
  end

  it 'can count words' do
    sayings = %w[this that those this that this]
    word_cloud = WordCloud.new(sayings)
    expect(word_cloud.counts).to eq({
      'that' => 2,
      'this' => 3,
      'those' => 1
    })
  end

end
