ActiveRecord::Schema.define(version: 2021_07_16_120158) do

  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "liked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
