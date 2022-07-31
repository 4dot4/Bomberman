
const rl = @import("raylib");

pub fn main() anyerror!void {
    // Initialization
    //--------------------------------------------------------------------------------------
    const screenWidth = 800;
    const screenHeight = 450;

    rl.InitWindow(screenWidth, screenHeight, "raylib-zig [core] example - basic window");

    rl.SetTargetFPS(60); // Set our game to run at 60 frames-per-second
    //--------------------------------------------------------------------------------------
    const class = enum (u8) {grass,block,wall};
    
    const map:[10][10]u8 = [10][10]u8{
        u8{2,2,2,2,2,2,2,2,2,2},
        u8{2,0,0,0,0,0,0,0,0,2},
        u8{2,0,0,0,0,0,0,0,0,2},
        u8{2,0,0,0,0,0,0,0,0,2},
        u8{2,0,0,0,0,0,0,0,0,2},
        u8{2,0,0,0,0,0,0,0,0,2},
        u8{2,0,0,0,0,0,0,0,0,2},
        u8{2,0,0,0,0,0,0,0,0,2},
        u8{2,0,0,0,0,0,0,0,0,2},
        u8{2,2,2,2,2,2,2,2,2,2},

    };

    // Main game loop
    while (!rl.WindowShouldClose()) { // Detect window close button or ESC key
        // Update
        //----------------------------------------------------------------------------------
        // TODO: Update your variables here
        //----------------------------------------------------------------------------------

        // Draw
        //----------------------------------------------------------------------------------
        rl.BeginDrawing();

        rl.ClearBackground(rl.WHITE);

        rl.DrawText("Congrats! You created your first window!", 190, 200, 20, rl.LIGHTGRAY);

        rl.EndDrawing();
        //----------------------------------------------------------------------------------
    }

    // De-Initialization
    //--------------------------------------------------------------------------------------
    rl.CloseWindow(); // Close window and OpenGL context
    //--------------------------------------------------------------------------------------
}
