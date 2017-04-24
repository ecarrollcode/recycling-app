Category.create!([
  {category_id: 1, name: "paper/cardboard", info: ""},
  {category_id: 2, name: "plastic", info: ""},
  {category_id: 3, name: "glass", info: ""},
  {category_id: 4, name: "aluminum/metal", info: ""},
  {category_id: 5, name: "chemicals", info: ""},
  {category_id: 6, name: "hazardous", info: ""},
  {category_id: 7, name: "paper/cardboard", info: ""},
  {category_id: 8, name: "ewaste", info: ""},
  {category_id: 9, name: "organic", info: ""},
  {category_id: 10, name: "bulk", info: ""},
  {category_id: 11, name: "pharmaceuticals", info: ""},
  {category_id: 12, name: "mixed", info: ""},
  {category_id: 13, name: "other", info: ""}
])
City.create!([
  {city_id: 1, name: "Claremont, CA", website: "http://www.ci.claremont.ca.us/government/departments-divisions/community-services/trash-and-recycling", gps_coords: "34.0966764,-117.71977850000002"}
])
Item.create!([
  {item_id: 1, name: "junk mail", category: "papers", bin: "recycle", info: "According to the EPA, every year, over 4 millions of junkmail are producted. Remove yourself from mailing lists to reduce your environmental impact.", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 2, name: "telephone books", category: "papers", bin: "recycle", info: "Look in the front or back of the telephone book to see recycling information.", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 3, name: "catalogs", category: "papers", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 4, name: "computer paper", category: "papers", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 5, name: "envelopes", category: "papers", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 6, name: "wrapping paper", category: "papers", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 7, name: "brochures", category: "papers", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 8, name: "crayon drawings", category: "papers", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 9, name: "office paper", category: "papers", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 10, name: "copy paper", category: "papers", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 11, name: "used diapers", category: "other", bin: "trash", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 12, name: "used tissue products", category: "papers", bin: "trash", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 13, name: "soiled pizza boxes", category: "cardboard", bin: "trash", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 14, name: "waxed paper", category: "papers", bin: "trash", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 15, name: "used paper plates", category: "paper", bin: "trash", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 16, name: "styrofoam cups", category: "other", bin: "trash", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 17, name: "stryofoam plates", category: "other", bin: "trash", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 18, name: "stryofoam packaging (small pieces)", category: "styrofoam", bin: "trash", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 19, name: "clothing", category: "other", bin: "trash", info: "Still in decent shape? Donate it instead of throwing it away.", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 20, name: "furniture", category: "bulk", bin: "special pickup", info: "Still in decent shape? Donate it instead of throwing it away.", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 20, name: "carpet & other fabric products", category: "unknown", bin: "trash", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 21, name: "Cereal boxes", category: "cardboard", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 22, name: "Tissue boxes", category: "cardboard", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 23, name: "Food boxes", category: "cardboard", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 24, name: "Milk cartons", category: "cardboard", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 25, name: "Juice boxes", category: "cardboard", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 26, name: "Soda/beer cartons", category: "cardboard", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 27, name: "Egg cartons", category: "cardboard", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 28, name: "Paper bags", category: "cardboard", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 29, name: "Cardboard boxes", category: "cardboard", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 30, name: "Gift boxes", category: "cardboard", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 31, name: "Styrofoam packaging (large pieces)", category: "cardboard", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 32, name: "Juice bottles", category: "glass", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 33, name: "Beer bottles", category: "glass", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 34, name: "Wine bottles", category: "glass", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 35, name: "Liquor bottles", category: "glass", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 36, name: "Baby food jars", category: "glass", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 37, name: "Condiment jars", category: "glass", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 38, name: "Jam jars", category: "glass", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 39, name: "Jelly jars", category: "glass", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 40, name: "Assorted food jars", category: "glass", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 41, name: "Salad dressing bottles", category: "glass", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 42, name: "Plastic water bottles", category: "plastic", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 43, name: "Plastic soda bottles", category: "plastic", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 44, name: "Plastic milk jugs", category: "plastic", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 45, name: "Plastic laundry jugs", category: "plastic", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 46, name: "Shampoo bottles", category: "plastic", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 47, name: "Lotion bottles", category: "plastic", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 48, name: "Food containers", category: "plastic", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 49, name: "Condiment bottles", category: "plastic", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 50, name: "Motor oil containers", category: "plastic", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 51, name: "Vegetable oil bottles", category: "plastic", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 52, name: "Aluminum soda cans", category: "metals", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 53, name: "Aluminum beer cans", category: "metals", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 54, name: "Fruit cans", category: "metals", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 55, name: "Vegetable cans", category: "metals", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 56, name: "Pet food cans", category: "metals", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 57, name: "Juice cans", category: "metals", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 58, name: "Soup cans", category: "metals", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 59, name: "Sauce cans", category: "metals", bin: "recycle", info: "You don't even have to remove the label before recycling it!", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 60, name: "Assorted food cans", category: "metals", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 61, name: "Metal Hangers", category: "metals", bin: "recycle", info: "", cities: "Claremont, CA", recycling_plants: "RP1", img_path: ""},
  {item_id: 62, name: "computers", category: "electronics", bin: "special pickup", info: "free curbside pickup through GreenWay Solid Waste & Recycling Inc.", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 63, name: "monitors", category: "electronics", bin: "special pickup", info: "free curbside pickup through GreenWay Solid Waste & Recycling Inc.", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 64, name: "keyboards", category: "electronics", bin: "special pickup", info: "free curbside pickup through GreenWay Solid Waste & Recycling Inc.", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 65, name: "printers", category: "electronics", bin: "special pickup", info: "free curbside pickup through GreenWay Solid Waste & Recycling Inc.", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 66, name: "televisions", category: "electronics", bin: "special pickup", info: "free curbside pickup through GreenWay Solid Waste & Recycling Inc.", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 67, name: "DVD players", category: "electronics", bin: "special pickup", info: "free curbside pickup through GreenWay Solid Waste & Recycling Inc.", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 68, name: "hard drives", category: "electronics", bin: "special pickup", info: "free curbside pickup through GreenWay Solid Waste & Recycling Inc.", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 69, name: "fax machines", category: "electronics", bin: "special pickup", info: "free curbside pickup through GreenWay Solid Waste & Recycling Inc.", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 70, name: "used oil", category: "chemicals", bin: "special pickup", info: "free curbside pickup through Sanitation Division", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 71, name: "paint", category: "hazardous", bin: "special pickup", info: "free curbside pickup through Sanitation Division", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 72, name: "earth", category: "organic", bin: "special pickup", info: "contact Community Services", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 73, name: "rocks", category: "organic", bin: "special pickup", info: "contact Community Services", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 74, name: "mortar", category: "other", bin: "special pickup", info: "contact Community Services", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 75, name: "concrete", category: "other", bin: "special pickup", info: "contact Community Services", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 84, name: "ceramic dishes", category: "other", bin: "trash", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 75, name: "lithium-slfur batteries", category: "hazardous", bin: "special pickup", info: "contact Community Services", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 85, name: "plastic grocery bags", category: "plastic", bin: "trash", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 86, name: "garden hoses", category: "other", bin: "trash", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 87, name: "plastic lawn furniture", category: "bulk", bin: "trash", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 88, name: "plastic pools & toys", category: "plastic", bin: "trash", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 89, name: "bicycles", category: "bulk", bin: "special pickup", info: "Still in decent shape? Donate it instead of throwing it away.", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 90, name: "auto parts", category: "other", bin: "trash", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 91, name: "fruits", category: "organic", bin: "compost", info: "Make sure to remove all stickers from the fruit before composting.", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 91, name: "vegetables", category: "organic", bin: "compost", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 91, name: "coffee grounds", category: "organic", bin: "compost", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 91, name: "food scraps", category: "organic", bin: "compost", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 91, name: "manure", category: "organic", bin: "compost", info: "Manure contains nitrogen and beneficial microbes, making it great for composting. Only compost manure from vegitarian animals.", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 91, name: "flowers", category: "organic", bin: "compost", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 91, name: "eggshells", category: "organic", bin: "compost", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 91, name: "tea bags", category: "organic", bin: "compost", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 91, name: "organic solvents", category: "mixed", bin: "special pickup", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 91, name: "expired medications", category: "pharmaceuticals", bin: "special pickup", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 91, name: "yard trimmings", category: "organic", bin: "compost", info: "If coated in chemical pesticides, do not compost as can kill beneficial organisms in the composting process.", cities: "Claremont, CA", recycling_plants: "", img_path: ""},
  {item_id: 92, name: "used aluminum oil", category: "chemicals", bin: "trash", info: "", cities: "Claremont, CA", recycling_plants: "", img_path: ""}
])
MailingList.create!([
  {user_id: 1, name: "Abby Schantz", email: "aschantz18@cmc.edu"},
  {user_id: 2, name: "Taylor Yates", email: "eyates18@cmc.edu"},
  {user_id: 3, name: "Prat Kapur", email: "pkapur@hmc.edu"},
  {user_id: 4, name: "Edward Carroll", email: "ecarroll@students.pitzer.edu"}
])
RecyclingPlant.create!([
  {plant_id: 1, name: "Residential Recycling Center", plant_hours: "Friday, Saturday, & Sunday - 24 hours", gps_coords: "34.11385,-117.697629"}
])
