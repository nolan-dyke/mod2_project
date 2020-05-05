class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :content, null: false, foreign_key: true

      t.timestamps
    end
  end
end
