class CreateExtensions < ActiveRecord::Migration[7.0]

  def up
    execute "create extension IF NOT EXISTS postgis;"
    execute "create extension IF NOT EXISTS postgis_raster;"
    execute "create extension IF NOT EXISTS pgcrypto;"
  end

  def down
    execute "drop extension IF EXISTS pgcrypto;"
    execute "drop extension IF EXISTS postgis_raster;"
    execute "drop extension IF EXISTS postgis;"
  end

end
