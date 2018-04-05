require 'minitest/autorun'
require 'stringio'

module Kernel
  def capture
    out = StringIo.new
    $stdout = out
    yield
    return out

  ensure
    $stdout = STDOUT
  end
end
