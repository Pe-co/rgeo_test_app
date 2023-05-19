class CreateDs < ActiveRecord::Migration[7.0]
  def up
    create_table :ds, id: :uuid do |t|
      t.integer :i
      t.geometry :geom

      t.timestamps
    end
    add_index :ds, :geom, using: :gist 
    execute "SELECT UpdateGeometrySRID('ds','geom',3857)"
  end

  def down
    drop_table :ds
  end
end
