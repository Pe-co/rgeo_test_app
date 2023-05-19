class CreateEs < ActiveRecord::Migration[7.0]
  def up
    create_table :es, id: :uuid do |t|
      t.geometry  :geometry
      t.string    :name
      t.timestamps
    end
    execute "SELECT UpdateGeometrySRID('es','geometry', 4326)"
  end

  def down
    drop_table :es
  end
end
