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
| birthday        | string | null: false |

### Association

- has_many :items
- has_many :bought_items
- has_many :delivery_adresses


## items テーブル

| Column        | Type    | Options     |
| ------------- | ------- | ----------- |
| image         | text    | null: false |
| item_name     | string  | null: false |
| product       | string  | null: false |
| category      | integer | null: false |
| status        | integer | null: false |
| delivery_fee  | integer | null: false |
| delivery_area | integer | null: false |
| delivery_days | integer | null: false |
| price         | integer | null: false |

### Association

- belongs_to :user


## bought_items テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user_id | references | null: false, foreign_key: true |
| item_id | references | null: false, foreign_key: true |

### Association

- belongs_to :user


## delivery_adresses テーブル

| Column  |      Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user_id      | references | null: false, foreign_key: true |
| item_id      | references | null: false, foreign_key: true |
| zip_code     | integer    | null: false                    |
| prefecture   | integer    | null: false                    |
| city         | string     | null: false                    |
| adress1      | string     | null: false                    |
| adress2      | string     | null: false                    |
| phone_number | integer    | null: false                    |


### Association

- belongs_to :user


<!-- ## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| item    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item -->