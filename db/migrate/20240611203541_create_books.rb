class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.date :published_at
      t.string :publisher
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end