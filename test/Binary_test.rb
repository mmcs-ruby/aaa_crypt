require_relative "test_helper"

class Binary_test < Minitest::Test
  include AaaCrypt
  include Binary
  def test_binary_encrypt_a
    assert_equal"1100001", encrypt('a')
  end

  def test_binary_encrypt_hello_world
    assert_equal"1101000 1100101 1101100 1101100 1101111 100000 1110111 1101111 1110010 1101100 1100100 100001",
                encrypt("hello world!")
  end

  def test_binary_decrypt_a
    assert_equal "a", decrypt("1100001")
  end

  def test_binary_decrypt_hello_world
    assert_equal"hello world!",
                decrypt("1101000 1100101 1101100 1101100 1101111 100000 1110111 1101111 1110010 1101100 1100100 100001")
  end

end
