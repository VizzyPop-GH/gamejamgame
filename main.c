#include "raylib.h"
#include "main.h"

int main(void)
{
    
    InitWindow(800, 450, "i want to die");
    DisableCursor();


    Camera3D camera = { 0 }; //CREATE OUR FOOKIN CAMERA MATE
    camera.position = (Vector3){ -10.0f, 15.0f, -10.0f };  
    camera.target = (Vector3){ 0.0f, 0.0f, 0.0f };          
    camera.up = (Vector3){ 0.0f, 1.0f, 0.0f };              
    camera.fovy = 45.0f;                                   
    camera.projection = CAMERA_PERSPECTIVE;   // make it perspective like irl real frfr

    while (!WindowShouldClose())
    {
        UpdateCamera(&camera, CAMERA_FIRST_PERSON); //gay sex (real)
        BeginDrawing();
            ClearBackground(RAYWHITE);


            BeginMode3D(camera);


                DrawGrid(1000, MAP_UNIT_SCALAR); //fuckin unit shit


                DrawCubeV((Vector3){ 0.0f, 1.0f, 0.0f }, (Vector3){ 100.0f, 100.0f, 100.0f }, RED);
                DrawCubeWires((Vector3){ 0.0f, 1.0f, 0.0f }, 100.0f, 100.0f, 100.0f, MAROON);


            EndMode3D();


        DrawText("fucking kill yourself", 0, 0, 20, BLACK);

        EndDrawing();
    }
    EnableCursor();

    CloseWindow();

    return 0;
}