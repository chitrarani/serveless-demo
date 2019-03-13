require 'json'
require 'pg'
require 'active_record'
# require './app/models/user.rb'

ActiveRecord::Base.establish_connection('postgres://jehfqldlowjgqk:74dee56af7a613fb11fc6fc5fbe25b932fff528c88c28cb3e64f0b4f788d8623@ec2-54-225-249-161.compute-1.amazonaws.com:5432/dbveeq3hjjj9tq')

module UserManagement
  class User < ActiveRecord::Base
    def self.list(event:, context:)
      data = {users: get_users}
      { statusCode: 200, body: JSON.generate(data) }
    end

    private

    def self.get_users
      User.last(10).collect { |user| {id: user.id, email: user.email} }
    end
  end
end
# require 'pg'
# require 'nokogiri'

# def list(event:, context:)
#   {
#     postgres_client_version: PG.library_version,
#     nokogiri_version: Nokogiri::VERSION
#   }
# end