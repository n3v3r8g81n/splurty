class QuotesController < ApplicationController
  def index
#    @quote = Quote.first
     @quote = Quote.order("RANDOM()").first
    end

  def new
      @quote = Quote.new
    end

  def create
    @quote = Quote.create(quote_params)
    if @quote.invalid?
      flash[:error] = '<strong>Could not add</strong> the quote. The saying must have 4 to 140 characters. The author must have 2 to 50 characters. Click Contribute again.'
      end
    redirect_to root_path
    end

  def about
  end

  private

  def quote_params
    params.require(:quote).permit(:saying, :author)
    end
end

