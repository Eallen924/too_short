require 'securerandom'

def too_short
  @short_url = "http://too_short/#{SecureRandom.hex(3)}"
end
