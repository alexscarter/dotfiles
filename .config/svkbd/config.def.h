static const Bool wmborder = True;
static int fontsize = 22;
/* overlay delay in seconds */
static double overlay_delay = 1.0;
/* repeat delay in seconds, will not work on keys with overlays */
static double repeat_delay = 0.75;
/* scan rate in microseconds, affects key repetition rate */
static int scan_rate = 50;
/* one row of keys takes up 1/x of the screen height */
static int heightfactor = 14;
static int xspacing = 1;
static int yspacing = 1;
static const char *defaultfonts[] = {
	"JetBrainsMono Nerd Font:style:medium:size=22"
};
static const char *defaultcolors[SchemeLast][2] = { /* fg bg */
    [SchemeNorm]         = { "#cdd6f4", "#1e1e2e" },   // Text on Base
    [SchemeNormShift]    = { "#89b4fa", "#1e1e2e" },   // Blue accent on Base
    [SchemeNormABC]      = { "#ccd6f4", "#1e1e2e" },   // Rosewater on Surface0
    [SchemeNormABCShift] = { "#89b4fa", "#1e1e2e" },   // Blue accent on Surface0
    [SchemePress]        = { "#cba6f7", "#11111b" },   // Green on Teal
    [SchemePressShift]   = { "#cba6f7", "#11111b" },   // Optional brighter green on Teal
    [SchemeHighlight]    = { "#cba6f7", "#45475a" },   // Sapphire on Surface1
    [SchemeHighlightShift]= { "#89b4fa", "#45475a" },  // Blue on Surface1
    [SchemeOverlay]      = { "#ccd6f4", "#585b70" },   // Rosewater on Surface2
    [SchemeOverlayShift] = { "#89b4fa", "#585b70" },   // Blue on Surface2
    [SchemeWindow]       = { "#cdd6f4", "#313244" },   // Text on Base (like Norm)
};






























