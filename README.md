# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

# README

## users table

### ユーザー

|     Column      |    Type    |         Options          |
| :-------------: | :--------: | :----------------------: |
|    nickname     |   string   |       null: false        |
|      email      |   string   | null:false, unique: true |
|    password     |   string   |        null:false        |
|    last_name    |   string   |        null:false        |
|   first_name    |   string   |        null:false        |
| last_name_kana  |   string   |        null:false        |
| first_name_kana |   string   |        null:false        |
|    birthday     |    date    |        null:false        |
|   postal_code   |   string   |                          |
|    region_id    | references |     foreign_key:true     |
|     address     |   string   |                          |
|    building     |   string   |                          |
|  phone_number   |   string   |        null:false        |

### Association

- belongs_to :credit, dependent: :destroy
- belongs_to :address, dependent: :destroy
- belongs_to :profile, dependent: :destroy
- belongs_to :region, optional: true
- has_many :favorites
- has_many :comments
- has_many :items, foreign_key: "saler_id", class_name: "Item"
- has_many :items, foreign_key: "buyer_id", class_name: "Item"

## profile table

### プロフィール

| Column  |    Type    |     Options      |
| :-----: | :--------: | :--------------: |
|  text   |    text    |                  |
| user_id | references | foreign_key:true |

### Association

- belongs_to :user

## addresses table

### 住所

|     Column      |    Type    |     Options      |
| :-------------: | :--------: | :--------------: |
|    last_name    |   string   |    null:false    |
|   first_name    |   string   |    null:false    |
| last_name_kana  |   string   |    null:false    |
| first_name_kana |   string   |    null:false    |
|   postal_code   |   string   |    null:false    |
|   regions_id    | references | foreign_key:true |
|     address     |   string   |    null:false    |
|    building     |   string   |                  |
|  phone_number   |  integer   |                  |
|     user_id     | references | foreign_key:true |

### Association

- belongs_to :user
- belongs_to :region

## credits table

### クレジットカード

|        Column         |    Type    |     Options      |
| :-------------------: | :--------: | :--------------: |
|        number         |    ★★★     |    null:false    |
| expiration_date_month |  integer   |    null:false    |
| expiration_date_year  |  integer   |    null:false    |
|     security_code     |  integer   |    null:false    |
|        user_id        | references | foreign_key:true |

### Association

- belongs_to :user

## items table

### 商品

|     Column      |    Type    |     Options      |
| :-------------: | :--------: | :--------------: |
|      name       |   string   |    null:false    |
|      text       |    text    |    null:false    |
|   category_id   | references | foreign_key:true |
|     size_id     | references | foreign_key:true |
|    brand_id     | references | foreign_key:true |
|  condition_id   | references | foreign_key:true |
|     postage     |  boolean   |    null:false    |
| delivery_way_id | references | foreign_key:true |
|    region_id    | references | foreign_key:true |
| delivery_day_id | references | foreign_key:true |
|      price      |  integer   |    null:false    |
|    saler_id     | references | foreign_key:true |
|    buyer_id     | references | foreign_key:true |
|    status_id    | references | foreign_key:true |
|      state      |  boolean   |    null:false    |

### Association

- belongs_to saler, class_name: "User"
- belongs_to buyer, class_name: "User"
- has_many :images, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :favorites, dependent: :destroy
- belongs_to :region
- belongs_to :category
- belongs_to :brand, optional: true

## images table

### 商品

|       Column       |       Type       |  Options   |
| :----------------: | :--------------: | :--------: |
|       image        |      string      | null:falss |
| item_id]references | foreign_key:true |

### Association

- belongs_to :item

## categories table

### 商品

|  Column  |  Type  |  Options   |
| :------: | :----: | :--------: |
|   name   | string | null:false |
| ancestry | string |            |

### Association

- has_many :items

#### Gem ancestry 使用

## brands table

### 商品

| Column |  Type  |  Options   |
| :----: | :----: | :--------: |
|  name  | string | null:false |

### Association

- has_many :items

## conditions table

### 商品の状態

| Column |  Type  |  Options   |
| :----: | :----: | :--------: |
|  name  | string | null:false |

### Association

- has_nany :items

## delivery_days table

### 発送までの日数

| Column |  Type  |  Options   |
| :----: | :----: | :--------: |
|  day   | string | null:false |

### Association

- has_many :items

## delivery_ways table

### 配送方法

| Column |  Type  |  Options   |
| :----: | :----: | :--------: |
|  name  | string | null:false |

### Association

- has_many :items

## sizes table

### サイズ

| Column |  Type  |  Options   |
| :----: | :----: | :--------: |
|  name  | string | null:false |

### Association

- has_many :items

## regions table

### 都道府県

| Column |  Type  |  Options   |
| :----: | :----: | :--------: |
|  name  | string | null:false |

### Association

- has_many :addresses
- has_many :items

## comments table

### コメント

|       Column       |       Type       | Options |
| :----------------: | :--------------: | :-----: |
| item_id]references | foreign_key:true |
| user_id]references | foreign_key:true |
|        text        |       text       |         |

### Association

- belongs_to :item
- belongs_to :user

## favorites table

### いいね

|       Column       |       Type       | Options |
| :----------------: | :--------------: | :-----: |
| item_id]references | foreign_key:true |
| user_id]references | foreign_key:true |

- belongs_to :item
- belongs_to :user
