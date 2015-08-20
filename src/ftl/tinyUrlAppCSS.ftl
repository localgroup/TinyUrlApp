html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed,
figure, figcaption, footer, header, hgroup,
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline; }

body {
  line-height: 1; }

ol, ul {
  list-style: none; }

table {
  border-collapse: collapse;
  border-spacing: 0; }

caption, th, td {
  text-align: left;
  font-weight: normal;
  vertical-align: middle; }

q, blockquote {
  quotes: none; }
  q:before, q:after, blockquote:before, blockquote:after {
    content: "";
    content: none; }

a img {
  border: none; }

article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary {
  display: block; }

body {
  font-family: "Helvetica Neue", helvetica, sans-serif;
  color: #E6E6E6;
  background-color: #E6E6E6;
  background: -webkit-gradient(radial, 50% 50%, 0, 50% 50%, 500, color-stop(0%, #ffffff), color-stop(100%, #e7eef1));
  background: -webkit-radial-gradient(center center, circle cover, #ffffff, #e7eef1 500px);
  background: -moz-radial-gradient(center center, circle cover, #ffffff, #e7eef1 500px);
  background: -o-radial-gradient(center center, circle cover, #ffffff, #e7eef1 500px);
  background: -ms-radial-gradient(center center, circle cover, #ffffff, #e7eef1 500px);
  background: radial-gradient(center center, circle cover, #ffffff, #e7eef1 500px); }

a {
  color: #e7eef1;
  text-decoration: none;
  text-shadow: 1px 1px 0 #233139; }
  a:hover {
    color: white; }

input[type="text"] {
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  -ms-border-radius: 4px;
  -o-border-radius: 4px;
  border-radius: 4px;
  color: #3b4448; }
  input[type="text"].error {
    color: #c00; }

::-webkit-input-placeholder {
  color: #b3bbbe; }

input:-moz-placeholder {
  color: #b3bbbe; }

input.inactive {
  color: #b3bbbe; }

input.active {
  color: #3b4448; }

#container {
  -webkit-perspective: 1500;
  perspective: 1500; }

#bar {
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  height: 80px;
  margin: 200px auto 80px auto;
  position: relative;
  -webkit-transform-style: preserve-3d;
  transform-style: preserve-3d;
  -webkit-transition-duration: 0.8s;
  -moz-transition-duration: 0.8s;
  -ms-transition-duration: 0.8s;
  -o-transition-duration: 0.8s;
  transition-duration: 0.8s;
  width: 800px; }
  #bar .side {
    -webkit-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-box-shadow: 0 0 6px #6a7c82;
    -moz-box-shadow: 0 0 6px #6a7c82;
    box-shadow: 0 0 6px #6a7c82;
    position: absolute;
    left: 0;
    top: 0; }
  #bar.flipped {
    -webkit-transform: rotateX(-180deg);
    transform: rotateX(-180deg); }
  #bar.flipped #front {
    z-index: 0; }
  #bar.flipped #back {
    z-index: 10; }

#front {
  *zoom: 1;
  filter: progid:DXImageTransform.Microsoft.gradient(gradientType=0, startColorstr='#FF839BA9', endColorstr='#FF415B6B');
  background-color: #415b6b;
  background: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #839ba9), color-stop(100%, #415b6b));
  background: -webkit-linear-gradient(#839ba9, #415b6b);
  background: -moz-linear-gradient(#839ba9, #415b6b);
  background: -o-linear-gradient(#839ba9, #415b6b);
  background: -ms-linear-gradient(#839ba9, #415b6b);
  background: linear-gradient(#839ba9, #415b6b);
  border-top: solid 1px #546d7d;
  border-right: solid 1px #2f414c;
  border-bottom: solid 1px #2f414c;
  border-left: solid 1px #2f414c;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  -webkit-box-shadow: 0 1px 0 #97acb8 inset;
  -moz-box-shadow: 0 1px 0 #97acb8 inset;
  box-shadow: 0 1px 0 #97acb8 inset;
  height: 100%;
  width: 100%;
  z-index: 10; }

#back {
  *zoom: 1;
  filter: progid:DXImageTransform.Microsoft.gradient(gradientType=0, startColorstr='#FF61737D', endColorstr='#FF233139');
  background-color: #61737d;
  background: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #61737d), color-stop(100%, #233139));
  background: -webkit-linear-gradient(#61737d, #233139);
  background: -moz-linear-gradient(#61737d, #233139);
  background: -o-linear-gradient(#61737d, #233139);
  background: -ms-linear-gradient(#61737d, #233139);
  background: linear-gradient(#61737d, #233139);
  border-top: solid 1px #3c474d;
  border-right: solid 1px #1b262c;
  border-bottom: solid 1px #121a1e;
  border-left: solid 1px #1b262c;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  -webkit-box-shadow: 0 1px 0 #788892 inset;
  -moz-box-shadow: 0 1px 0 #788892 inset;
  box-shadow: 0 1px 0 #788892 inset;
  height: 100%;
  -webkit-transform: rotateX(180deg);
  transform: rotateX(180deg);
  width: 100%;
  z-index: 0; }

#logo {
  position: absolute;
  left: 20px;
  top: 26px;
  width: 66px;
  height: 37px; }

#input-url {
  background-color: #f7f9fa;
  border-top: solid 1px #49565e;
  border-right: solid 1px #404d55;
  border-bottom: solid 1px #37434c;
  border-left: solid 1px #404d55;
  -webkit-box-shadow: 0 1px 0 #6a8290, 0 1px 3px #6a8290 inset;
  -moz-box-shadow: 0 1px 0 #6a8290, 0 1px 3px #6a8290 inset;
  box-shadow: 0 1px 0 #6a8290, 0 1px 3px #6a8290 inset;
  font-size: 22px;
  height: 26px;
  left: 100px;
  letter-spacing: -1px;
  padding: 10px;
  position: absolute;
  top: 16px;
  width: 546px; }

#output-url {
  background-color: #f7f9fa;
  border-top: solid 1px #3b444a;
  border-right: solid 1px #30383e;
  border-bottom: solid 1px #293136;
  border-left: solid 1px #30383e;
  -webkit-box-shadow: 0 1px 0 #4a5a63, 0 1px 3px #6a8290 inset;
  -moz-box-shadow: 0 1px 0 #4a5a63, 0 1px 3px #6a8290 inset;
  box-shadow: 0 1px 0 #4a5a63, 0 1px 3px #6a8290 inset;
  font-size: 22px;
  height: 26px;
  left: 100px;
  letter-spacing: -1px;
  padding: 10px;
  position: absolute;
  top: 16px;
  width: 214px; }

button::-moz-focus-inner {
  border: 0;
  padding: 0; }

button {
  *zoom: 1;
  filter: progid:DXImageTransform.Microsoft.gradient(gradientType=0, startColorstr='#FF425B6B', endColorstr='#FF24323B');
  background-color: #425b6b;
  background: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #425b6b), color-stop(100%, #24323b));
  background: -webkit-linear-gradient(#425b6b, #24323b);
  background: -moz-linear-gradient(#425b6b, #24323b);
  background: -o-linear-gradient(#425b6b, #24323b);
  background: -ms-linear-gradient(#425b6b, #24323b);
  background: linear-gradient(#425b6b, #24323b);
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  -ms-border-radius: 0 4px 4px 0;
  -o-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
  border-top: solid 1px #313b3d;
  border-left: solid 1px #232b2c;
  border-bottom: solid 1px #232b2c;
  border-right: solid 1px #232b2c;
  -webkit-box-shadow: 1px 1px 0 #3d525e, 0 1px 0 #5f7886 inset;
  -moz-box-shadow: 1px 1px 0 #3d525e, 0 1px 0 #5f7886 inset;
  box-shadow: 1px 1px 0 #3d525e, 0 1px 0 #5f7886 inset;
  color:#367b98;
  font-size: 17px;
  font-weight: bold;
  height: 48px;
  line-height: 1;
  position: absolute;
  right: 18px;
  text-align: center;
  text-shadow: 0 -1px 0 #233139;
  top: 16px;
  width: 120px; }

#front button:hover {
  *zoom: 1;
  filter: progid:DXImageTransform.Microsoft.gradient(gradientType=0, startColorstr='#FF3E5665', endColorstr='#FF202D35');
  background: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #3e5665), color-stop(100%, #202d35));
  background: -webkit-linear-gradient(#3e5665, #202d35);
  background: -moz-linear-gradient(#3e5665, #202d35);
  background: -o-linear-gradient(#3e5665, #202d35);
  background: -ms-linear-gradient(#3e5665, #202d35);
  background: linear-gradient(#3e5665, #202d35); }
#front button:active {
  *zoom: 1;
  filter: progid:DXImageTransform.Microsoft.gradient(gradientType=0, startColorstr='#FF364B58', endColorstr='#FF202D35');
  background: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #364b58), color-stop(100%, #202d35));
  background: -webkit-linear-gradient(#364b58, #202d35);
  background: -moz-linear-gradient(#364b58, #202d35);
  background: -o-linear-gradient(#364b58, #202d35);
  background: -ms-linear-gradient(#364b58, #202d35);
  background: linear-gradient(#364b58, #202d35); }

#back button {
  *zoom: 1;
  filter: progid:DXImageTransform.Microsoft.gradient(gradientType=0, startColorstr='#FF50B6D0', endColorstr='#FF286FA5');
  background-color: #50b6d0;
  background: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #50b6d0), color-stop(100%, #286fa5));
  background: -webkit-linear-gradient(#50b6d0, #286fa5);
  background: -moz-linear-gradient(#50b6d0, #286fa5);
  background: -o-linear-gradient(#50b6d0, #286fa5);
  background: -ms-linear-gradient(#50b6d0, #286fa5);
  background: linear-gradient(#50b6d0, #286fa5);
  border-top: solid 1px #313b3d;
  border-left: solid 1px #232b2c;
  border-bottom: solid 1px #232b2c;
  border-right: solid 1px #232b2c;
  -webkit-box-shadow: 1px 1px 0 #212c33, 0 1px 0 #88d4e5 inset;
  -moz-box-shadow: 1px 1px 0 #212c33, 0 1px 0 #88d4e5 inset;
  box-shadow: 1px 1px 0 #212c33, 0 1px 0 #88d4e5 inset;
  left: 330px;
  width: 90px; }
  #back button:hover, #back button.hover {
    *zoom: 1;
    filter: progid:DXImageTransform.Microsoft.gradient(gradientType=0, startColorstr='#FF48B3CE', endColorstr='#FF26699D');
    background: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #48b3ce), color-stop(100%, #26699d));
    background: -webkit-linear-gradient(#48b3ce, #26699d);
    background: -moz-linear-gradient(#48b3ce, #26699d);
    background: -o-linear-gradient(#48b3ce, #26699d);
    background: -ms-linear-gradient(#48b3ce, #26699d);
    background: linear-gradient(#48b3ce, #26699d); }
  #back button:active, #back button.active {
    *zoom: 1;
    filter: progid:DXImageTransform.Microsoft.gradient(gradientType=0, startColorstr='#FF38ACCA', endColorstr='#FF26699D');
    background: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #38acca), color-stop(100%, #26699d));
    background: -webkit-linear-gradient(#38acca, #26699d);
    background: -moz-linear-gradient(#38acca, #26699d);
    background: -o-linear-gradient(#38acca, #26699d);
    background: -ms-linear-gradient(#38acca, #26699d);
    background: linear-gradient(#38acca, #26699d); }

.no-flash #back button {
  display: none; }

#copied-msg {
  display: none;
  color: #78909d;
  position: relative;
  top: 32px;
  left: 430px;
  text-shadow: 0 -1px 0 #262f34; }
  
a#restart {
  display: block;
  position: relative;
  float: right;
  right: 18px;
  text-align: right;
  top: 32px;
  width: 185px; }

.arrow_box {
  display: none;
  color: #fff;
  position: relative;
  top: -16px;
  left: 100px;
  padding: 4px 8px;
  font-size: 12px;
  font-weight: bold;
  z-index: 20;
  background: #c00;
  margin: 0 auto;
  border: 1px solid #8a0000;
  text-align: center;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  -ms-border-radius: 3px;
  -o-border-radius: 3px;
  border-radius: 3px;
  -webkit-box-shadow: 0 1px 6px #6a7c82;
  -moz-box-shadow: 0 1px 6px #6a7c82;
  box-shadow: 0 1px 6px #6a7c82; }

.arrow_box:after, .arrow_box:before {
  top: 100%;
  border: solid transparent;
  content: " ";
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none; }

.arrow_box:after {
  border-top-color: #c00;
  border-width: 10px;
  left: 30px;
  margin-left: -10px; }

.arrow_box:before {
  border-top-color: #8a0000;
  border-width: 11px;
  left: 30px;
  margin-left: -11px; }

.logo {
  position: absolute;
  top: 24px;
  left: 18px; }

.logo a {
  float: left;
  text-indent: -999em;
  overflow: hidden;
  height: 35px;
  width: 68px;
  background-size: 68px 35px;
 }