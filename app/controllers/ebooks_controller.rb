class EbooksController < ActionController::Base

  def index
    @ebooks = Ebook.all
    render json: EbookSerializer.new(@ebooks).serialized_json
  end
end
