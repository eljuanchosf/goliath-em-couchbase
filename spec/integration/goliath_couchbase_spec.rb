require 'spec_helper'
require File.join(File.dirname(__FILE__), '../../', 'goliath_couchbase')
require 'yajl' if RUBY_PLATFORM != 'java'

describe GoliathCouchbase do
  let(:err) { Proc.new { fail "API request failed" } }

  it 'returns test values for POST' do
    with_api(GoliathCouchbase) do
      post_request({body: {key_name:  'test_key',
                              key_value: 'test_value'}
                   }, err) do |c|
        b = MultiJson.load(c.response)
        b['response'].should == 'test_value'
      end
    end
  end
end
