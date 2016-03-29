class CreateBrackets < ActiveRecord::Migration
  def change
    create_table :brackets do |t|
      t.references :user, null: false
      t.references :competition, null: false
      t.timestamps null: false
    end
  end
end
