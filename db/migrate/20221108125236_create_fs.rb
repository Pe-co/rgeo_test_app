class CreateFs < ActiveRecord::Migration[7.0]
  def up
    create_table :fs, id: :uuid do |t|
      t.geometry :geometry
      t.integer :value

      t.timestamps
    end
    execute "SELECT UpdateGeometrySRID('fs','geometry', 4326)"
    add_index :fs, :geometry, using: :gist 
  end

  def down
    drop_table :fs
  end
end
