# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| nikename   | string | null: false |
| email      | string | null: false |
| password   | string | null: false |
| name_kanzi | string | null: false |
| name_kana  | string | null: false |
| birthday   | string | null: false |

### Association

- has_many :items
- has_many :comments


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
| price         | string  | null: false |

### Association

- belongs_to :user
- has_many :comments


## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| item    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item