require File.expand_path('../fixtures/common', __FILE__)
require 'cgi'
require File.expand_path('../shared/popup_menu', __FILE__)

describe "CGI::HtmlExtension#scrolling_list" do
  it_behaves_like :cgi_htmlextension_popup_menu, :scrolling_list
end
