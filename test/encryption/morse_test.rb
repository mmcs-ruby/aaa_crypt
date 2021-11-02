# frozen_string_literal: true

require_relative "test_helper"

class MorseTest < Minitest::Test
  include AaaCrypt
  #"•••• • •−•• •−•• −−−   •−− −−− •−• •−•• −•• −−••−− "
  # "hello world!"

  def test_morse_encrypt_a
    assert_equal"._", Morse::encrypt('a')
  end

  def test_morse_encrypt_hello_world
    assert_equal".... . ._.. ._.. ___   .__ ___ ._. ._.. _.. __..__ ",
                Morse::encrypt("hello world!")
  end

  def test_morse_decrypt_a
    assert_equal "a", Morse::decrypt("._")
  end

  def test_morse_decrypt_hello_world
    assert_equal"hello world!",
                Morse::decrypt(".... . ._.. ._.. ___   .__ ___ ._. ._.. _.. __..__ ")
  end

  def test_morse_encrypt_hello_world_mixed_case
    assert_equal".... . ._.. ._.. ___   .__ ___ ._. ._.. _.. __..__ ",
                Morse::encrypt("Hello World!")
  end
end