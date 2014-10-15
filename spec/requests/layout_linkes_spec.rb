require 'spec_helper'

describe "LayoutLinks", type: 'view' do


    it "should have a hello page at '/'" do
        get '/'
        response.should have_selector('title', :content => "Hello Page")
    end

    
    it "should have a hello page at 'pages/hello'" do
        get 'pages/hello'
        response.should have_selector('title', :content => "Hello Page")
    end
end


describe "failure" do
   it "should not give results" do
      lambda do
         visit pages_hello_path
         fill_in :start_time,    :with => ""
         fill_in :end_time,      :with => ""
         click_button
         response.should render_template('pages/hello')
      end
   end
end
