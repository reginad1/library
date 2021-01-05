class CheckedOutBook < ApplicationRecord
  belongs_to :ebook
  belongs_to :user
  after_create :update_available_book_copies

  def update_available_book_copies
    UpdateEbookCopiesService.call(self.ebook_id)
  end

end
