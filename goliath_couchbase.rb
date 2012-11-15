require 'bundler'
Bundler.setup
require 'goliath'


class GoliathCouchbase < Goliath::API

  use Goliath::Rack::Tracer
  use Goliath::Rack::Params
  use Goliath::Rack::Render, 'json'
  use Goliath::Rack::Heartbeat

  def response(env)
    cdb = db
    key_name = env.params['key_name']
    key_value = env.params['key_value']
    cdb.set key_name, key_value do |write_response|
      if write_response.success?
        cdb.get key_name do |read_response|
          puts read_response.value
        end
      end
    end
    [200, {}, {}]
  end
end
