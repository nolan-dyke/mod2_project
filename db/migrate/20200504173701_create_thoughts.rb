class CreateThoughts < ActiveRecord::Migration[6.0]
  def change
    create_table :thoughts do |t|
      t.string :comment
      t.references :user, null: false, foreign_key: true
      t.references :content, null: false, foreign_key: true


      t.timestamps
    end
  end
end
