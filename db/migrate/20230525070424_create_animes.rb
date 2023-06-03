class CreateAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :animes do |t|
      t.references :user, null: false, foreign_key: true
      t.text :title
      t.integer :all_part
      t.integer :current_part

      t.timestamps
    end
  end
end
