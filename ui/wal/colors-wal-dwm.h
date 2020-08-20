static const char norm_fg[] = "#9ec9d6";
static const char norm_bg[] = "#0F171C";
static const char norm_border[] = "#6e8c95";

static const char sel_fg[] = "#9ec9d6";
static const char sel_bg[] = "#689529";
static const char sel_border[] = "#9ec9d6";

static const char urg_fg[] = "#9ec9d6";
static const char urg_bg[] = "#E80707";
static const char urg_border[] = "#E80707";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
