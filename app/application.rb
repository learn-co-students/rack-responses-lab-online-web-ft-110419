class Application

    def call(env)
        resp = Rack::Response.new
        noon = 12
        time = Kernel.rand(1..24)

        resp.write "#{time}\n"

        if time < noon
            resp.write "Good Morning"
        else
            resp.write "Good Afternoon"
        end
        resp.finish
    end

end