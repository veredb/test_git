require 'rubygems'
require 'json'
class PagesController < ApplicationController
  def hello
     @start_time = params[:start_time]
     @end_time = params[:end_time]
     @message = "Hello! This supposed to take a json string and parse it to a datagrid."

     @url = 'http://customers.uniguest.com/api/v1/hotel_events/WASRK.json?user_token=4605146972a12bf07259940b36d2fca2&start_date=20130101&end_date=20141010'
   # @url = 'http://customers.uniguest.com/api/v1/hotel_events/WASRK.json?user_token=4605146972a12bf07259940b36d2fca2&start_date=@start_time&end_date=@end_time'
   # @url = 'http://customers.uniguest.com/api/v1/hotel_events/WASRK.json?user_token=4605146972a12bf07259940b36d2fca2&@start_time&@end_time'
     @resp = Net::HTTP.get_response(URI.parse(@url))
     @data = @resp.body
     @x = JSON.parse(@data)
  end

  def about 

  end

end
