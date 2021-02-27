# arch-config
documenting arch install process and configuration

## system info
B550I Aorus Pro Ax
Ryzen 5 5600x
R9 380
16GB RAM
1TB disk (500GB for Linux)

Thanks Ray for helping pick parts

## preparing partition and initial install
Followed this guide: https://medium.com/swlh/dual-boot-arch-linux-and-windows-the-right-way-7f59969f7525
up to "Install a desktop environment".

## installing kde
Followed this guide: https://itsfoss.com/install-kde-arch-linux/ (step 1 already covered by previous section)
not sure if installing all of the plasma group packages was necessary

## installing xmonad
distrotube has a good video on this: https://www.youtube.com/watch?v=3noK4GTmyMw 
note: may need to install dmenu as well
note: xmonad default bindings are alt p for the dmenu and alt shift enter for terminal
note: on first login xmonad may appear to hang (i.e. the greeter persists but you can't click anything). 
this happens because no wallpaper has been set, so alt shift enter for a terminal will still work can use nitrogen or feh to add a wallpaper
note: some guide somewhere told me to install compton (aka picom, an x display compositor). don't do this, adds superfluous animations to the desktop environment

## theming
install lxappearance-gtk3, launch with lxappearance
pacman -S fantome
yay paper-icon-theme

## alacritty terminal
has nice fonts and is apparently gpu accelerated. easy config via yml file

## kdeconnect
connects phone to desktop, allows using phone as remote trackpad and keyboard among many other features

## lutris lol
pacman -S lutris, then follow the steps on the lutris lol site
note: don't change your lutris cache location!
update: this doesn't work. encountered the same problem as with i3 on ldm. give up on this for now

# todos
 - commit the alacritty config
 - get fantome theme for alacritty and vim?
 - commit xmonad config
 - create kdeconnect commands to bring up a single workspace with a single firefox instance with higher
zoom for easier browsing (and larger mouse?)
 - redo the vim config
 - configure xmobar

