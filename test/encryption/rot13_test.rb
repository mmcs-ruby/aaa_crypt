require_relative "../test_helper"

class Rot13Test < Minitest::Test
  include AaaCrypt
  include AaaCrypt::Rot13

  def test_rot13_encrypt_a
    assert_equal"n", Rot13::encrypt('a')
  end

  def test_rot13_encrypt_hello_world
    assert_equal"uryy? }?.yqb",
                Rot13::encrypt("hello world!")
  end

  def test_rot13_decrypt_a
    assert_equal "a", Rot13::decrypt("n")
  end

  def test_rot13_decrypt_hello_world
    assert_equal"hello world!",
                Rot13::decrypt("uryy? }?.yqb7")
  end

  def test_rot13_encrypt_hello_world_mixed_case
    assert_equal"uryy? }?.yqb",
                Rot13::encrypt("Hello World!")
  end
end