# frozen_string_literal: true

require_relative "../test_helper"

class VigenereTest < Minitest::Test
  include AaaCrypt


  def test_vigenere_encrypt_a_with_key_d
    assert_equal"d",  Vigenere.vigenere_encrypt("a","d")
  end
  def test_vernam_decrypt_d
    assert_equal"a",  Vigenere.vigenere_decrypt("d","d")
  end

  def test_vigenere_encrypt_abba_with_key_mama
    assert_equal"mbna",  Vigenere.vigenere_encrypt("abba","mama")
  end
  def test_vernam_decrypt_mbna
    assert_equal"abba",  Vigenere.vigenere_decrypt("mbna","mama")
  end

  def test_vigenere_encrypt_awesome_with_key_weekend
    assert_equal"waicszh",  Vigenere.vigenere_encrypt("awesome","weekend")
  end
  def test_vernam_decrypt_waicszh
    assert_equal"awesome",  Vigenere.vigenere_decrypt("waicszh","weekend")
  end


end


