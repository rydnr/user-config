-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config
-- 40.390956, -3.917569
-- This is setup for dual 1920x1080 monitors, with the right monitor as primary
Config {
    font = "xft:Fixed-8",
    bgColor = "#000000",
    fgColor = "#ffffff",
    position = Static { xpos = 1920, ypos = 0, width = 1800, height = 16 },
    lowerOnStart = True,
    commands = [
        Run Weather "LEVS" ["-t","<tempC>C <skyCondition>","-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000,
        Run MultiCpu ["-t","Cpu: <total0> <total1> <total2> <total3> <total4> <total5> <total6> <total7>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10,
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Network "enp4s0" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Date "%a %b %_d %Y <fc=#ee9a00>%H:%M</fc>" "date" 10,
        Run DiskU [("/", "/ <used>/<size>"), ("/home", "home: <used>/<size>"), ("sda2", "win: <used>/<size>")] ["-L", "20", "-H", "50", "-m", "1", "-p", "3"] 20,
        Run DiskIO [("/", "/ <read> <write>"), ("/home", "home: <read> <write>")] [] 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %multicpu%   %memory%   %swap%   DiskIO: %diskio%   %enp4s0%    Disks: %disku%      <fc=#FFFFCC>%date%</fc>   %LEVS%"
}
