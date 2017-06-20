/// @description Initialize Camera
width = 1024;
height = 768;

mainCamera = camera_create_view(x,y, width, height, 0, self, -1, -1, width / 2, height / 2);
view_camera[0] = mainCamera;
