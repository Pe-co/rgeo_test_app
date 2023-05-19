require "test_helper"

class ATest < ActiveSupport::TestCase

  1000.times do |i|
    define_method "test_number_#{i}" do
      building = A.new
      polygon = "POLYGON ((0 0, 0 #{i}, #{i} #{i}, #{i} 0, 0 0))"
      building.geom = polygon

      assert_equal(building.geom.as_text, polygon)
      building.save

      building = A.last

      geo_fac = RGeo::Geographic.spherical_factory(srid: 3006)
      geo_building = B.new

      polygon = geo_fac.parse_wkt("POLYGON ((0.0 0.0, 0.0 #{(i % 5) + 1}.0, #{(i % 5) + 1}.0 #{(i % 5) + 1}.0, #{(i % 5) + 1}.0 0.0, 0.0 0.0))")

      geo_building.geom = polygon
      geo_building.fid = i

      assert_equal(geo_building.geom, polygon)
      geo_building.save

      geo_building = B.last
    end
  end

end
