const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0F171C", /* black   */
  [1] = "#E80707", /* red     */
  [2] = "#689529", /* green   */
  [3] = "#B7BD3A", /* yellow  */
  [4] = "#F0AA35", /* blue    */
  [5] = "#1F6B9E", /* magenta */
  [6] = "#A961A7", /* cyan    */
  [7] = "#9ec9d6", /* white   */

  /* 8 bright colors */
  [8]  = "#6e8c95",  /* black   */
  [9]  = "#E80707",  /* red     */
  [10] = "#689529", /* green   */
  [11] = "#B7BD3A", /* yellow  */
  [12] = "#F0AA35", /* blue    */
  [13] = "#1F6B9E", /* magenta */
  [14] = "#A961A7", /* cyan    */
  [15] = "#9ec9d6", /* white   */

  /* special colors */
  [256] = "#0F171C", /* background */
  [257] = "#9ec9d6", /* foreground */
  [258] = "#9ec9d6",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
