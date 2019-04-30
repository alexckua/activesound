module Mutations
  class SignInUser < BaseMutation
    null true

    argument :email, Types::AuthProviderEmailInput, required: false

    field :token, String, null: true
    field :user, Types::UserType, null: true

    #type Types::AuthenticateType

    def resolve(email: nil)
      return unless email

      user = User.find_by(email: email[:email])

      return unless user
      return unless user.valid_password?(email[:password])

      OpenStruct.new({
                         token: TokenService.encode_data(user_id: user.id),
                         user: user
                     })
      #crypt = ActiveSupport::MessageEncryptor.new(Rails.application.credentials.secret_key_base.byteslice(0..31))
      #token = crypt.encrypt_and_sign("user-id:#{ user.id }")

      { user: user, token: token }
    end

    #def call(obj, args, ctx)
    #  input = args[:email]
    #  return unless input

    #  user = User.find_by(email: input[:email])
    #  return unless user
    #  return unless user.authenticate(input[:password])

    #  OpenStruct.new({
    #                     token: TokenService.encode_data(user),
    #                     user: user
    #                 })
    #end
  end
end