require 'minitest/autorun'
require_relative "../test_helper"

class VernamTest < Minitest::Test
  include AaaCrypt
  include AaaCrypt::Vernam

  def test_vernam_encrypt_a
    assert_equal("C",Vernam.encrypt("A","C"))
  end
end