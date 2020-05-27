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

## 【アプリ名】　
PEP (ペップ)
Present Everything to Peopleの略です。（あらゆるものを人々へ提示する）
また、英語で「～を元気づける、活気づかせる」という意味の「pep up」があり、記事を読んで元気になったり、前向きな気持ちになって欲しいという思いもあります。
そして、名前がパ行だと可愛くて親しみやすいかな・・・という思いもあります。

## 【概要】
新規登録&ログインすることで自由に記事を投稿、編集することが可能です。
書かれた記事に対してコメントすることも可能です。
様々な方の書く記事を閲覧することが可能です。（閲覧は新規登録、ログイン不要）

## 【本番環境】

http://3.115.36.227/

【ログイン用テストアカウント】
・メールアドレス: test@test
・パスワード: aiueo1
・アカウント名: テスト太郎

## 【制作背景】(意図)
私は、様々な価値観を提供してくれる本や、記事、動画等を見て「こんな世界があるのか」「知らなかった。勉強になった」と考えることが多かったので、「私も記事を作成し、発信できるサイトを作りたい」と考えたのがきっかけでした。
何か新しい考えを知りたい人や、自分の考えを発信したい人に、そんな環境を用意したい。その思い出作成しました。


## 【工夫したポイント】
シンプルな見た目ですっきりとしたデザインを意識しました。
トップページ画像は直感的にサイトのイメージが伝わるように意識しました。
トップページに文字を加え、より確かにサイトの利用方法をイメージできるようにしました。

## 【使用技術】
HTML/Haml
CSS/SCSS
Ruby/RubyOnRails
Mysql


## 【課題や今後実装したい機能】
マイページの背景画像設定
画像をクリックして記事に飛ぶようにする
ユーザーにプロフィール画像を追加できるようにする
ユーザー情報を記述できるようにする
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