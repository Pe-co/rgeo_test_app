class CreateAs < ActiveRecord::Migration[7.0]
  def up
    create_table :as, id: :uuid do |t|
      t.integer :fid
      t.geometry :geom
    end
    execute "SELECT UpdateGeometrySRID('as','geom',3006)"
    add_index :as, :geom, using: :gist 
  end

  def down
    drop_table :as
  end
end
