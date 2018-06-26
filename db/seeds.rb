require 'pry'

json = ActiveSupport::JSON.decode(File.read('db/baltimore_food_test.json'))
json.each do |struct|
    struct[1].each do |business|
        Listing.create!(title: business["properties"]["title"], url:business["properties"]["url"], phoneFormatted: business["properties"]["phoneFormatted"], phone: business["properties"]["phone"], address: business["properties"]["address"], city:business["properties"]["city"], country: business["properties"]["country"], crossStreet: business["properties"]["crossStreet"], postalCode: business["properties"]["postalCode"], state: business["properties"]["state"])
    end
end