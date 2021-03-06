# programmers can override this file in their own projects :)
class Credential < ActiveRecord::Base
  include Hello::CredentialModel

    # we recommend programmers to override this method in their apps
    def encrypt_password(plain_text_password)
      BCrypt::Password.create(plain_text_password)
    end

    # we recommend programmers to override this method in their apps
    def password_is?(plain_text_password)
      bc_password = BCrypt::Password.new(password_digest)
      bc_password == plain_text_password 
    rescue BCrypt::Errors::InvalidHash
      false
    end

end
