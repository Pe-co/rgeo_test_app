class CreateBs < ActiveRecord::Migration[7.0]
  def up
    create_table :bs, id: :uuid do |t|
      t.integer :fid
      t.geometry :geom
    end
    execute "SELECT UpdateGeometrySRID('bs','geom',3006)"
    add_index :bs, :geom, using: :gist 
  end

  def down
    drop_table :bs
  end
end
