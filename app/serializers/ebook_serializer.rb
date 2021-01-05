class EbookSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :title, :available_copies

  attribute :status_name do |ebook|
    ebook.status_name
  end
end
