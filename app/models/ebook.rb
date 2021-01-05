class Ebook < ApplicationRecord

  STATUSES = {
    0 => {"status_display": "Available"},
    1 => {"status_display": "Not available"}
  }
  has_many :checked_out_books
  has_many :users, through: :checked_out_books

  def status_name
    STATUSES.dig(self.status, :status_display)
  end
end
