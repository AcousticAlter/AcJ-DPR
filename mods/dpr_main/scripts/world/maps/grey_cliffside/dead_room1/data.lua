return {
  version = "1.9",
  luaversion = "5.1",
  tiledversion = "1.9.0",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 20,
  height = 24,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 12,
  nextobjectid = 50,
  properties = {
    ["music"] = "demonic_little_grey_cliffs"
  },
  tilesets = {
    {
      name = "cliffs",
      firstgid = 1,
      filename = "../../../tilesets/cliffs.tsx",
      exportfilename = "../../../tilesets/cliffs.lua"
    }
  },
  layers = {
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "objects_bg",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 28,
          name = "glitch_bg",
          class = "",
          shape = "rectangle",
          x = 520,
          y = 560,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "objects_glass",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 29,
          name = "voidglass",
          class = "",
          shape = "rectangle",
          x = 200,
          y = 540,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 30,
          name = "voidglass",
          class = "",
          shape = "rectangle",
          x = 160,
          y = 540,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 33,
          name = "voidglass",
          class = "",
          shape = "rectangle",
          x = 80,
          y = 540,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["broken"] = true
          }
        },
        {
          id = 34,
          name = "voidglass",
          class = "",
          shape = "rectangle",
          x = 120,
          y = 540,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 20,
      height = 24,
      id = 1,
      name = "Tile Layer 1",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 11, 0, 8, 6,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 18, 0, 18, 18,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 23, 0, 10, 23,
        0, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 0, 21, 23, 0, 23, 23,
        0, 7, 13, 13, 13, 13, 13, 13, 13, 13, 11, 13, 13, 9, 0, 20, 23, 0, 23, 23,
        0, 7, 6, 13, 13, 13, 87, 88, 89, 13, 13, 13, 13, 13, 11, 3, 71, 71, 71, 71,
        0, 7, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 71, 71,
        0, 7, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 6, 14, 18, 18, 18, 18, 18, 18,
        0, 7, 13, 13, 11, 13, 13, 13, 13, 13, 13, 13, 13, 14, 28, 28, 28, 28, 28, 28,
        0, 17, 18, 18, 12, 13, 13, 13, 13, 13, 14, 18, 18, 19, 0, 0, 0, 0, 0, 0,
        0, 27, 28, 28, 17, 18, 82, 83, 84, 18, 19, 28, 28, 29, 0, 0, 0, 0, 0, 0,
        4, 0, 0, 0, 27, 28, 82, 83, 84, 28, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        84, 0, 0, 0, 0, 0, 82, 83, 84, 0, 0, 0, 0, 0, 0, 0, 2, 3, 4, 0,
        85, 0, 0, 0, 0, 0, 82, 83, 84, 0, 2147483652, 2147483651, 2147483650, 0, 0, 0, 17, 18, 19, 0,
        0, 0, 0, 0, 0, 0, 82, 83, 84, 0, 2147483732, 2147483731, 2147483730, 0, 0, 0, 22, 23, 24, 0,
        0, 0, 0, 0, 0, 0, 82, 83, 84, 0, 2147483733, 2147483733, 2147483733, 0, 0, 0, 22, 23, 24, 0,
        0, 0, 0, 0, 0, 0, 82, 83, 84, 0, 0, 0, 0, 0, 0, 0, 42, 3, 4, 0,
        0, 0, 0, 0, 0, 0, 82, 83, 84, 0, 0, 0, 0, 0, 0, 0, 7, 8, 14, 0,
        3, 3, 3, 3, 3, 3, 87, 88, 89, 3, 3, 3, 3, 3, 3, 3, 8, 8, 14, 0,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 14, 0,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 14, 18, 18, 18, 18, 19, 0,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 14, 23, 5, 23, 23, 24, 0,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 14, 23, 23, 23, 23, 24, 0,
        18, 18, 18, 18, 18, 18, 12, 13, 14, 18, 18, 18, 18, 19, 23, 23, 23, 23, 24, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 20,
      height = 24,
      id = 8,
      name = "Tile Layer 2",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 56, 57,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 59,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 49, 2147483697,
        0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2684354618, 56, 0, 54, 55,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2684354618, 71, 71, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1073741900, 1073741900, 1073741900, 1073741900, 1073741900,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 41, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0,
        3221225483, 1073741835, 0, 0, 0, 0, 0, 0, 0, 2147483654, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2147483659, 11, 0, 0, 0, 11, 0, 0, 0, 3221225478, 1073741830, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 23, 0, 0, 15, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 0, 5, 23, 46, 47, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 51, 52, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 20,
      height = 24,
      id = 10,
      name = "Tile Layer 3",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 71, 93, 91,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 40, 71, 93, 91,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 45, 71, 93, 91,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 71, 93, 91,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 71, 93, 91,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2684354618, 91, 71, 93, 91,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2684354618, 71, 96, 97, 98, 96,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1073741900, 1073741900, 1073741900, 1073741900, 1073741900,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 11,
      name = "objects_crystal",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 49,
          name = "neocrystal",
          class = "",
          shape = "rectangle",
          x = 244,
          y = 70,
          width = 112,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {
            ["char"] = "susie",
            ["char_spr"] = "shock_right",
            ["flag"] = "susie_freed"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "collision",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 120,
          width = 40,
          height = 240,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          class = "",
          shape = "rectangle",
          x = 40,
          y = 360,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          class = "",
          shape = "rectangle",
          x = 160,
          y = 400,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 680,
          width = 240,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 680,
          width = 280,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          class = "",
          shape = "rectangle",
          x = 600,
          y = 640,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          class = "",
          shape = "rectangle",
          x = 640,
          y = 600,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          class = "",
          shape = "rectangle",
          x = 760,
          y = 640,
          width = 40,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          class = "",
          shape = "rectangle",
          x = 560,
          y = 800,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 920,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          class = "",
          shape = "rectangle",
          x = 560,
          y = 840,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 920,
          width = 240,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 400,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "",
          class = "",
          shape = "rectangle",
          x = 440,
          y = 360,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "",
          class = "",
          shape = "rectangle",
          x = 560,
          y = 280,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "",
          class = "",
          shape = "rectangle",
          x = 560,
          y = 120,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          class = "",
          shape = "rectangle",
          x = 40,
          y = 80,
          width = 520,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          class = "",
          shape = "rectangle",
          x = 600,
          y = 160,
          width = 200,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "",
          class = "",
          shape = "rectangle",
          x = 200,
          y = 440,
          width = 40,
          height = 100,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "",
          class = "",
          shape = "rectangle",
          x = 200,
          y = 580,
          width = 40,
          height = 100,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "",
          class = "",
          shape = "rectangle",
          x = 80,
          y = 500,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 24,
          name = "",
          class = "",
          shape = "rectangle",
          x = 80,
          y = 580,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "",
          class = "",
          shape = "rectangle",
          x = 360,
          y = 440,
          width = 40,
          height = 240,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 46,
          name = "",
          class = "",
          shape = "rectangle",
          x = 40,
          y = 540,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 27,
          name = "footstep",
          class = "",
          shape = "rectangle",
          x = 440,
          y = 560,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 38,
          name = "transition",
          class = "",
          shape = "rectangle",
          x = 240,
          y = 960,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "grey_cliffside/cliffside_start",
            ["marker"] = "entry2"
          }
        },
        {
          id = 40,
          name = "transition",
          class = "",
          shape = "rectangle",
          x = -40,
          y = 720,
          width = 40,
          height = 200,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "grey_cliffside/worse_vents",
            ["marker"] = "spawn"
          }
        },
        {
          id = 45,
          name = "npc",
          class = "",
          shape = "point",
          x = 721,
          y = 780,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "stranger",
            ["cond"] = "Game:getFlag(\"FUN\") >= 51 and Game:getFlag(\"FUN\") <= 60 and not Game:getFlag(\"met_stranger\")",
            ["cutscene"] = "cliffside.stranger"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 35,
          name = "spawn",
          class = "",
          shape = "point",
          x = 300,
          y = 360,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 39,
          name = "entry",
          class = "",
          shape = "point",
          x = 300,
          y = 920,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 41,
          name = "entry_2",
          class = "",
          shape = "point",
          x = 40,
          y = 820,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
