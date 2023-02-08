class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.belongs_to :author, foreign_key: true
      t.string :b_name
      t.date :published_at
      t.integer :page
      t.timestamps
    end
  end
end
t