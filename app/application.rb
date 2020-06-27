class Application

  def call(env)

    resp = Rack::Response.new
    resp.write Time.now.to_i

    if (Time.now.to_i >= 12)
      resp.write "Good Afternoon!"
    elsif (Time.now.to_i < 12)
      resp.write "Good Morning!"
    end

    resp.finish
  end
end
