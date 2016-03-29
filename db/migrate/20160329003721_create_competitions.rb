class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :title, null: false
      t.references :organizer, null: false
      t.references :show, null: false
      t.timestamps null: false
    end
  end
end
