# リファクタリング前
def a_to_A s
  s.gsub(/a/, 'A')
end

require 'test/unit'

class ToATest < Test::Unit::TestCase
  def test_exchange_a_charactors
    assert_equal 'Aiueo', a_to_A('aiueo')
  end
end


# リファクタリング後。Ruby 標準のString クラスにメソッドを定義

class String
  def a_to_A
    gsub(/a/, 'A')
  end
end

class ToATest < Test::Unit::TestCase
  def test_exchange_a_charactors_neo
    assert_equal 'Aiueo', 'aiueo'.a_to_A
  end
end