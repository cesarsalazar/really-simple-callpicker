xml.instruct! :xml, :version => "1.0"
xml.Response do
  xml.Say "Thank you for calling Yondify."
  xml.Gather(:numDigits => "1", :action => "/menu", :method => "POST") do
    xml.Say "To record a voice mail, press 1. To speak to our CEO, press 2. Please consider that even though he really likes to talk to people, he might not be available at the moment. Press any other key to listen to this menu all over again."
  end
end