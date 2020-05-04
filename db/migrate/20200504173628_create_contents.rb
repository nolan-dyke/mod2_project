class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :message
      t.string :image
      t.references :group, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
