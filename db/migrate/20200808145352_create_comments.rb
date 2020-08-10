class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :username
      t.text :reviews
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end