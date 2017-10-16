require 'bundler/setup'
require 'test/unit'
require 'roma/client'


class RomaClientTest < Test::Unit::TestCase
  def test_get_set
    rc = Roma::Client::RomaClient.new(%w(localhost_11211 localhost_11311))
    assert_equal('STORED', rc.set('hoge', 'fuga'))

    assert_equal('fuga', rc.get('hoge'))
  end
end
