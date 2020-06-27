class Application

  def call(env)

    resp = Rack::Response.new
    resp.write "#{Time.now.hour}\n"

    if (Time.now.hour.to_i >= 12)
      resp.write "Good Afternoon!"
    elsif (Time.now.hour.to_i < 12)
      resp.write "Good Morning!"
    end

    resp.finish
  end
end
