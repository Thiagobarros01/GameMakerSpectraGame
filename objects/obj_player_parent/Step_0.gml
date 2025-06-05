/// @description Player movement with touch controls

// --- CONTROLES POR TOQUE (adicionar no início do Step Event) ---
var touch_x = device_mouse_x_to_gui(0);
var touch_y = device_mouse_y_to_gui(0);
var is_touching = device_mouse_check_button(0, mb_left);

// Reset movimento horizontal (use sua variável existente)
horizontal_speed = 0;

// Se está tocando a tela
if (is_touching) {
    // Toque na direita (últimos 30% da tela) - mover direita
    if (touch_x > display_get_gui_width() * 0.7) {
        horizontal_speed = 2; // Valor exemplo - substitua pelo que você usa
    }
    // Toque na esquerda (primeiros 30% da tela) - mover esquerda
    else if (touch_x < display_get_gui_width() * 0.3) {
        horizontal_speed = -2; // Valor exemplo - substitua pelo que você usa
    }
    // Toque no topo (20% superior) - pular
    if (touch_y < display_get_gui_height() * 0.2 && place_meeting(x, y+1, obj_solid)) {
        vertical_speed = -6; // Valor exemplo - substitua pelo que você usa
    }
}


/// Checks if there's collision with the obj_solid
if (check_collision(obj_solid))
{
    image_speed = 1;
} 
else
{
    image_speed = 0;
    image_index = 0;
    vertical_speed += grav;
}

///Vertical collision
if (!obj_game_manager.player_dead)
{
    if (place_meeting(x,y+vertical_speed,obj_solid))
    {
        while (!place_meeting(x,y+sign(vertical_speed),obj_solid))
        {
            y += sign(vertical_speed);
        }
        
        vertical_speed = 0;
        instance_create_depth(x,y,depth+1,obj_smoke_fall);
    }
}

y += vertical_speed;
x += horizontal_speed;
x = clamp(x,10,room_width-10);

if (obj_game_manager.player_dead)
{
    image_angle += dead_degrees;
}

if(smoke_cooldown > 0)
{
    smoke_cooldown--;
}