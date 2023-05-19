class CreateCs < ActiveRecord::Migration[7.0]
  def up
    create_table :cs, id: :uuid do |t|
      t.integer :i
      t.geometry :geom

      t.timestamps
    end
    add_index :cs, :geom, using: :gist 
    execute "SELECT UpdateGeometrySRID('cs','geom',3857)"
  end

  def down
    drop_table :cs
  end
end
