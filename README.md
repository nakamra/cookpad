Database Design

-

### recipes table

|    column   |  type   |                   key                   |
|:-----------:|:-------:|:---------------------------------------:|
| name        | string  | null: false , unique: true              |
| picture     | string  |                                         |
| copy        | text    |                                         |
| category_id | integer |t.references :category, foreign_key: true|
| user_id  | integer |t.references :user, foreign_key: true |

### directions table

|      column      |  type   |                  key                    |
|:----------------:|:-------:|:---------------------------------------:|
| body             | text    |                                         |
| image            | string  |                                         |
| direction_number | integer | null:false                              |
| recipe_id        | integer | t.references :recipe, foreign_key: true |

### categorys table

| column|  type  |    key     |
|:-----:|:------:|:----------:|
| name  | string | null:false |


### categorys_recipes table

|    column   |   type  |                 key                     |
|:-----------:|:-------:|:---------------------------------------:|
| recipe_id   | integer |t.references :recipe, foreign_key: true  |
| category_id | integer |t.references :category, foreign_key: true|


### users table

|  column  |  type  |  key  |
|:--------:|:------:|:-----:|
| nickname | text   | null: false, unique: true |
| thumbnail| string |                           |
| e-mail   | string | null: false, unique: true |
| password | string | null: false|
