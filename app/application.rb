class Application
  def call(env)
    resp = Rack::Response.new

    resp.write Time.now.hour < 12 ? 'Good morning' : 'Good afternoon'

    resp.finish
  end
end