-------------------------
--Lua Sigil	           --
--Written By Andy P.   --
--Icy Viking Games     --
--Lua 5.1              --
--Sigil 0.9.0          --
--Copyright (c) 2023   --
-------------------------

--load the alien library
alien = require("alien")

--Load sigil library

sigil = alien.load("Path to sigil.dll")

--Sigil Flags

SL_ALIGN_CENTER = 0
SL_ALIGN_RIGHT = 1
SL_ALIGN_LEFT = 2

SL_KEY_ESCAPE = 256
SL_KEY_ENTER = 257
SL_KEY_TAB = 258
SL_KEY_BACKSPACE = 259
SL_KEY_INSERT = 260
SL_KEY_DELETE = 261
SL_KEY_RIGHT = 262
SL_KEY_LEFT = 263
SL_KEY_DOWN = 264
SL_KEY_UP = 265
SL_KEY_PAGE_UP = 266
SL_KEY_PAGE_DOWN = 267
SL_KEY_HOME = 268
SL_KEY_END = 269
SL_KEY_CAPS_LOCK = 280
SL_KEY_SCROLL_LOCK = 281
SL_KEY_NUM_LOCK = 282
SL_KEY_PRINT_SCREEN = 283
SL_KEY_PAUSE = 284
SL_KEY_F1 = 290
SL_KEY_F2 = 291
SL_KEY_F3 = 292
SL_KEY_F4 = 293
SL_KEY_F5 = 294
SL_KEY_F6 = 295
SL_KEY_F7 = 296
SL_KEY_F8 = 297
SL_KEY_F9 = 298
SL_KEY_F10 = 299
SL_KEY_F11 = 300
SL_KEY_F12 = 301
SL_KEY_F13 = 302
SL_KEY_F14 = 303
SL_KEY_F15 = 304
SL_KEY_F16 = 305
SL_KEY_F17 = 306
SL_KEY_F18 = 307
SL_KEY_F19 = 308
SL_KEY_F20 = 309
SL_KEY_F21 = 310
SL_KEY_F22 = 311
SL_KEY_F23 = 312
SL_KEY_F24 = 313
SL_KEY_F25 = 314
SL_KEY_KEYPAD_0 = 320
SL_KEY_KEYPAD_1 = 321
SL_KEY_KEYPAD_2 = 322
SL_KEY_KEYPAD_3 = 323
SL_KEY_KEYPAD_4 = 324
SL_KEY_KEYPAD_5 = 325
SL_KEY_KEYPAD_6 = 326
SL_KEY_KEYPAD_7 = 327
SL_KEY_KEYPAD_8 = 328
SL_KEY_KEYPAD_9 = 329
SL_KEY_KEYPAD_DECIMAL = 330
SL_KEY_KEYPAD_DIVIDE = 331
SL_KEY_KEYPAD_MULTIPLY = 332
SL_KEY_KEYPAD_SUBTRACT = 333
SL_KEY_KEYPAD_ADD = 334
SL_KEY_KEYPAD_ENTER = 335
SL_KEY_KEYPAD_EQUAL = 336
SL_KEY_LEFT_SHIFT = 340
SL_KEY_LEFT_CONTROL = 341
SL_KEY_LEFT_ALT = 342
SL_KEY_LEFT_SUPER = 343
SL_KEY_RIGHT_SHIFT = 344
SL_KEY_RIGHT_CONTROL = 345
SL_KEY_RIGHT_ALT = 346
SL_KEY_RIGHT_SUPER = 347

SL_MOUSE_BUTTON_1 = 0
SL_MOUSE_BUTTON_2 = 1
SL_MOUSE_BUTTON_3 = 2
SL_MOUSE_BUTTON_4 = 3
SL_MOUSE_BUTTON_5 = 4
SL_MOUSE_BUTTON_6 = 5
SL_MOUSE_BUTTON_7 = 6
SL_MOUSE_BUTTON_8 = 7
SL_MOUSE_BUTTON_LEFT = SL_MOUSE_BUTTON_1
SL_MOUSE_BUTTON_RIGHT = SL_MOUSE_BUTTON_2
SL_MOUSE_BUTTON_MIDDLE = SL_MOUSE_BUTTON_3

--Init Functions

sigil.slWindow:types(nil, "int","int","string","int")
sigil.slShowCursor:types(nil, "int")
sigil.slClose:types(nil)
sigil.slShouldClose:types("int")

--Input Functions
sigil.slGetKey:types("int", "int")

sigil.slGetMouseButton:types("int", "int")
sigil.slGetMouseX:types("int")
sigil.slGetMouseY:types("int")

--Frame Timing Functions
sigil.slGetDeltaTime:types("double")
sigil.slGetTime:types("double")

--Render Function

sigil.slRender:types(nil)

--Color Functions
sigil.slSetBackColor:types(nil,"double","double","double")
sigil.slSetForeColor:types(nil, "double","double","double","double")

--Blend Function
sigil.slSetAdditiveBlend:types(nil, "int")

--Transformation Functions
sigil.slPush:types(nil)
sigil.slPop:types(nil)

sigil.slTranslate:types(nil, "double","double")
sigil.slRotate:types(nil, "double")
sigil.slScale:types(nil, "double","double")

--Texture Function
sigil.slLoadTexture:types("int", "string")

--Sound Functions
sigil.slLoadWAV:types("int", "string")
sigil.slSoundPlay:types("int", "int")
sigil.slSoundLoop:types("int", "int")
sigil.slSoundPause:types(nil, "int")
sigil.slSoundStop:types(nil, "int")
sigil.slSoundPauseAll:types(nil)
sigil.slSoundResumeAll:types(nil)
sigil.slSoundStopAll:types(nil)
sigil.slSoundPlaying:types("int", "int")
sigil.slSoundLooping:types("int", "int")

--Shape Functions
sigil.slTriangleFill:types(nil, "double", "double","double","double")
sigil.slTriangleOutline:types(nil, "double","double","double","double")

sigil.slRectangleFill:types(nil, "double","double","double","double")
sigil.slRectangleOutline:types(nil, "double","double","double","double")

sigil.slCircleFill:types(nil, "double","double","double","int")
sigil.slCircleOutline:types(nil, "double","double","double","int")

sigil.slSemiCircleFill:types(nil, "double","double","double","int","double")
sigil.slSemiCircleOutline:types(nil, "double","double","double","int","double")

sigil.slPoint:types(nil, "double","double")

sigil.slLine:types(nil, "double","double","double","double")

sigil.slSetSpriteTiling:types(nil, "double","double")
sigil.slSetSpriteScroll:types(nil, "double","double")
sigil.slSprite:types(nil, "int","double","double","double","double")

--Text Functions
sigil.slSetTextAlign:types(nil, "int")
sigil.slGetTextWidth:types("double", "string")
sigil.slGetTextHeight:types("double", "string")
sigil.slLoadFont:types("int", "string")
sigil.slSetFont:types(nil, "int", "int")
sigil.slSetFontSize:types(nil, "int")
sigil.slText:types(nil, "double","double","string")

--Example
sigil.slWindow(640,480,"Hello Sigil",0)

while( sigil.slShouldClose() == 0 ) do

 if (sigil.slGetKey(SL_KEY_ESCAPE) == 1) then
    --causes exit code: 1 but still works
    sigil.slClose()
 end

 sigil.slRender()

end

sigil.slClose()
