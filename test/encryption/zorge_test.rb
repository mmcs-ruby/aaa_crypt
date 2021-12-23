require_relative "../test_helper"

class Zorgetest < Minitest::Test
  include AaaCrypt
  include AaaCrypt::Zorge

  def test_zorge_encrypt_short
    assert_equal"981",
                Zorge::encrypt("HI")
  end

  def test_zorge_decrypt_short
    assert_equal"HI",
                Zorge::decrypt("981")
  end

  def test_zorge_encrypt_without_numbers
    assert_equal"549697",
                Zorge::encrypt("army")
  end

  def test_zorge_decrypt_without_numbers
    assert_equal"ARMY",
                Zorge::decrypt("549697")
  end

  def test_zorge_encrypt_with_numbers
    assert_equal"54969794555594",
                Zorge::encrypt("army/55/")
  end

  def test_zorge_decrypt_with_numbers
    assert_equal"ARMY/55/",
                Zorge::decrypt("54969794555594")
  end

  def test_zorge_encrypt_long_with_numbers
    assert_equal"5496979455559496096929605960596",
                Zorge::encrypt("ARMY/55/MSMFMSAMSAM")
  end

  def test_zorge_decrypt_long_with_numbers
    assert_equal"ARMY/55/MSMFMSAMSAM",
                Zorge::decrypt("5496979455559496096929605960596")
  end

end