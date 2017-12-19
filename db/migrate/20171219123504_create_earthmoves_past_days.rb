class CreateEarthmovesPastDays < ActiveRecord::Migration[5.1]
  def change
    create_table :earthmoves_past_days do |t|
      t.datetime :time
      t.float :latitude
      t.float :longitude
      t.decimal :depth
      t.decimal :mag

      t.timestamps
    end
  end
end
