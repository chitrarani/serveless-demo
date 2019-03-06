require 'json'

def list(event:, context:)
  { statusCode: 200, body: JSON.generate('Go Serverless!') }
end
