inventory = ds_list_create();

var item_pocket_swords = {
    name: "Swords",
    contents: ds_list_create(),
};

ds_list_add(inventory, item_pocket_swords);

var item_sword = {
    name: "sword",
    quantity: 1,
};

var item_big_sword = {
    name: "big sword",
    quantity: 3
};

var item_pizza = {
    name: "pizza",
    quantity: 50
};

var item_bacon = {
    name: "bacon",
    quantity: 25
};

var item_candy = {
    name: "candy",
    quantity: 1500
};

ds_list_add(item_pocket_swords.contents, item_sword, item_big_sword);

var item_pocket_food = {
    name: "Food",
    contents: ds_list_create(),
};

ds_list_add(inventory, item_pocket_food);

ds_list_add(item_pocket_food.contents, item_pizza, item_bacon, item_candy);

var item_pocket_hats = {
    name: "Hats",
    contents: ds_list_create(),
};

ds_list_add(inventory, item_pocket_hats);

var item_hat = {
    name: "Plain Hat",
    quantity: 1,
};

var item_fancy_hat = {
    name: "fancy hat",
    quantity: 3
};

var item_dapper_hat = {
    name: "dapper hat",
    quantity: 50
};

var item_pirate_hat = {
    name: "pirate hat",
    quantity: 25
};

var item_bucket_hat = {
    name: "bucket hat",
    quantity: 1500
};

ds_list_add(item_pocket_hats.contents, item_hat, item_fancy_hat, item_dapper_hat, item_pirate_hat, item_bucket_hat);