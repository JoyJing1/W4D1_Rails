require 'addressable/uri'
require 'rest-client'
require 'byebug'
# require_relative 'users_controller'

def create_user
  # begin
    url = Addressable::URI.new(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: '/users/1'#,
    #   query_values: {
    #     'user[email]' => 'yooohoo@aol.com',
    #     'user[name]' => "Joy2"
    #  }
    ).to_s


    RestClient.delete(
      url#,
        #{name: "Joy3"}

    )

  # rescue "Retrying create user"
  #   retry
  # end

end

create_user
