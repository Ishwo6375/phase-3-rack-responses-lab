class Application
  def call(env)
    resp = Rack::Response.new

    time = Time.now

if time.hour < 12
   resp.write "Good Morning! the current time is #{time}"
else
   resp.write "Good Afternoon! the current time is #{time}"
  end

    resp.finish
  end
end