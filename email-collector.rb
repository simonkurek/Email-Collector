require 'sinatra'

get '/emails/:email' do
  email = params['email']
  begin
    file = File.open("emails.list", "a")
    file.puts(email)
  rescue IOError => e
    puts e
    bool = "False"
  ensure
    file.close unless file.nil?
    bool = "True"
  end
  bool
end
