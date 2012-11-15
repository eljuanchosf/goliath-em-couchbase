require 'em-couchbase'

# This will create a 20 em-couchbase connections pool
# and the "db" variable will be available for the API.
config['db'] = EM::Synchrony::ConnectionPool.new(:size => 20) do
    EM::Protocols::Couchbase.connect
end
