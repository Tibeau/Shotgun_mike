camWidth = 320;
camHeight = 180;

surface_resize(application_surface, camWidth+1, camHeight+1);
application_surface_draw_enable(false);

follow = obj_player;

xTo = follow.x;
yTo = follow.y;