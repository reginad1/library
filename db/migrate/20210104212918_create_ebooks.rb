class CreateEbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :ebooks do |t|
      t.timestamps null: false
      t.string :title
      t.integer :status
      t.integer :available_copies
    end
  end
end
