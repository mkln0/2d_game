/// @description Insert description here
// You can write your code in this editor


//control to walk

//not walk
if(!keyboard_check(ord("S")) &&
   !keyboard_check(ord("D")) &&
   !keyboard_check(ord("W")) &&
   !keyboard_check(ord("A")))
   {
	   if(orientation == 0)
	      sprite_index = spr_zhu_right;
	   else
	      sprite_index = spr_zhu_left;
   }

//walk down
else if(keyboard_check(ord("S")) &&
        !keyboard_check(ord("D")) &&
        !keyboard_check(ord("W")) &&
        !keyboard_check(ord("A")))
		{
			if(orientation == 0)
			{
				sprite_index = spr_zhu_right_go;
				y = y + walk_speed;
			}
			else
			{
				sprite_index = spr_zhu_left_go;
				y = y + walk_speed;
			}
		}

//walk up
else if(!keyboard_check(ord("S")) &&
        !keyboard_check(ord("D")) &&
        keyboard_check(ord("W")) &&
        !keyboard_check(ord("A")))
		{
			if(orientation == 0)
			{
				sprite_index = spr_zhu_right_go;
				y = y - walk_speed;
			}
			else
			{
				sprite_index = spr_zhu_left_go;
				y = y - walk_speed;
			}
		}


//walk right
else if(!keyboard_check(ord("S")) &&
        keyboard_check(ord("D")) &&
        !keyboard_check(ord("W")) &&
        !keyboard_check(ord("A")))
		{
			sprite_index = spr_zhu_right_go;
			x = x + walk_speed;
			orientation = 0;
		}

//walk left

else if(!keyboard_check(ord("S")) &&
        !keyboard_check(ord("D")) &&
        !keyboard_check(ord("W")) &&
        keyboard_check(ord("A")))
		{
			sprite_index = spr_zhu_left_go;
			x = x - walk_speed;
			orientation = 1;
		}

//walk right and up
else if(!keyboard_check(ord("S")) &&
        keyboard_check(ord("D")) &&
        keyboard_check(ord("W")) &&
        !keyboard_check(ord("A")))
		{
			sprite_index = spr_zhu_right_go;
			x = x + walk_speed;
			y = y - walk_speed;
			orientation = 0;
		}

//walk right and down
else if(keyboard_check(ord("S")) &&
        keyboard_check(ord("D")) &&
        !keyboard_check(ord("W")) &&
        !keyboard_check(ord("A")))
		{
			sprite_index = spr_zhu_right_go;
			x = x + walk_speed;
			y = y + walk_speed;
			orientation = 0;
		}

// walk left and up
else if(!keyboard_check(ord("S")) &&
        !keyboard_check(ord("D")) &&
        keyboard_check(ord("W")) &&
        keyboard_check(ord("A")))
		{
			sprite_index = spr_zhu_left_go;
			x = x - walk_speed;
			y = y - walk_speed;
			orientation = 1;
		}

//walk left and down
else if(keyboard_check(ord("S")) &&
        !keyboard_check(ord("D")) &&
        !keyboard_check(ord("W")) &&
        keyboard_check(ord("A")))
		{
			sprite_index = spr_zhu_left_go;
			x = x - walk_speed;
			y = y + walk_speed;
			orientation = 1;
		}

//else

//control to walk end


//draw panel
with(obj_zhu_panel)
{
	hp = obj_zhu.hp;
	force = obj_zhu.force;
	walk_speed = obj_zhu.walk_speed;
}

//draw panel end


//jineng z
if(keyboard_check(ord("1")) && z_cooldown >= 50){
	instance_create_depth(x, y, -1, obj_jineng_z);
	z_cooldown = 0;
}

//step recool z jineng
z_cooldown = z_cooldown + 1;

//jineng z end


//jineng x
if(keyboard_check(ord("2")) && x_cooldown >= 50){
	instance_create_depth(x, y, -1, obj_jineng_x);
	x_cooldown = 0;
}

//step recool x jineng
x_cooldown = x_cooldown + 1;

//jineng x end


