require 'net/ftp'

describe "Net::FTPTempError" do
  it "is an Exception" do
    Net::FTPTempError.should < Exception
  end

  it "is a subclass of Net::FTPError" do
    Net::FTPPermError.should < Net::FTPError
  end
end
