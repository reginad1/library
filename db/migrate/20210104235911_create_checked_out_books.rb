class CreateCheckedOutBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :checked_out_books do |t|
      t.timestamps null: false
      t.references :ebook, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
    end
  end
end
