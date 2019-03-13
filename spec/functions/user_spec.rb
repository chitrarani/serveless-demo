require 'spec_helper'
require './app/functions/user'

RSpec.describe UserManagement::User do
  subject { UserManagement::User }
  describe '.list' do
    context 'with all users' do
      let!(:context) { {} }
      let!(:event)  { {} }
      let(:response) { subject.list(event: event, context: context) }
      it 'responds successfully' do
        expect(response).to include(statusCode: 200)
      end
    end

    context "with client users" do

    end

    context "with facility users" do

    end
  end

  # describe 'User list with status code'
  # it "returns a status code" do
  #   response =  UserManagement::User.list({event: "",context: ""})
  #   debugger
  #   expect(response.).to have_http_status(200)
  # end
end