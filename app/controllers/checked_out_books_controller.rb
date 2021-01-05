class CheckedOutBooksController < ActionController::Base
  protect_from_forgery

  def create
    ebook_id = params["ebook"]["id"]
    CheckedOutBook.create(ebook_id: ebook_id, user_id: current_user["id"])
  end
end
