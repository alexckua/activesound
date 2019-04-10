require 'rails_helper'

describe TokenService do
  let(:data) { { something: Faker::Lorem.word } }

  describe '.encode' do
    subject { TokenService.encode_data(data) }

    it 'retutn encoded data' do
      expect(subject).to be_a String
    end
  end

  describe '.decode' do
    let(:token) { TokenService.encode_data(data) }

    subject { TokenService.decode_data(token) }

    context 'with valid token' do
      it 'return decoded data' do
        expect(subject).to eq data.deep_stringify_keys
      end
    end

    context 'with invalid token' do
      let(:token) { Faker::Lorem.word }

      it 'return decoded data' do
        expect(subject).to eq nil
      end
    end
  end
end
