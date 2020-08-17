# テーブル設計

## users テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| nikename        | string | null: false |
| email           | string | null: false |
| password        | string | null: false |
| last_name       | string | null: false |
| first_name      | string | null: false |
| last_name_kana  | string | null: false |
| first_name_kana | string | null: false |
| birthday        | date   | null: false |

### Association

- has_many :items
- has_many :bought_items


## items テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user_id       | references | null: false, foreign_key: true |
| image         | string     | null: false                    |
| name          | string     | null: false                    |
| product       | text       | null: false                    |
| category      | integer    | null: false                    |
| status        | integer    | null: false                    |
| delivery_fee  | integer    | null: false                    |
| delivery_area | integer    | null: false                    |
| delivery_days | integer    | null: false                    |
| price         | integer    | null: false                    |

### Association

- belongs_to :user
- has_one :bougth_item


## bought_items テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| item    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one : delivery_adress


## delivery_adresses テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| bought_item    | references | null: false, foreign_key: true |
| zip_code       | string     | null: false                    |
| prefecture     | integer    | null: false                    |
| city           | string     | null: false                    |
| adress1        | string     | null: false                    |
| adress2        | string     | null: false                    |
| phone_number   | string     | null: false                    |

### Association

- belongs_to :bought_item



<!-- ## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| item    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item -->