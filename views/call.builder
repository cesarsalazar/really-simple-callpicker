xml.instruct! :xml, :version => "1.0"
xml.Response do
  xml.Dial("956-286-0031", :action => '/success', :method => 'POST')
end