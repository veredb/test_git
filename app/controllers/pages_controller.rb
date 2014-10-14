require 'rubygems'
require 'json'
class PagesController < ApplicationController
  def hello
     @start_time = params[:start_time]
     @end_time = params[:end_time]
     @message = "Hello! This supposed to take a json string and parse it to a datagrid."
  end

  def about 

  end

end
