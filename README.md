# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル
|Colum|Type|Options|
|-----|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|paswwprd|string|null:false|

- has_many :posts
- has_many :comments
- has_many :followers
- has_many :likes


## postsテーブル
|Colum|Type|Options|
|-----|----|-------|
|title|text|null: false|
|content|text|null ;false|
|image|text||

- belongs_to :user
- has_many :post_tags
- has_many :comments
- has_many :tags, through:  :post_tags
- has_many :likes

## tagsテーブル
|Colum|Type|Options|
|-----|----|-------|
|content|text|

- has_many :post_tags
_ has_many :posts, through:  :post_tags

## post_tagsテーブル
|Colum|Type|Options|
|-----|----|-------|
|post_id|integer|null: false, foreign_kye: true|
|tag_id|integer|null: false, foreign_kye: true|

- belongs_to :post
- belongs_to :tag

## commentsテーブル
|Colum|Type|Options|
|-----|----|-------|
|content|text|null: false|
|post_id|integer|null: false, foreign_kye: true|
|user_id|integer|null: false, foreign_kye: true|

- belongs_to :user
- belongs_to :post

## likesテーブル
|Colum|Type|Options|
|-----|----|-------|
|post_id|integer|null: false, foreign_kye: true|
|user_id|integer|null: false, foreign_kye: true|

- belongs_to :user
- belongs_to :post

## followersテーブル
|Colum|Type|Options|
|-----|----|-------|
|followers_id|integer|null: false, foreign_kye: true|
|user_id|integer|null: false, foreign_kye: true|

- belongs_to :user