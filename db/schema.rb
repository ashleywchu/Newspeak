# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150414175724) do

  create_table "article_to_tag_associations", force: :cascade do |t|
    t.integer "article_id"
    t.integer "tag_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string  "title"
    t.text    "abstract"
    t.text    "sources"
    t.text    "body"
    t.integer "rep"
    t.integer "author_id"
    t.integer "comment_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text    "body"
    t.integer "user_id"
    t.integer "article_id"
    t.integer "rep"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "author_id"
    t.integer "reader_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "article_id"
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.string  "email"
    t.integer "article_rep"
    t.integer "comment_rep"
  end

end
