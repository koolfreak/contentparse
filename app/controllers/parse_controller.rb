require 'net/http'
require 'uri'

class ParseController < ApplicationController
  
  
  def index
    val =  Net::HTTP.get(URI.parse(params[:url]))
    
    content = WebsiteContent.new
    content.website_content =  val
    content.website_url = params[:url]
    content.save
    
    render :json => content
  end
  
  def show
    urls = WebsiteContent.all().collect { |w| w.website_url }
    render :json => urls
  end
  
  
end