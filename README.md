# README

<!-- This README would normally document whatever steps are necessary to get the
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

* ... -->

## 【アプリ名】　
PEP (ペップ)
<br>
Present Everything to Peopleの略です。（あらゆるものを人々へ提示する）
<br>
また、英語で「～を元気づける、活気づかせる」という意味の「pep up」があり、記事を読んで元気になったり、前向きな気持ちになって欲しいという思いもあります。
<br>
そして、名前がパ行だと可愛くて親しみを持ってもらえるかもしれない。という思いもあります。

## 【概要】
新規登録&ログインすることで自由に記事を投稿、編集することが可能です。
<br>
書かれた記事に対してコメントすることも可能です。
<br>
様々な方の書く記事を閲覧することが可能です。（閲覧は新規登録、ログイン不要）

## 【本番環境】

http://3.115.36.227/
<br>

【ログイン用テストアカウント】
<br>
・メールアドレス: test@test
<br>
・パスワード: aiueo1
<br>
・アカウント名: テスト太郎

## 【制作背景】(意図)
私は、様々な価値観を提供してくれる本や、記事、動画等を見て「こんな世界があるのか」「知らなかった。勉強になった」と考えることが多かったので、「私も記事を作成し、発信できるサイトを作りたい」と考えたのがきっかけでした。
<br>
何か新しい考えを知りたい人や、自分の考えを発信したい人に、そんな環境を用意したい。その思い出作成しました。


## 【工夫したポイント】
シンプルな見た目ですっきりとしたデザインを意識しました。
<br>
![PEP_トップページ](https://user-images.githubusercontent.com/60679433/85118487-5ff6cf80-b25b-11ea-950f-5a30e6f495c8.jpg)
<br>
https://gyazo.com/3e265ed85002b242ee230613958ddd1d
<br>
トップページ画像は直感的にサイトのイメージが伝わるように意識しました。
<br>
トップページに文字を加え、より確かにサイトの利用方法をイメージできるようにしました。
<br>
トップページの三段構成の画像は一定時間で消え、また違う画像が洗われるようにアニメーションを作成しました。
<br>
GIF画像↓
<br>
https://gyazo.com/a6871e32e52d32819f258f26c97c2c81
<br>
レスポンシブデザインも対応しております。
<br>
GIF画像↓
<br>
https://gyazo.com/e01179ac540cccb325a16071dc9491d2

## 【使用技術】
HTML/Haml
<br>
CSS/SCSS
<br>
Ruby/RubyOnRails
<br>
Mysql


## 【課題や今後実装したい機能】
マイページの背景画像設定
<br>
画像をクリックして記事に飛ぶようにする
<br>
ユーザーにプロフィール画像を追加できるようにする
<br>
ユーザー情報を記述できるようにする
<br>

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