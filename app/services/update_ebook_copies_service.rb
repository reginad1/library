class UpdateEbookCopiesService < ApplicationService

  def initialize(ebook_id)
    @ebook = Ebook.find(ebook_id)
  end

  def call
    @ebook.update(available_copies: @ebook.available_copies - 1)
  end

end
