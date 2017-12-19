class CreateAllEartquakes < ActiveRecord::Migration[5.1]
  def change
    create_table :all_eartquakes do |t|
      t.time :time
      t.float :latitude
      t.float :longitude
      t.decimal :depth
      t.decimal :mag
      t.decimal :magType
      t.integer :nst
      t.decimal :gap
      t.decimal :dmin
      t.decimal :rms
      t.string :net
      t.string :place

      t.timestamps
    end
  end
end
