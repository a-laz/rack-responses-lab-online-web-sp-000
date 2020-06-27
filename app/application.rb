class Application

  def call(env)

    resp = Rack::Response.new
    resp.write "#{Time.now.hour}\n"

    #if (Time.now.hour.to_i >= 12)
    #  resp.write "Good Afternoon!"
  #  elsif (Time.now.hour.to_i < 12)
    #  resp.write "Good Morning!"
    #end

    (Time.now.hour.to_i >= 12).valid? ? resp.write "Good Afternoon!" : resp.write "Good Morning!"
    
    resp.finish
  end
end
