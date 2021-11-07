# frozen_string_literal: true

require_relative "test_helper"

class Ramzay_Test < Minitest::Test
  include AaaCrypt


  def test_ramzay_encrypt_a
    assert_equal"5", Ramzay.encrypt('a')
  end

  def test_ramzay_encrypt_hello_world
    assert_equal"983939329491249383",
                Ramzay.encrypt("hello world")
  end

  def test_ramzay_decrypt_a
    assert_equal "a", Ramzay.decrypt("5")
  end

  def test_ramzay_decrypt_hello_world
    assert_equal"hello/world",
                Ramzay.decrypt("983939329491249383")
  end

end
