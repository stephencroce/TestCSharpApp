﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tickers.aspx.cs" Inherits="TestCSharpApp.Ticker.Tickers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tickaz</title>
    <script type="text/javascript" src="crawler.js">
        /* Text and/or Image Crawler Script v1.5 (c)2009-2011 John Davenport Scheuer
        as first seen in http://www.dynamicdrive.com/forums/
        username: jscheuer1 - This Notice Must Remain for Legal Use
        updated: 4/2011 for random order option, more (see below)
        */

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="title">
        these are various tickers. See how you like em.
    </div>
    <div id="ticker1">
        <script language="JavaScript1.2" type="text/javascript ">

/*
Cross browser Marquee script- © Dynamic Drive (www.dynamicdrive.com)
For full source code, 100's more DHTML scripts, and Terms Of Use, visit http://www.dynamicdrive.com
Credit MUST stay intact
*/

//Specify the marquee's width (in pixels)
var marqueewidth="300px"
//Specify the marquee's height
var marqueeheight="25px"
//Specify the marquee's marquee speed (larger is faster 1-10)
var marqueespeed=2
//configure background color:
var marqueebgcolor="#DEFDD9"
//Pause marquee onMousever (0=no. 1=yes)?
var pauseit=1

//Specify the marquee's content (don't delete <nobr> tag)
//Keep all content on ONE line, and backslash any single quotations (ie: that\'s great):

var marqueecontent='<nobr><font face="Arial">Thank you for visiting <a href="http://www.dynamicdrive.com">Dynamic Drive.</a> If you find this script useful, please consider linking to us by <a href="../link.htm">click here.</a> Enjoy your stay!</font></nobr>'




////NO NEED TO EDIT BELOW THIS LINE////////////
marqueespeed=(document.all)? marqueespeed : Math.max(1, marqueespeed-1) //slow speed down by 1 for NS
var copyspeed=marqueespeed
var pausespeed=(pauseit==0)? copyspeed: 0
var iedom=document.all||document.getElementById
if (iedom)
document.write('<span id="temp" style="visibility:hidden;position:absolute;top:-100px;left:-9000px">'+marqueecontent+'</span>')
var actualwidth=''
var cross_marquee, ns_marquee

function populate(){
if (iedom){
cross_marquee=document.getElementById? document.getElementById("iemarquee") : document.all.iemarquee
cross_marquee.style.left=parseInt(marqueewidth)+8+"px"
cross_marquee.innerHTML=marqueecontent
actualwidth=document.all? temp.offsetWidth : document.getElementById("temp").offsetWidth
}
else if (document.layers){
ns_marquee=document.ns_marquee.document.ns_marquee2
ns_marquee.left=parseInt(marqueewidth)+8
ns_marquee.document.write(marqueecontent)
ns_marquee.document.close()
actualwidth=ns_marquee.document.width
}
lefttime=setInterval("scrollmarquee()",20)
}
window.onload=populate

function scrollmarquee(){
if (iedom){
if (parseInt(cross_marquee.style.left)>(actualwidth*(-1)+8))
cross_marquee.style.left=parseInt(cross_marquee.style.left)-copyspeed+"px"
else
cross_marquee.style.left=parseInt(marqueewidth)+8+"px"

}
else if (document.layers){
if (ns_marquee.left>(actualwidth*(-1)+8))
ns_marquee.left-=copyspeed
else
ns_marquee.left=parseInt(marqueewidth)+8
}
}

if (iedom||document.layers){
with (document){
document.write('<table border="0" cellspacing="0" cellpadding="0"><td>')
if (iedom){
write('<div style="position:relative;width:'+marqueewidth+';height:'+marqueeheight+';overflow:hidden">')
write('<div style="position:absolute;width:'+marqueewidth+';height:'+marqueeheight+';background-color:'+marqueebgcolor+'" onMouseover="copyspeed=pausespeed" onMouseout="copyspeed=marqueespeed">')
write('<div id="iemarquee" style="position:absolute;left:0px;top:0px"></div>')
write('</div></div>')
}
else if (document.layers){
write('<ilayer width='+marqueewidth+' height='+marqueeheight+' name="ns_marquee" bgColor='+marqueebgcolor+'>')
write('<layer name="ns_marquee2" left=0 top=0 onMouseover="copyspeed=pausespeed" onMouseout="copyspeed=marqueespeed"></layer>')
write('</ilayer>')
}
document.write('</td></table>')
}
}
        </script>
    </div>
    <div id="ticker2">
        <div runat="server" class="marquee" id="mycrawler">
            Those confounded friars dully buzz that faltering jay. An appraising tongue acutely
            causes our courageous hogs. Their fitting submarines deftly break your approving
            improvisations. Her downcast taxonomies actually box up those disgusted turtles.
        </div>
        <script type="text/javascript">
            marqueeInit({
                uniqueid: 'mycrawler',
                style: {
                    'padding': '5px',
                    'width': '750px',
                    'background': 'lightyellow',
                    'border': '1px solid #CC3300'
                },
                inc: 0, //speed - pixel increment for each iteration of this marquee's movement
                mouse: 'cursor driven', //mouseover behavior ('pause' 'cursor driven' or false)
                moveatleast: 2,
                neutral: 150,
                savedirection: true
            });
        </script>
<%--
        <div class="marquee" id="mycrawler2">
            <img src="http://img42.imageshack.us/img42/6331/beachgl.jpg" />
            <img src="http://img222.imageshack.us/img222/8854/waterox.jpg" />
            <img src="http://img405.imageshack.us/img405/7314/cocovv.jpg" />
            <img src="http://img853.imageshack.us/img853/5038/bonsaiy.jpg" />
        </div>
        --%>
        <%--
        <script type="text/javascript">
            marqueeInit({
                uniqueid: 'mycrawler2',
                style: {
                    'padding': '2px',
                    'width': '600px',
                    'height': '180px'
                },
                inc: 5, //speed - pixel increment for each iteration of this marquee's movement
                mouse: 'cursor driven', //mouseover behavior ('pause' 'cursor driven' or false)
                moveatleast: 2,
                neutral: 150,
                savedirection: true,
                random: true
            });
        </script>
--%>

    </div>
    </form>
</body>
</html>
