require "json"
require "socket"
require "docopt"

struct Config
  include JSON::Serializable

  getter description

  def initialize(@description : String)
  end
end

class CLI
  def initialize
    data = "string"
    NamedTuple(started: Array(Config)).from_json(data)
  end
end

cli = CLI.new
