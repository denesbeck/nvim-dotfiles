local dashboard = require("alpha.themes.dashboard")
local alpha = require("alpha")

-- Set header
local logo = [[

  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ 
  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ 
  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ 
  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ 

]]

local function getGreeting(name)
        local tableTime = os.date("*t")
        local datetime = os.date("  %Y-%m-%d   %H:%M:%S")
        local hour = tableTime.hour
        local greetingsTable = {
          [1] = "  Sleep well",
          [2] = "  Good morning",
          [3] = "  Good afternoon",
          [4] = "  Good evening",
          [5] = "󰖔  Good night",
        }
        local greetingIndex = 0
        if hour == 23 or hour < 7 then
    greetingIndex = 1
  elseif hour < 12 then
    greetingIndex = 2
  elseif hour >= 12 and hour < 18 then
    greetingIndex = 3
  elseif hour >= 18 and hour < 21 then
    greetingIndex = 4
  elseif hour >= 21 then
    greetingIndex = 5
  end
  return "\t" .. datetime .. "\t" .. greetingsTable[greetingIndex] .. ", " .. name
end

local userName = "Denes"
local greeting = getGreeting(userName)
dashboard.section.header.val = vim.split("\n\n\n" .. logo .. "\n" .. greeting, "\n")

-- Set menu
dashboard.section.buttons.val = {
  dashboard.button( "n", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button( "f", "  Find file", ":Telescope find_files<CR>"),        
  dashboard.button( "w", "󰷾  Find text", ":Telescope live_grep <CR>"),
  dashboard.button( "r", "  Recents", ":Telescope oldfiles<CR>"),
  dashboard.button( "t", "  Themes", ":Telescope colorscheme<CR>"),
  dashboard.button( "e", "  Explore", ":BrowseFiles<CR>"),
  dashboard.button( "p", "󰏗  Packer", ":PackerSync<CR>"),
  dashboard.button( "m", "  Mason", ":Mason<CR>"),
  dashboard.button( "q", "  Quit", ":qa<CR>"),
}

alpha.setup(dashboard.opts)
