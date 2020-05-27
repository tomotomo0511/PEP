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

## 【アプリ名】　PEP

## 【概要】(このアプリでできること)

## 【本番環境】(デプロイ先　テストアカウント＆ID)

## 【制作背景】(意図)どんな課題や不便なことを解決するためにこのアプリを作ったのか。

## 【工夫したポイント】

## 【使用技術】(開発環境)

## 【課題や今後実装したい機能】

## 【DB設計】

## usersテーブル
|Colum|Type|Options|
|-----|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|paswwprd|string|null:false|

- has_many :posts
- has_many :comments


## postsテーブル
|Colum|Type|Options|
|-----|----|-------|
|title|text|null: false|
|content|text|null ;false|
|image|text||

- belongs_to :user
- has_many :comments

## commentsテーブル
|Colum|Type|Options|
|-----|----|-------|
|content|text|null: false|
|post_id|integer|null: false, foreign_kye: true|
|user_id|integer|null: false, foreign_kye: true|

- belongs_to :user
- belongs_to :post