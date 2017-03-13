Database Design
-
### recipes table

| column     | type    | key                                                  |
|:----------:|:-------:|:----------------------------------------------------:|
| name       | string  | null: false                                          |
| picture    | string  |                                                      |
| copy       | text    |                                                      |
| kitchen_id | integer | t.references :kitchen, foreign_key: true                |
|            |         | add_index :recipes,  [:user_id, :name], unique: true |

### steps table

| column               | type    | key                                     |
|:--------------------:|:-------:|:---------------------------------------:|
| body                 | string  | limit: 60                               |
| image                | string  |                                         |
| step_position_number | integer | null:false                              |
| recipe_id            | integer | t.references :recipe, foreign_key: true |

### ingredients table

| column    | type    | key                                     |
|:---------:|:-------:|:---------------------------------------:|
| name      | string  | add_index :ingredients, :name           |
| quantity  | string  | add_index :ingredients, :quantity       |
| recipe_id | integer | t.references :recipe, foreign_key: true |

### kitchens(users) table

| column    | type   | key                                                    |
|:---------:|:------:|:------------------------------------------------------:|
| nickname  | string | null: false, add_index :users, :nickname, unique: true |
| thumbnail | string |                                                        |
| e-mail    | string | null: false, add_index :users, :e-mail, unique: true   |
| password  | string | null: false                                            |
