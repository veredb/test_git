require 'spec_helper'

describe "LayoutLinks", type: 'view' do
    
    it "should have a hello page at 'pages/hello'" do
        get 'pages/hello'
        response.should have_selector('title', :content => "Hello Page")
    end
end
