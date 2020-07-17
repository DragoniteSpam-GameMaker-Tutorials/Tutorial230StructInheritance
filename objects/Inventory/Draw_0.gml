draw_text(160, 160, "Inventory");

for (var i = 0; i < ds_list_size(inventory); i++) {
    var item_pocket = inventory[| i];
    draw_text(160 + 160 * i, 192, item_pocket.name);
    for (var j = 0; j < ds_list_size(item_pocket.contents); j++) {
        var item_stack = item_pocket.contents[| j];
        draw_text(160 + 160 * i, 224 + j * 32, item_stack.name + " x " + string(item_stack.quantity));
    }
}