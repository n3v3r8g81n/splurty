class QuotesController < ApplicationController
  def index
#    @quote = Quote.first
     @quote = Quote.order ("RANDOM()").first
    end
end
