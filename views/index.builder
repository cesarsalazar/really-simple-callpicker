xml.instruct! :xml, :version => "1.0"
xml.Response do
  xml.Say "Hello Monkey"
  xml.Gather(:numDigits => "1", :action => "/real", :method => "POST") do
    xml.Say "To speak to a real monkey, press 1.  Press any other key to start over."
  end
end