
const rl = @import("raylib");

pub fn main() anyerror!void {
    // Initialization
    //--------------------------------------------------------------------------------------
    const screenWidth = 800;
    const screenHeight = 800;

    rl.InitWindow(screenWidth, screenHeight, "raylib-zig [core] example - basic window");

    rl.SetTargetFPS(60); // Set our game to run at 60 frames-per-second
    //--------------------------------------------------------------------------------------
    //const types = enum (u8) {grass,rock,wall};
    const block = struct { 
        
        
        rect : rl.Rectangle = .{
            .x = undefined,
            .y = undefined,
            .width = 80,
            .height = 80,
        },
        color :rl.Color,
        state : bool = true,

    };
    const map:[10][10]u8 = [10][10]u8{
        [10]u8{2,2,2,2,2,2,2,2,2,2},
        [10]u8{2,0,0,0,1,1,0,0,0,2},
        [10]u8{2,0,0,0,1,1,0,0,0,2},
        [10]u8{2,0,0,0,1,1,0,0,0,2},
        [10]u8{2,1,1,1,1,1,1,1,1,2},
        [10]u8{2,1,1,1,1,1,1,1,1,2},
        [10]u8{2,0,0,0,1,1,0,0,0,2},
        [10]u8{2,0,0,0,1,1,0,0,0,2},
        [10]u8{2,0,0,0,1,1,0,0,0,2},
        [10]u8{2,2,2,2,2,2,2,2,2,2},

    };


    // Main game loop
    while (!rl.WindowShouldClose()) { // Detect window close button or ESC key
    
        var blocks = [3]block{
            block{.color = rl.WHITE},
            block{.color = rl.GRAY},
            block{.color = rl.BLACK},
        };
        
        rl.BeginDrawing();

        rl.ClearBackground(rl.ORANGE);

        for (map) |valueY,indexY| {
            for(valueY) |valueX,indexX| {
                blocks[valueX].rect.x = @intToFloat(f32,indexX) * 80;
                blocks[valueX].rect.y = @intToFloat(f32,indexY) * 80;
                rl.DrawRectangleRec(blocks[valueX].rect,
                                    blocks[valueX].color);
            }
        }

        rl.EndDrawing();
        //----------------------------------------------------------------------------------
    }

    // De-Initialization
    //--------------------------------------------------------------------------------------
    rl.CloseWindow(); // Close window and OpenGL context
    //--------------------------------------------------------------------------------------
}
