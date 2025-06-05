// Controles touch
touch_left = false;
touch_right = false;
touch_jump = false;
touch_attack = false;


var _jump_pressed_this_frame = false;
var _attack_pressed_this_frame = false;
// Iterar por todos os toques possíveis (ex: até 5 dedos)
var _max_touches = 5;
for (var i = 0; i < _max_touches; i++)
{
    // Verificar se este dedo está pressionando a tela
    if (device_mouse_check_button(i, mb_left))
    {
        var _touch_x = device_mouse_x_to_gui(i); // Usar coordenadas GUI
        var _touch_y = device_mouse_y_to_gui(i);

        // Verificar área Esquerda
        if (_touch_x >= left_area[0] && _touch_x < left_area[2] && _touch_y >= left_area[1] && _touch_y < left_area[3])
        {
            touch_left = true;
        }

        // Verificar área Direita
        if (_touch_x >= right_area[0] && _touch_x < right_area[2] && _touch_y >= right_area[1] && _touch_y < right_area[3])
        {
            touch_right = true;
        }
    }

    // Verificar Pulo (apenas no frame em que foi pressionado)
    if (device_mouse_check_button_pressed(i, mb_left))
    {
        var _touch_x = device_mouse_x_to_gui(i);
        var _touch_y = device_mouse_y_to_gui(i);

        if (_touch_x >= jump_area[0] && _touch_x < jump_area[2] && _touch_y >= jump_area[1] && _touch_y < jump_area[3])
        {
            _jump_pressed_this_frame = true;
        }

        // Verificar Ataque (apenas no frame em que foi pressionado)
        if (_touch_x >= attack_area[0] && _touch_x < attack_area[2] && _touch_y >= attack_area[1] && _touch_y < attack_area[3])
        {
            _attack_pressed_this_frame = true;
        }
    }
}

// Atualizar as variáveis de estado para pulo/ataque (simulando KeyPress/MouseClick)
touch_jump = _jump_pressed_this_frame;
touch_attack = _attack_pressed_this_frame;

// Áreas dos botões (ajuste conforme necessidade)
left_area = [0, room_height-200, 200, room_height];  // x1,y1,x2,y2
right_area = [200, room_height-200, 400, room_height];
jump_area = [room_width-200, room_height-200, room_width, room_height];
attack_area = [room_width-100, 100, room_width, 200];