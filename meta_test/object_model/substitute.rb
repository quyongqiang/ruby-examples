#require 'test/unit'
require 'minitest/autorun'


class Array
  def substitute(from, to)
    each_with_index do |e, i|
      self[i] = to if e == from
    end
  end
end


class ArrayExtensionTest < Test::Unit::TestCase
  def test_substitute
    book_topics = ['html', 'java', 'css']
    book_topics.substitute('java', 'ruby')
    expected = ['html', 'ruby', 'css']
    assert_equal expected, book_topics
  end
end


#ArrayExtensionTest.test_substitute
