xml.instruct! :xml, :version => "1.0"
xml.Response do
  xml.Say "Please leave a message at the beep. Press the pound key when finished."
  xml.Record(:maxLength => "60", :finishOnKey => "#", :action => "/success", :method => "POST")
  xml.Say "Nothing was recorded."
end