#!/usr/bin/env bash

POST_TITLE="$1"
MACHINE=$(curl -L "https://www.hackthebox.eu/api/machines/get/all/?api_token=$(pass HTB/token)" | jq '.[] | select(.name=='\"$POST_TITLE\"')'| jq -r "to_entries|map(\"\(.key)=\(.value|tostring)\")|.[]")

for s in $(echo $MACHINE); do
  export ${s}
done

BINPATH=/home/z3r0/DEV/jekyll-htb
ava=${avatar_thumb/_thumb.png/.png}

LEVEL="$points"
if [ "$LEVEL" -ge 50 ]; then
   LEVEL='insane'
elif [ "$LEVEL" -ge 40 ]; then
   LEVEL='hard'
elif [ "$LEVEL" -ge 30 ]; then
   LEVEL='medium'
elif [ "$LEVEL" -ge 20 ]; then
   LEVEL='easy'
fi

Date=$(date -d "${release}" +'%d %b %Y')
htci=$(curl -X POST "https://hcti.io/v1/image" -u '0e5bf27d-817b-4f9e-802c-3633d7a3de60:d3ec3373-8a9f-4cd5-afe4-6015b9c2b30e' -d html="<div class=\"modal-dialog\"> <div class=\"modal-content\"> <div class=\"modal-header\"> <div class=\"row\"> <div class=\"col-lg-6\"> <img src=\"$ava\"> </div><div class=\"col-lg-1\"></div><div class=\"col-lg-5\"> <h2 class=\"text-center\">$POST_TITLE</h2> <p> </p><div class=\"table-responsive\"> <table class=\"table table-hover table-striped\"> <tbody> <tr> <td class=\"text-right\">OS:</td><td><img src=\"https://zeroryuki.github.io/img/${os}.png\" height=\"15\">${os}</td></tr><tr> <td class=\"text-right\">Difficulty:</td><td> <i class=\"fas fa-exclamation-triangle text-danger\"></i> <span class=\"text-danger bold\">$LEVEL</span></td></tr><tr> <td class=\"text-right\">Points:</td><td><span class=\"text-success\">${points}</span></td></tr><tr> <td class=\"text-right\">Release:</td><td>$Date</td></tr><tr> <td class=\"text-right\">IP:</td><td>${ip}</td></tr></tbody> </table> </div><p></p></div></div></div></div></div>" -d css=".modal-content{background-color: #101214; position: relative; -webkit-background-clip: padding-box; background-clip: padding-box; border: 1px solid #999; border: 1px solid rgba(0,0,0,.2); border-radius: 6px; outline: 0; -webkit-box-shadow: 0 3px 9px rgba(0,0,0,.5); box-shadow: 0 5px 15px rgba(0,0,0,.5); font-size:12px; height:380px;}.modal-content .modal-header{border-color: #2c3036; padding: 40px 20px;}.modal-header{padding: 15px; margin-left:70px;}.col-lg-6{width: 60%; float: left; position: relative; min-height: 1px;}img{vertical-align: middle;}.col-lg-1{width: 2.33333333%; float: left;}.col-lg-5{width: 30.66666667%; float: left;}.text-center{text-align: center;}.h1, .h2, .h3, h1, h2, h3{margin-top: 10px;}h1, h2, h3, h4, h5, h6{color: #fff;}.h2, h2{font-size: 30px;}.h1, .h2, .h3, h1, h2, h3{margin-top: 20px; margin-bottom: 10px;}.h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6{font-family: Ubuntu; font-weight: 500; line-height: 1.1; color: inherit;}.table-responsive{border-color: #373d44!important; min-height: .11%; overflow-x: auto;}.table{width: 50%; max-width: 100%; margin-bottom: 20px;}table{background-color: transparent;}table{border-spacing: 0; border-collapse: collapse;}tbody{display: table-row-group; vertical-align: middle; border-color: inherit;}.table-striped>tbody>tr:nth-of-type(odd){background-color: rgba(52,60,65,.5);}.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th{border-top: 1px solid #2c3036; padding: 8px; line-height: 1.42857143; vertical-align: top; border-top: 1px solid #ddd;}.modal-dialog{width: 600px; margin: 30px auto; position: relative; width: 800px; margin: 5px;}.text-danger{color: #db524b;}.fa, .fas{font-weight: 900;}.fa, .far, .fas{font-family: Font Awesome\ 5 Pro;}body{background: #1e2125; font-family: Ubuntu Mono,monospace; color: #949ba2;}" | jq -r '.url')

wget -O $BINPATH/img/$POST_TITLE/badge.png $htci

