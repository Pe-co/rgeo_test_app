# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_08_125236) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"
  enable_extension "postgis"
  enable_extension "postgis_raster"

  create_table "as", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "fid"
    t.geometry "geom", limit: {:srid=>3006, :type=>"geometry"}
    t.index ["geom"], name: "index_as_on_geom", using: :gist
  end

  create_table "bs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "fid"
    t.geometry "geom", limit: {:srid=>3006, :type=>"geometry"}
    t.index ["geom"], name: "index_bs_on_geom", using: :gist
  end

  create_table "cs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "i"
    t.geometry "geom", limit: {:srid=>3857, :type=>"geometry"}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["geom"], name: "index_cs_on_geom", using: :gist
  end

  create_table "ds", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "i"
    t.geometry "geom", limit: {:srid=>3857, :type=>"geometry"}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["geom"], name: "index_ds_on_geom", using: :gist
  end

  create_table "es", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.geometry "geometry", limit: {:srid=>4326, :type=>"geometry"}
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.geometry "geometry", limit: {:srid=>4326, :type=>"geometry"}
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["geometry"], name: "index_fs_on_geometry", using: :gist
  end

end
