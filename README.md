# README

## users table

### ユーザー

|     Column     |  Type  |         Options          |
| :------------: | :----: | :----------------------: |
|    nickname    | string |       null: false        |
|     email      | string | null:false, unique: true |
|    password    | string |        null:false        |
|   last_name    | string |        null:false        |
|   first_name   | string |        null:false        |
| last_name_kana | string |        null:false        |
|first_name_kana | string |        null:false        |
|   birth_year   | string |        null:false        |
|   birth_month  | string |        null:false        |
|   birth_day    | string |        null:false        |
|  phone_number  |integer |        null:false        |
### Association

- has_one :credit, dependent: :destroy
- has_one :address, dependent: :destroy
- has_one :shipping_address, dependent: :destroy
- has_one :profile, dependent: :destroy
- has_many :favorites
- has_many :comments
- has_many :items, foreign_key: "saler_id", class_name: "Item"
- has_many :items, foreign_key: "buyer_id", class_name: "Item"
- has_many :sns_credential

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
|    region_id    | references | foreign_key:true |
|     address     |   string   |    null:false    |
|    building     |   string   |                  |
|     user_id     | references | foreign_key:true |

### Association

- belongs_to :user
- belongs_to_active_hash :region

## shipping_addresses table

### お届け先住所

|     Column      |    Type    |     Options      |
| :-------------: | :--------: | :--------------: |
|   postal_code   |   string   |    null:false    |
|    region_id    | references | foreign_key:true |
|     address     |   string   |    null:false    |
|    building     |   string   |                  |
|  building_pone  |   string   |                  |
|      city       |   string   |    null:false    |
|     user_id     | references | foreign_key:true |

### Association

- belongs_to :user
- belongs_to_active_hash :region

## credits table

### クレジットカード

|        Column         |    Type    |     Options      |
| :-------------------: | :--------: | :--------------: |
|        number         |   string   |    null:false    |
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
|      state      |  boolean   |    null:false    |

### Association

- belongs_to saler, class_name: "User"
- belongs_to buyer, class_name: "User"
- has_many :images, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :favorites, dependent: :destroy
- belongs_to_active_hash :region
- belongs_to :category
- belongs_to :brand, optional: true

## images table

### 商品画像

| Column  |    Type    |     Options      |
| :-----: | :--------: | :--------------: |
|  image  |   string   |    null:falss    |
| item_id | references | foreign_key:true |

### Association

- belongs_to :item

## categories table

### 商品カテゴリー

|  Column  |  Type  |  Options   |
| :------: | :----: | :--------: |
|   name   | string | null:false |
| ancestry | string |            |

### Association

- has_many :items

#### Gem ancestry 使用

## brands table

### ブランド

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

## comments table

### コメント

| Column  |    Type    |     Options      |
| :-----: | :--------: | :--------------: |
| item_id | references | foreign_key:true |
| user_id | references | foreign_key:true |
|  text   |    text    |                  |

### Association

- belongs_to :item
- belongs_to :user

## favorites table

### いいね

| Column  |    Type    |     Options      |
| :-----: | :--------: | :--------------: |
| item_id | references | foreign_key:true |
| user_id | references | foreign_key:true |

- belongs_to :item
- belongs_to :user

###  sns_credentials

|  Column  |   Type   |     Options      |
|  :-----: | :------: | :--------------: |
| provider |  string  |    null:false    |
|    uid   |  string  |    null:false    |
| user_id  |  bigint  | foreign_key:true |


- belongs_to :user



Column	Type	Options
uid	string	null: false
provider	string	null: false
Association
belongs_to :user