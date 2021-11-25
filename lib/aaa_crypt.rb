# frozen_string_literal: true

require_relative "aaa_crypt/version"
require_relative 'Binary'
require_relative "aaa_crypt/morse"
require_relative 'cesar/cesar'
require_relative 'visener/visener'
require_relative 'aaa_crypt/rot13'


module AaaCrypt
  class Error < StandardError; end

end
