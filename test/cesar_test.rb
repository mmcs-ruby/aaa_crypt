# frozen_string_literal: true

require_relative "test_helper"

class CesarTest < Minitest::Test
  include AaaCrypt

  def test_cesar_encrypt_a
    assert_equal"d", Cesar.encrypt('a', 3)
  end

  def test_cesar_encrypt_hello_world
    assert_equal"khoor zruog!",
                Cesar.encrypt("hello world!", 3)
  end

  def test_cesar_decrypt_a
    assert_equal "a", Cesar.decrypt("d", 3)
  end

  def test_cesar_decrypt_hello_world
    assert_equal"hello world!",
                Cesar.decrypt("khoor zruog!", 3)
  end

  def test_cesar_encrypt_hello_world_mixed_case
    assert_equal"Khoor Zruog!",
                Cesar.encrypt("Hello World!", 3)
  end
end