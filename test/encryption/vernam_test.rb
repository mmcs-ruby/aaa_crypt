require 'minitest/autorun'
require_relative "../test_helper"

class VernamTest < Minitest::Test
  include AaaCrypt
  include AaaCrypt::Vernam

  def test_vernam_encrypt_a
    assert_equal("C",Vernam.encrypt("A","C"))
  end

  def test_vernam_decrypt_a
    assert_equal("A",Vernam.decrypt("C","C"))
  end

  def test_vernam_encrypt_hw
    assert_equal("61N{BFX84T",Vernam.encrypt("HELLOWORLD","ZXC795JRTQ"))
  end

  def test_vernam_decrypt_hw
    assert_equal("HELLOWORLD",Vernam.decrypt("61N{BFX84T","ZXC795JRTQ"))
  end
end