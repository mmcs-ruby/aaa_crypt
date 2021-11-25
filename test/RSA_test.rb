require_relative "test_helper"

class RSA_test < Minitest::Test
    include AaaCrypt
    include RSA

    @@alice = RSA::Key.new
    @@bob = RSA::Key.new

    def test__rsa_n_is_prime
        assert_equal Prime.prime?(@@alice.pubkey.tail), true
    end
    
    def test_rsa_alice_can_decrypt_her_own_messgaes
        assert_equal @@alice.decipher(@@alice.cipher('secret')), 'secret'
    end
    
    def test_rsa_bob_can_correctly_encrypt_using_pubkey_that_alice_shared_with_him
        assert_equal @@alice.decipher(@@bob.cipher('2289 90 317'), @@alice.pubkey), '2289 90 317'
    end
end