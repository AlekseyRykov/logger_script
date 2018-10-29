require 'singleton'

class Logger
  include Singleton

  def initialize
    @f = File.open 'log.txt', 'a'
  end

  def log_something arg
    @f.puts arg
    @f.flush
  end

end
