/// @description Insert description here
// You can write your code in this editor

//sprite orientation 0==right 1==left
orientation = 0

//zhu's attrabute
walk_speed = 3
force = 10
hp = 50

//jineng_z cooldown
z_cooldown = 50

//jineng_x cooldown
x_cooldown = 50

//create dao
instance_create_depth(x, y, -1, obj_dao);

//cretat zhu_panel
instance_create_depth(x, y, -1, obj_zhu_panel);
