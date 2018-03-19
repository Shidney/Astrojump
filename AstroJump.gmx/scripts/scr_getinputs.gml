///Get player Inputs

//---------------

var jump_triggered = false;
if(!global.pause)
{
jump_triggered = keyboard_check(vk_space) or joystick_check_button(1, 3) or gamepad_button_check(0, gp_face1);

if (jump_triggered)
{
    key_jump = max(1, key_jump+1);
}
else
{
    key_jump = min(-1, key_jump-1);
}
}
//---------------

var attack_triggered = false;

attack_triggered = keyboard_check(vk_lcontrol) or joystick_check_button(1, 2) or gamepad_button_check(0, gp_face2);

if (attack_triggered)
{
    key_attack = max(1, key_attack+1);
}
else
{
    key_attack = min(-1, key_attack-1);
}

//---------------
var inventory_triggered = keyboard_check(ord('I'))or joystick_check_button(1,10) or gamepad_button_check(0,gp_start);
if (inventory_triggered)
{
    key_inventory = max(1, key_inventory+1);
}
else
{
    key_inventory = min(-1, key_inventory-1);
}
//---------------
var useSelected_triggered = keyboard_check(ord('Z')) or joystick_check_button(1,1) or gamepad_button_check(0,gp_face3);
if (useSelected_triggered)
{
    key_useSelected = max(1, key_useSelected+1);
}
else
{
    key_useSelected = min(-1, key_useSelected-1);
}

//----------------
var pick_triggered=keyboard_check(ord('X'))or joystick_check_button(1,4) or joystick_check_button(1,3) or gamepad_button_check(0,gp_face4);
if (pick_triggered)
{
    key_pick = max(1, key_pick+1);
}
else
{
    key_pick = min(-1, key_pick-1);
}

//----------------
//wasd = UP-LEFT-DOWN-RIGHT Movement
if(!instance_exists(obj_inventory))
{ 
key_right = keyboard_check(vk_right) || joystick_direction(1)==vk_numpad6 ;
key_left = keyboard_check(vk_left)||joystick_direction(1)==vk_numpad4;
key_up = keyboard_check(vk_up)||joystick_direction(1)==vk_numpad8;
key_down = keyboard_check(vk_down)||joystick_direction(1)==vk_numpad2;
}
else
{
 with(obj_inventory)
 {
 key_right = keyboard_check_released(vk_right) || joystick_direction(1)==vk_numpad6 ;
 key_left = keyboard_check_released(vk_left)||joystick_direction(1)==vk_numpad4;
 key_up = keyboard_check_released(vk_up)||joystick_direction(1)==vk_numpad8;
 key_down = keyboard_check_released(vk_down)||joystick_direction(1)==vk_numpad2;
          if(key_left)
          {
         if(cursor_h ==0)
         {
            cursor_h=3;
         }
         else
         {
            cursor_h--;
         }
         }
         if(key_right)
         {
         if(cursor_h ==3)
         {
            cursor_h=0;
         }
         else
         {
            cursor_h++;
         }
         }
         if(key_up){
         if(cursor_v ==0)
         {
            cursor_v=3;
         }
         else
         {
            cursor_v--;
         }
         }
         if(key_down)
         {
         if(cursor_v ==3)
         {
            cursor_v=0;
         }
         else
         {
            cursor_v++;
         }     
         }
 }
}

if(key_attack==1 &&!jumping)
{
    if (state == states.normal && vsp==0) state=states.attack; 
         near_tree=instance_nearest(x,y,obj_tree);
         if(near_tree!=noone)
         {
           near_fruit=instance_nearest(x,y,obj_fruit);
          if(near_fruit!=noone)
          {
            src_pickfruit(near_tree,near_fruit);
          }
         } 
         near_machine=instance_nearest(x,y,obj_basic_machine);
         if(near_machine!=noone)
         {       
            near_machine.active=!near_machine.active;
            if(near_machine.connectedTo!=noone)
            {
                 scr_audioController("beep",noone);
            }
         }
}

if(key_inventory==1 && !jumping)
{
     if(!global.pause)
         {
            room_speed=10;
            instance_create(0,0,obj_inventory);               
            global.pause=1;
         }
         else
         {      
                room_speed=60;      
            instance_destroy(obj_inventory)      
            global.pause=0;
         }
}

if(key_useSelected==1)
{
 scr_useSelected();
}
if(key_pick==1)
{
    if(global.pause==0)
         {
            if(global.take==0)
            {
                global.take=1;
                alarm[0]=10;
            }
            } 
            else
            {
                with(obj_inventory)
                {
                scr_Equip();
                }
            }
}
