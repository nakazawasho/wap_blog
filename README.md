# README

Things you may want to cover:

* Ruby version
ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin16]

* Database creation

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index|
|email|text|null: false, unique: true|

## articlesテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false, add_index|
|genre|text|null: false|
|content|text|-------|

## Association
- has_many :comments

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|-------|
|content|text|-------|

## Association
- belongs_to :article
