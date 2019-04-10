class TokenService
  ALGORITHM = 'HS256'.freeze

  class << self
    def encode(playload)
      JWT.encode(playload, secret, ALGORITHM)
    end

    def encode_data(data)
      raise 'Expecting `data` to be Hash' unless data.is_a? Hash

      playload = {
        data: data,
        exp: (Time.zone.now + 24.hours).to_i
      }
      encode(playload)
    end

    def decode(token)
      JWT.decode(token, secret, true, decode_options)
    end

    def decode_data(token)
      decoded_token = decode(token)
      data = decoded_token.first['data']
      data.with_indifferent_access if data.is_a? Hash
    rescue JWT::DecodeError
      nil
    end

    private

    def decode_options
      {
        algorithm: ALGORITHM
      }
    end

    def secret
      Rails.application.secrets.jwt_secret
    end
  end
end
