class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
      create_table :authors do |t|
        t.string :a_name
        t.string :country
        t.date :dob
        t.timestamps
      end
  end
end
