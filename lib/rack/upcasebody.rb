require "rack/upcasebody/version"

module Rack
  class  Upcasebody
    def initialize(app)
      @app = app
    end

    def call(env)
      code, headers, body = @app.call(env)
      body.each{|part| part.upcase! }
      return [code, headers, body]
    end

  end
end
