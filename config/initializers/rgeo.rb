RGeo::ActiveRecord::SpatialFactoryStore.instance.tap do |store|
  store.register(RGeo::Geographic.spherical_factory(srid: 4326, uses_lenient_assertions: true), {sql_type: 'geography'})
end
