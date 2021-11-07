# frozen_string_literal: true

require_relative "test_helper"

class VisenerTest < Minitest::Test
  include AaaCrypt

  def test_visener_encrypt_a
    assert_equal"w", Visener.encrypt('a', "world")
  end

  def test_visener_encrypt_hello_world
    assert_equal"dscwr sciwg!",
                    Visener.encrypt("hello world!", "world")
  end

  def test_visener_decrypt_a
    assert_equal "a", Visener.decrypt("w", "world")
  end

  def test_visener_decrypt_hello_world
    assert_equal"hello world!",
                Visener.decrypt("dscwr sciwg!", "world")
  end

  def test_visener_encrypt_hello_world_mixed_case
    assert_equal"dscwr sciwg!",
                Visener.encrypt("Hello World!", "world")
  end
end