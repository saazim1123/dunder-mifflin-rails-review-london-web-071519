Employee.destroy_all
Dog.destroy_all


create_table "dogs", force: :cascade do |t|
  t.string "name"
  t.string "breed"
  t.integer "age"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

create_table "employees", force: :cascade do |t|
  t.string "first_name"
  t.string "last_name"
  t.string "alias"
  t.string "title"
  t.string "office"
  t.string "img_url"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
  t.integer "dog_id"
end