# frozen_string_literal: true

require_relative "../test_helper"

class MorseTest < Minitest::Test
  include AaaCrypt

  #"•••• • •−•• •−•• −−−   •−− −−− •−• •−•• −•• −−••−− "
  # "hello world!"

  def test_morse_encrypt_a
    assert_equal"•-", Morse.encrypt('a')
  end

  def test_morse_encrypt_hello_world
    assert_equal"•••• • •−•• •−•• −−−   •−− −−− •−• •−•• −•• −−••−− ",
                Morse.encrypt("hello world!")
  end

  def test_morse_decrypt_a
    assert_equal "a", Morse.decrypt("•-")
  end

  def test_morse_decrypt_hello_world
    assert_equal"hello world!",
                Morse.decrypt("•••• • •−•• •−•• −−−   •−− −−− •−• •−•• −•• −−••−− ")
  end

  def test_morse_encrypt_hello_world_mixed_case
    assert_equal"•••• • •−•• •−•• −−−   •−− −−− •−• •−•• −•• −−••−− ",
                Morse.encrypt("Hello World!")
  end


end