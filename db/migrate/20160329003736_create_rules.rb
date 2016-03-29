class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :content, null: false
      t.references :competition, null: false
      t.timestamps null: false
    end
  end
end
