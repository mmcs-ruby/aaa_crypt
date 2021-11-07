# frozen_string_literal: true

require_relative "../test_helper"

class VernamTest < Minitest::Test
  include AaaCrypt

  def test_vernam_encrypt_a_with_key_1
    assert_equal"01010000 ", Vernam.vernam_encrypt("a","1")
  end
  def test_vernam_decrypt_01010000
    assert_equal"a", Vernam.vernam_decrypt("01010000 ","1")
  end

  def test_vernam_encrypt_Hello_world_with_key_wr3u44uejxm1
    assert_equal"00111111 00010111 01011111 00011001 01011011 00010100 00000010 00001010 00011000 00010100 00001001 00010000 ", Vernam.vernam_encrypt("Hello world!","wr3u44uejxm1")
  end
  def test_vernam_decrypt_00111111_00010111_01011111_00011001_01011011_00010100_00000010_00001010_00011000_00010100_00001001_00010000
    assert_equal"Hello world!", Vernam.vernam_decrypt("00111111 00010111 01011111 00011001 01011011 00010100 00000010 00001010 00011000 00010100 00001001 00010000 ","wr3u44uejxm1")
  end

  def test_vernam_encrypt_Number_11_with_key_fdt4udht7
    assert_equal"00101000 00010001 00011001 01010110 00010000 00010110 01001000 01000101 00000110 ", Vernam.vernam_encrypt("Number 11","fdt4udht7")
  end
  def test_vernam_decrypt_00101000_00010001_00011001_01010110_00010000_00010110_01001000_01000101_00000110
    assert_equal"Number 11", Vernam.vernam_decrypt("00101000 00010001 00011001 01010110 00010000 00010110 01001000 01000101 00000110 ","fdt4udht7")
  end


end

