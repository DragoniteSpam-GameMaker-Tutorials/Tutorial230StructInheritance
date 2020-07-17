function Animal(_x, _y) constructor {
    x = _x;
    y = _y;
    
    t = 0;
    
    hp = 1;
    
    animal_data = ds_map_create();
    
    method_step = function() {
        // struct instances have their own scope
        x += 2 * dcos(t);
        y -= 2 * dsin(t);
        t += 2;
        
        if (keyboard_check_pressed(vk_anykey)) {
            //method_heal(1);
            method_speak();
        }
    }
    
    method_speak = function() {
        show_message("AAAAaaaaaaaa!");
    }
    
    method_draw = function() {
        draw_circle(x, y, 32, false);
        draw_set_halign(fa_center);
        draw_text(x, y - 50, "HP: " + string(hp));
    }
    
    method_damage = function(_amount) {
        hp -= _amount;
        if (hp <= 0) {
            show_message("aaaaaaaaa!");
        }
    }
    
    method_heal = function(_amount) {
        hp += _amount;
    }
    
    // if you want to call a struct instance's method in the constructor,
    // they must be already defined in the code
    method_heal(10);
}

function Doggo(_x, _y) : Animal(_x, _y) constructor {
    hp = 5;
    
    method_speak = function() {
        show_message("Woof!");
    }
    
    method_draw = function() {
        draw_set_color(c_red);
        draw_rectangle(x - 16, y - 16, x + 16, y + 16, false);
        draw_set_color(c_white);
        draw_set_halign(fa_center);
        draw_text(x, y - 50, "HP: " + string(hp));
    }
}

function Beagle(_x, _y) : Doggo(_x, _y) constructor {
    method_speak = function() {
        show_message("Bark, bark!");
    }
}

animal = new Animal(300, 300);
doggo = new Doggo(500, 500);
beagle = new Beagle(700, 700);