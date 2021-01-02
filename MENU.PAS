unit menu;
interface
procedure main_menu;
procedure adm_user;
implementation
Uses crt,Graph,bases,tasks;
type
parol=record
shifr:string;
end;
type
cvet=record
col_adm:integer;
col_user:integer;
end;

var
z,gr,color,up,bot,right,opt,left,zv,k,tries,ent,puzir,inyan,strelki,dx,dm,i,j,l,c:integer;
v,d:real;
pas,s:string;
g:char;
y,x:real;
exit_up,exit_bot,exit_right,exit_opt,exit_left,admin,exit,n,b,strel:boolean;
password:file of parol;
pass:parol;
col:file of cvet;
ground:cvet;
function CaesarEncipher(toCode: string): string;
var i, t: integer;
begin
  for i := 1 to length(toCode) do begin
    T := (Ord(tocode[ i ]));
    if t = 118 then t:=97 else
    if t = 119 then t:=98 else
    if t = 120 then t:=99 else
    if t = 121 then t:=100 else
    if t = 122 then t:=101 else

    T := (Ord(toCode[ i ]) + 5);
    toCode[ i ] := Chr(T);
  end;
  CaesarEncipher := toCode;
end;

function CaesarDecipher(toDecode: string): string;
var i, T: integer;
begin
  for i := 1 to length(toDecode) do begin
    T := (Ord(toDecode[ i ]));
    if t =97 then t:=118 else
    if t =98 then t:=119 else
    if t =99 then t:=120 else
    if t =100 then t:=121 else
    if t =101 then t:=122 else
    T := (Ord(toDecode[ i ]) - 5);
  todeCode[ i ] := Chr(T);
  end;
  CaesarDecipher := toDecode;
end;

procedure ipod;
begin
setlinestyle(0,0,3);
setcolor(white);
circle(320,250,120);
circle(320,250,121);
circle(320,250,122);
circle(320,250,123);
circle(320,250,124);
setfillstyle(1,lightgray);
floodfill(220,220,white);

setcolor(white);
circle(320,250,34);
circle(320,250,33);
setcolor(darkgray);
outtextxy(220,247,'”€‰‹');
outtextxy(295,332,'‘€‚Š€');
outtextxy(287,155,'€‘’‰Šˆ');
outtextxy(373,247,'‡€„€—ˆ');
outtextxy(300,247,'‚›•„');
setcolor(white);
end;
procedure perecluchenie;
begin
case i of
1:begin
ipod;
delay(100);
outtextxy(220,247,'”€‰‹');
end;
2:case j of
1:begin
ipod;
delay(100);
outtextxy(287,155,'€‘’‰Šˆ');
end;
2:begin
ipod;
delay(100);
outtextxy(300,247,'‚›•„');
end;
3:begin
ipod;
delay(100);
outtextxy(295,332,'‘€‚Š€');
end;
end;
3:begin
ipod;
delay(100);
outtextxy(373,247,'‡€„€—ˆ');
end;
end;
end;
procedure in_yan1;
begin
setcolor(black);
arc(320,250,180,232,118);
ellipse(190,309,325,80,70,60);
setfillstyle(1,black);
floodfill(230,290,black);
setcolor(white);
arc(210,310,325,90,17);
setfillstyle(1,white);
floodfill(220,305,white);

setcolor(white);
ellipse(447,193,139,263,73,60);
setfillstyle(1,white);
floodfill(400,200,white);
setcolor(black);
arc(430,185,160,263,18);
arc(320,250,23,38,118);
setfillstyle(1,black);
floodfill(415,190,black);
end;
procedure in_yan2;
begin
setcolor(black);
arc(320,250,172,242,118);
ellipse(220,309,311,82,70,60);
ellipse(254,192,224,255,70,60);
setfillstyle(1,black);
floodfill(280,290,black);
floodfill(220,300,black);
setcolor(white);
circle(240,310,17);
setfillstyle(1,white);
floodfill(240,310,white);

setcolor(white);
ellipse(384,309,40,82,68,59);
ellipse(417,193,120,255,73,60);
setfillstyle(1,white);
floodfill(380,240,white);

floodfill(420,200,white);
setcolor(black);
arc(320,250,33,45,118);
arc(400,185,80,360,18);
setfillstyle(1,black);
floodfill(400,185,black);

end;
procedure in_yan3;
begin
setcolor(black);
arc(320,250,130,258,118);
ellipse(270,309,292,82,70,60);
ellipse(304,192,150,255,70,60);
setfillstyle(1,black);
floodfill(330,290,black);
floodfill(240,310,black);
setcolor(white);
circle(290,310,17);
setfillstyle(1,white);
floodfill(290,310,white);


ellipse(334,309,283,82,68,59);
ellipse(367,193,100,255,73,60);
setfillstyle(1,white);
floodfill(410,250,white);
floodfill(330,240,white);
floodfill(320,200,white);
floodfill(400,190,white);
setcolor(black);
circle(350,185,18);
setfillstyle(1,black);
floodfill(350,185,black);

end;
procedure in_yan4;
begin
setcolor(black);
arc(320,250,90,270,118);
ellipse(300,309,280,82,70,60);
ellipse(334,192,100,255,70,60);
setfillstyle(1,black);
floodfill(360,290,black);
floodfill(280,310,black);
setcolor(white);
circle(320,310,17);
setfillstyle(1,white);
floodfill(320,310,white);


setcolor(black);
arc(320,250,270,90,118);
setcolor(white);
arc(320,250,270,90,116);
ellipse(304,309,283,82,68,59);
ellipse(337,193,100,255,73,60);
setfillstyle(1,white);
floodfill(380,250,white);
floodfill(300,240,white);
floodfill(350,190,white);
floodfill(290,190,white);
floodfill(380,280,white);
setcolor(black);
circle(320,185,18);
setfillstyle(1,black);
floodfill(320,185,black);


end;
procedure in_yan_open;
begin
ipod;
in_yan1;
delay(100);
in_yan2;
delay(100);
in_yan3;
delay(100);
in_yan4;
end;
procedure in_yan_close;
begin
delay(100);
setcolor(white);
arc(320,250,270,90,118);
setcolor(lightgray);
ellipse(273,309,288,82,70,60);
ellipse(307,192,143,255,70,60);
ellipse(330,309,298,82,68,59);
ellipse(363,193,105,255,73,60);
setcolor(lightgray);
arc(320,250,260,295,118);
arc(320,250,78,125,118);
setfillstyle(1,lightgray);
floodfill(320,250,lightgray);
setcolor(darkgray);
outtextxy(300,247,'‚›•„');
setfillstyle(1,black);
floodfill(320,310,black);
setcolor(white);
arc(320,250,295,355,34);
arc(320,250,295,355,33);
arc(320,250,127,183,34);
arc(320,250,127,183,33);

delay(100);
in_yan3;
setcolor(lightgray);
ellipse(223,309,311,82,70,60);
ellipse(257,192,220,255,70,60);
ellipse(381,309,40,82,68,59);
ellipse(414,193,127,255,73,60);
arc(320,250,65,172,118);
arc(320,250,243,349,118);
setfillstyle(1,lightgray);
floodfill(320,300,lightgray);
in_yan2;
setfillstyle(1,black);
floodfill(280,310,black);
setfillstyle(1,white);
floodfill(350,185,white);
setcolor(white);
circle(320,250,34);
circle(320,250,33);
setcolor(darkgray);
outtextxy(247,247,'‹');
outtextxy(295,332,'‘€‚Š€');
outtextxy(287,155,'€‘’‰Šˆ');
outtextxy(300,247,'‚›•„');

delay(100);
setcolor(lightgray);
arc(320,250,171,243,118);
arc(320,250,348,64,118);
setfillstyle(1,lightgray);
floodfill(370,180,lightgray);
floodfill(270,300,lightgray);
in_yan1;
setcolor(darkgray);
outtextxy(220,247,'”€‰‹');
outtextxy(373,247,'‡€');
delay(100);
setcolor(lightgray);
arc(320,250,179,233,118);
arc(320,250,357,54,118);
setfillstyle(1,lightgray);
floodfill(380,180,lightgray);
floodfill(260,300,lightgray);
ipod;
setcolor(lightgray);
circle(320,250,117);
end;
procedure exit_verh;
begin
strelki:=0;
strel:=false;
repeat
setcolor(black);
line(356-strelki,181,349-strelki,186);
line(356-strelki,191,349-strelki,186);
line(363-strelki,181,356-strelki,186);
line(363-strelki,191,356-strelki,186);

line(284+strelki,181,291+strelki,186);
line(284+strelki,191,291+strelki,186);
line(277+strelki,181,284+strelki,186);
line(277+strelki,191,284+strelki,186);

delay(210-i*30);

setcolor(white);
line(356-strelki,181,349-strelki,186);
line(356-strelki,191,349-strelki,186);
line(363-strelki,181,356-strelki,186);
line(363-strelki,191,356-strelki,186);

line(284+strelki,181,291+strelki,186);
line(284+strelki,191,291+strelki,186);
line(277+strelki,181,284+strelki,186);
line(277+strelki,191,284+strelki,186);
if strel=true then dec(strelki) else
inc(strelki);
if strelki=0 then strel:=false;
if strelki=4 then strel:=true;
until keypressed;
end;

procedure exit_niz;
begin
strelki:=0;
strel:=false;
repeat
setcolor(white);
line(356-strelki,307,349-strelki,312);
line(356-strelki,317,349-strelki,312);
line(363-strelki,307,356-strelki,312);
line(363-strelki,317,356-strelki,312);

line(284+strelki,307,291+strelki,312);
line(284+strelki,317,291+strelki,312);
line(277+strelki,307,284+strelki,312);
line(277+strelki,317,284+strelki,312);

delay(210-i*30);

setcolor(black);
line(356-strelki,307,349-strelki,312);
line(356-strelki,317,349-strelki,312);
line(363-strelki,307,356-strelki,312);
line(363-strelki,317,356-strelki,312);

line(284+strelki,307,291+strelki,312);
line(284+strelki,317,291+strelki,312);
line(277+strelki,307,284+strelki,312);
line(277+strelki,317,284+strelki,312);
if strel=true then dec(strelki) else
inc(strelki);
if strelki=0 then strel:=false;
if strelki=4 then strel:=true;
until keypressed;
end;

procedure puziri;
begin
puzir:=18;
d:=2;
repeat
puzir:=puzir-5;
if puzir=-2 then puzir:=0;
if puzir<12 then d:=d-0.2;
setcolor(white);
ellipse(215+puzir,250,106+round(puzir*d),254-round(puzir*d),43,50);
ellipse(425-puzir,250,286+round(puzir*d),74-round(puzir*d),43,50);
ellipse(320,354-puzir,195+round(puzir*d),345-round(puzir*d),55,42);
ellipse(320,146+puzir,15+round(puzir*d),165-round(puzir*d),55,42);
setfillstyle(1,lightgray);
floodfill(174+puzir,250,white);
floodfill(465-puzir,250,white);
floodfill(320,394-puzir,white);
floodfill(320,107+puzir,white);

delay(100);

if puzir<>0 then begin
setcolor(lightgray);
ellipse(215+puzir,250,106+round(puzir*d),254-round(puzir*d),43,50);
ellipse(425-puzir,250,286+round(puzir*d),74-round(puzir*d),43,50);
ellipse(320,354-puzir,195+round(puzir*d),345-round(puzir*d),55,42);
ellipse(320,146+puzir,15+round(puzir*d),165-round(puzir*d),55,42);end;
until puzir=0;
setcolor(white);
circle(320,250,124);
end;




procedure close_big;
begin
repeat
if i<>0 then begin
setcolor(black);
arc(320-i,240,89,270,234);
ellipse(299-i,358,280,90,128,118);
ellipse(333-i,125,92,255,128,118);
setfillstyle(1,black);
floodfill(240-i,450,black);
floodfill(248-i,20,black);
setcolor(white);
circle(320-i,359,46);
setfillstyle(1,white);
floodfill(320-i,370,white);


setcolor(black);
arc(319+i,241,270,90,234);
setcolor(white);
arc(319+i,241,272,90,233);
ellipse(303+i,358,281,88,126,118);
ellipse(333+i,125,95,262,126,117);
setfillstyle(1,white);
floodfill(390+i,25,white);
floodfill(390+i,457,white);
setcolor(black);
circle(320+i,127,46);
setfillstyle(1,black);
floodfill(320+i,130,black);
end;

delay(200);

i:=i+40;
if i<>280 then begin setcolor(darkgray);
setfillstyle(1,black);
floodfill(360-i,370,black);
setfillstyle(1,white);
floodfill(280+i,130,white);
ellipse(299-i,358,280,90,128,118);
ellipse(333-i,125,92,255,128,118);
ellipse(303+i,358,270,88,126,118);
ellipse(333+i,125,90,262,126,117);
setfillstyle(1,darkgray);
floodfill(390+i,380,darkgray);
floodfill(220-i,120,darkgray);
floodfill(285-i,20,darkgray);
end;
until i=280;
setlinestyle(0,0,3);
setcolor(white);
circle(320,250,120);
circle(320,250,121);
circle(320,250,122);
circle(320,250,123);
circle(320,250,124);
setfillstyle(1,lightgray);
floodfill(220,220,white);
circle(320,250,60);
circle(320,250,61);
i:=1;
line(202,250,438,250);
delay(500);
repeat
setcolor(white);
line(202,250-i,438,250-i);
line(202,250+i,438,250+i);
delay(30);
if i<>14 then begin
setcolor(lightgray);
line(202,250-i,438,250-i);
line(202,250+i,438,250+i);
end;
inc(i);
until i=15;
i:=0;
while keypressed do
readkey;
end;

procedure ent_niz;
begin
strelki:=0;
strel:=false;
repeat
setcolor(white);
line(390-strelki,354,379-strelki,362);
line(390-strelki,370,379-strelki,362);
line(398-strelki,354,387-strelki,362);
line(398-strelki,370,387-strelki,362);

line(250+strelki,354,261+strelki,362);
line(250+strelki,370,261+strelki,362);
line(242+strelki,354,253+strelki,362);
line(242+strelki,370,253+strelki,362);

delay(210-i*30);

setcolor(black);
line(390-strelki,354,379-strelki,362);
line(390-strelki,370,379-strelki,362);
line(398-strelki,354,387-strelki,362);
line(398-strelki,370,387-strelki,362);

line(250+strelki,354,261+strelki,362);
line(250+strelki,370,261+strelki,362);
line(242+strelki,354,253+strelki,362);
line(242+strelki,370,253+strelki,362);
if strel=true then dec(strelki) else
inc(strelki);
if strelki=0 then strel:=false;
if strelki=4 then strel:=true;
until keypressed;
end;

procedure ent_verh;
begin
strelki:=0;
strel:=false;
repeat
setcolor(black);
line(390-strelki,120,379-strelki,128);
line(390-strelki,136,379-strelki,128);
line(398-strelki,120,387-strelki,128);
line(398-strelki,136,387-strelki,128);

line(250+strelki,120,261+strelki,128);
line(250+strelki,136,261+strelki,128);
line(242+strelki,120,253+strelki,128);
line(242+strelki,136,253+strelki,128);

delay(210-i*30);

setcolor(white);
line(390-strelki,120,379-strelki,128);
line(390-strelki,136,379-strelki,128);
line(398-strelki,120,387-strelki,128);
line(398-strelki,136,387-strelki,128);

line(250+strelki,120,261+strelki,128);
line(250+strelki,136,261+strelki,128);
line(242+strelki,120,253+strelki,128);
line(242+strelki,136,253+strelki,128);
if strel=true then dec(strelki) else
inc(strelki);
if strelki=0 then strel:=false;
if strelki=4 then strel:=true;
until keypressed;
end;

procedure user;
begin
strelki:=0;
settextstyle(7,0,1);
repeat
setcolor(white);
line(439-strelki,242,428-strelki,250);
line(439-strelki,258,428-strelki,250);
line(431-strelki,242,420-strelki,250);
line(431-strelki,258,420-strelki,250);

line(202+strelki,242,213+strelki,250);
line(202+strelki,258,213+strelki,250);
line(210+strelki,242,221+strelki,250);
line(210+strelki,258,221+strelki,250);

if strelki in [122..125] then outtextxy(315,238,'L') else
if strelki in [127..140] then begin
outtextxy(330,238,'L');
outtextxy(300,238,'E');
end else if strelki in [129..160] then begin
outtextxy(285,238,'H');
outtextxy(345,238,'O');
end;
delay(15);
setcolor(lightgray);
line(439-strelki,242,428-strelki,250);
line(439-strelki,258,428-strelki,250);
line(431-strelki,242,420-strelki,250);
line(431-strelki,258,420-strelki,250);

line(202+strelki,242,213+strelki,250);
line(202+strelki,258,213+strelki,250);
line(210+strelki,242,221+strelki,250);
line(210+strelki,258,221+strelki,250);

inc(strelki);
while keypressed do
readkey;
until strelki=218;
settextstyle(0,0,0);
end;

procedure adm;
begin
tries:=51;
setcolor(darkgray);
settextstyle(1,0,1);
outtextxy(280,265,'Tries Left');
outtextxy(297,195,'enter');
outtextxy(280,210,'password');
repeat

settextstyle(1,0,1);
setcolor(darkgray);
outtextxy(315,285,chr(tries));
pas:='';
k:=0;
s:='';
repeat
setcolor(white);
line(262,258,272,258);
delay(100);
setcolor(lightgray);
line(262,258,272,258);
delay(100);
until keypressed;
zv:=0;
repeat
g:=readkey;
if (k<8) and (g in ['a'..'z']) then
begin
pas:=pas+g;
setcolor(white);
settextstyle(4,0,4);
outtextxy(260+zv,230,'*');
while keypressed
do readkey;
repeat
setcolor(white);
line(277+zv,258,287+zv,258);
delay(100);
setcolor(lightgray);
line(277+zv,258,287+zv,258);
delay(100);
until keypressed;
zv:=zv+15;
k:=length(pas);
end;
if (g=#8) and (zv>0) then
begin
k:=length(pas);
delete(pas,k,1);
k:=length(pas);
zv:=zv-15;
setcolor(lightgray);
settextstyle(4,0,4);
outtextxy(260+zv,230,'*');
while keypressed
do readkey;
repeat
setcolor(white);
line(262+zv,258,272+zv,258);
delay(100);
setcolor(lightgray);
line(262+zv,258,272+zv,258);
delay(100);
until keypressed;
end else if (not (g=#13)) and (not(g=#27)) and
((k=8) or (k=0) or (not(g in ['a'..'z'])))  then begin
while keypressed
do readkey;
repeat
setcolor(white);
line(262+zv,258,272+zv,258);
delay(100);
setcolor(lightgray);
line(262+zv,258,272+zv,258);
delay(100);
until keypressed;
end;
until (g=#13) or (g=#27) ;
if g=#27 then halt;
assign(password,'path.txt');
reset(password);
read(password,pass);
s:=caesardecipher(pass.shifr);
close(password);
if pas=s then begin
strelki:=0;
settextstyle(7,0,1);
repeat
setcolor(white);
line(439-strelki,242,428-strelki,250);
line(439-strelki,258,428-strelki,250);
line(431-strelki,242,420-strelki,250);
line(431-strelki,258,420-strelki,250);

line(202+strelki,242,213+strelki,250);
line(202+strelki,258,213+strelki,250);
line(210+strelki,242,221+strelki,250);
line(210+strelki,258,221+strelki,250);
if strelki in [125..130] then outtextxy(320,238,'G') else
if strelki in [137..150] then begin
outtextxy(335,238,'R');
outtextxy(295,238,'S');
end else if strelki in [150..163] then begin
outtextxy(280,238,'S');
outtextxy(350,238,'A');
end else if strelki in [163..180] then begin
outtextxy(265,238,'E');
outtextxy(365,238,'N');
end else if strelki in [180..200] then
outtextxy(385,238,'T')
else if strelki in [200..213] then
outtextxy(395,238,'E')
else if strelki in [205..218] then
outtextxy(410,238,'D');
if strelki in [176..189] then outtextxy(255,238,'C') else
if strelki in [189..202] then outtextxy(241,238,'C') else
if strelki in [202..215] then outtextxy(226,238,'A');
delay(15);
setcolor(lightgray);
line(439-strelki,242,428-strelki,250);
line(439-strelki,258,428-strelki,250);
line(431-strelki,242,420-strelki,250);
line(431-strelki,258,420-strelki,250);

line(202+strelki,242,213+strelki,250);
line(202+strelki,258,213+strelki,250);
line(210+strelki,242,221+strelki,250);
line(210+strelki,258,221+strelki,250);

inc(strelki);
until strelki=218;
end else if tries<>49  then
begin
strelki:=0;
settextstyle(7,0,1);
repeat
setcolor(white);
line(439-strelki,242,428-strelki,250);
line(439-strelki,258,428-strelki,250);
line(431-strelki,242,420-strelki,250);
line(431-strelki,258,420-strelki,250);

line(202+strelki,242,213+strelki,250);
line(202+strelki,258,213+strelki,250);
line(210+strelki,242,221+strelki,250);
line(210+strelki,258,221+strelki,250);
if strelki in [127..140] then begin
outtextxy(325,238,'D');
outtextxy(305,238,'S');
end else if strelki in [142..155] then begin
outtextxy(290,238,'S');
outtextxy(340,238,'E');
end else if strelki in [155..168] then begin
outtextxy(275,238,'E');
outtextxy(355,238,'N');
end else if strelki in [168..181] then begin
outtextxy(263,238,'C');
outtextxy(370,238,'I');
end else if strelki in [181..194] then begin
outtextxy(251,238,'C');
outtextxy(380,238,'E');
end else if strelki in [194..207] then begin
outtextxy(236,238,'A');
outtextxy(395,238,'D');
end;
delay(15);
setcolor(lightgray);
line(439-strelki,242,428-strelki,250);
line(439-strelki,258,428-strelki,250);
line(431-strelki,242,420-strelki,250);
line(431-strelki,258,420-strelki,250);

line(202+strelki,242,213+strelki,250);
line(202+strelki,258,213+strelki,250);
line(210+strelki,242,221+strelki,250);
line(210+strelki,258,221+strelki,250);

inc(strelki);
until strelki=218;
delay(1500);
settextstyle(7,0,1);
setcolor(lightgray);
outtextxy(325,238,'D');
outtextxy(305,238,'S');
outtextxy(290,238,'S');
outtextxy(340,238,'E');
outtextxy(275,238,'E');
outtextxy(355,238,'N');
outtextxy(263,238,'C');
outtextxy(370,238,'I');
outtextxy(251,238,'C');
outtextxy(380,238,'E');
outtextxy(236,238,'A');
outtextxy(395,238,'D');
settextstyle(1,0,1);
outtextxy(315,285,chr(tries));
dec(tries);
end else  if pas<>s then
begin
setcolor(lightgray);
settextstyle(1,0,1);
outtextxy(315,285,chr(49));
setcolor(darkgray);
outtextxy(315,285,chr(48));
strelki:=0;
settextstyle(7,0,1);
repeat
setcolor(white);
line(439-strelki,242,428-strelki,250);
line(439-strelki,258,428-strelki,250);
line(431-strelki,242,420-strelki,250);
line(431-strelki,258,420-strelki,250);

line(202+strelki,242,213+strelki,250);
line(202+strelki,258,213+strelki,250);
line(210+strelki,242,221+strelki,250);
line(210+strelki,258,221+strelki,250);
if strelki in [120..127] then outtextxy(317,238,'E');
if strelki in [132..143] then outtextxy(333,238,'S');
if strelki in [165..183] then outtextxy(259,238,'O');
if strelki in [183..210] then outtextxy(244,238,'N');
if strelki in [127..135] then outtextxy(308,238,'I') else
if strelki in [135..148] then outtextxy(292,238,'R')
else if strelki in [148..163] then begin
outtextxy(281,238,'T');
outtextxy(355,238,'L');
end else if strelki in [168..181] then outtextxy(369,238,'E')
else if strelki in [181..194] then outtextxy(384,238,'F')
else if strelki in [194..215] then outtextxy(399,238,'T');
delay(15);
setcolor(lightgray);
line(439-strelki,242,428-strelki,250);
line(439-strelki,258,428-strelki,250);
line(431-strelki,242,420-strelki,250);
line(431-strelki,258,420-strelki,250);

line(202+strelki,242,213+strelki,250);
line(202+strelki,258,213+strelki,250);
line(210+strelki,242,221+strelki,250);
line(210+strelki,258,221+strelki,250);

inc(strelki);
until strelki=218;
dec(tries);
delay(1500);
end;
while keypressed do
readkey;
until (pas=s) or (tries=48);
if (tries=48) and (pas<>s) then begin
halt;
end;
end;

procedure adm_user;
begin
setfillstyle(1,darkgray);
bar(0,0,700,700);
setlinestyle(0,0,3);
setcolor(black);
arc(320,240,89,270,234);
ellipse(299,358,280,90,128,118);
ellipse(333,125,92,255,128,118);
setfillstyle(1,black);
floodfill(240,450,black);
floodfill(245,20,black);
setcolor(white);
circle(320,359,46);
setfillstyle(1,white);
floodfill(320,370,white);


setcolor(black);
arc(319,241,270,90,234);
setcolor(white);
arc(319,241,272,90,233);
ellipse(303,358,281,88,126,118);
ellipse(333,125,95,262,126,117);
setfillstyle(1,white);
floodfill(390,25,white);
floodfill(390,457,white);
setcolor(black);
circle(320,127,46);
setfillstyle(1,black);
floodfill(320,130,black);
setcolor(black);
settextstyle(7,0,3);
outtextxy(279,345,'ADMIN');
setcolor(white);
outtextxy(288,112,'USER');
settextstyle(0,0,0);
ent:=1;
repeat
if ent=1 then ent_verh else ent_niz;
g:=readkey;
if ord(g)=0 then g:=readkey;
case g of
#72:if ent=1 then ent:=2 else ent:=1;
#80:if ent=1 then ent:=2 else ent:=1;
#13:if ent=2 then admin:=true;
end;
until (g=#27) or (g=#13);
if g=#27 then halt;
setcolor(white);
settextstyle(7,0,3);
outtextxy(279,345,'ADMIN');
setcolor(black);
outtextxy(288,112,'USER');
settextstyle(0,0,0);
close_big;


if admin=false then
user else adm;
delay(2000);
end;

procedure back_color;
begin
assign(col,'color.txt');
reset(col);
read(col,ground);
if admin=true then color:=ground.col_adm else
color:=ground.col_user;
close(col);
end;

procedure perecl_col;
begin
if gr>6 then gr:=gr+1;
while keypressed
do readkey;
setfillstyle(1,gr);
floodfill(10,300,white);
floodfill(500,300,white);
if gr>6 then gr:=gr-1;
strelki:=0;
strel:=false;
repeat
setcolor(darkgray);
line(85-strelki+gr*40,92,76-strelki+gr*40,96);
line(85-strelki+gr*40,100,76-strelki+gr*40,96);

delay(230-i*30);

setcolor(lightgray);
line(85-strelki+gr*40,92,76-strelki+gr*40,96);
line(85-strelki+gr*40,100,76-strelki+gr*40,96);

if strel=true then dec(strelki) else
inc(strelki);
if strelki=0 then strel:=false;
if strelki=3 then strel:=true;
until keypressed;
delay(300);
end;

procedure open_col;
begin
if admin=true then begin
setcolor(lightgray);
outtextxy(164,92,'€‹œ');
outtextxy(288,92,'–‚…’ ”€');
outtextxy(440,92,'‚›•„');
delay(300);
setcolor(color);
arc(369,95,270,90,15);
arc(273,95,90,270,15);
arc(234,95,270,90,15);
arc(408,95,90,270,15);
arc(138,95,90,270,15);
arc(504,95,270,90,15);
end else begin
setcolor(lightgray);
outtextxy(218,92,'–‚…’ ”€');
outtextxy(373,92,'‚›•„');
delay(300);
setcolor(color);
arc(302,95,270,90,15);
arc(206,95,90,270,15);
arc(437,95,270,90,15);
arc(341,95,90,270,15);
end;
setcolor(white);
line(40,80,600,80);
line(40,110,600,110);
arc(40,95,90,270,15);
arc(600,95,270,90,15);
setfillstyle(1,lightgray);
floodfill(220,90,white);
delay(100);
j:=0;
repeat
if j<7 then i:=j*40 else
i:=j*40-40;
setcolor(j);
circle(60+i,95,7);
setfillstyle(1,j);
floodfill(60+i,95,j);
setcolor(darkgray);
circle(60+i,95,8);
inc(j);
if j=7 then
j:=8;
until j=15;
i:=2;
j:=1;
end;

procedure close_col;
begin
i:=0;
repeat
setcolor(lightgray);
circle(60+i*40,95,8);
setfillstyle(1,lightgray);
floodfill(60+i*40,95,lightgray);
inc(i);
until i=14;
i:=2;
delay(200);
setfillstyle(1,color);
floodfill(100,100,color);
if admin=true then begin
setcolor(white);
arc(369,95,270,90,15);
line(273,80,369,80);
line(273,110,369,110);
arc(273,95,90,270,15);
setfillstyle(1,lightgray);
floodfill(300,100,white);
arc(234,95,270,90,15);
line(138,80,234,80);
line(138,110,234,110);
arc(138,95,90,270,15);
setfillstyle(1,lightgray);
floodfill(170,100,white);
arc(504,95,270,90,15);
line(408,80,504,80);
line(408,110,504,110);
arc(408,95,90,270,15);
setfillstyle(1,lightgray);
floodfill(450,100,white);
delay(300);
outtextxy(288,92,'–‚…’ ”€');
setcolor(darkgray);
outtextxy(164,92,'€‹œ');
outtextxy(440,92,'‚›•„');
end else begin
setcolor(white);
arc(302,95,270,90,15);
line(206,80,302,80);
line(206,110,302,110);
arc(206,95,90,270,15);
setfillstyle(1,lightgray);
floodfill(240,100,white);
arc(437,95,270,90,15);
line(341,80,437,80);
line(341,110,437,110);
arc(341,95,90,270,15);
setfillstyle(1,lightgray);
floodfill(370,100,white);
delay(300);
outtextxy(218,92,'–‚…’ ”€');
setcolor(darkgray);
outtextxy(373,92,'‚›•„');
end;
end;

procedure menu_col;
begin
open_col;
while keypressed
do readkey;
gr:=color;
if gr>6 then gr:=gr-1;
perecl_col;
repeat
g:=readkey;
if ord(g)=0 then g:=readkey;
case g of
#75:begin
if gr<>0 then dec(gr) else gr:=13;
perecl_col;
end;
#77:begin
if gr<>13 then inc(gr) else gr:=0;
perecl_col;
end;
end;
until (g=#13) or (g=#27);
if g=#27 then begin
g:=' ';
setfillstyle(1,color);
floodfill(10,300,white);
floodfill(500,300,white);
end else begin
if gr>6 then gr:=gr+1;
color:=gr;
assign(col,'color.txt');
rewrite(col);
if admin=true then ground.col_adm:=color else
ground.col_user:=color;
write(col,ground);
close(col);
end;
while keypressed
do readkey;
close_col;

while keypressed
do readkey;
end;


procedure _left;
begin
setcolor(darkgray);
outtextxy(87,167,'„‹†‘’ˆ');
outtextxy(82,207,'‘’“„ˆŠˆ');
outtextxy(66,247,'‚‡›‘Š');
outtextxy(105,248,'./');
outtextxy(122,247,'€ƒ€†„');
outtextxy(177,248,'.');
outtextxy(103,287,'Š“‘›');
outtextxy(103,328,'‚›•„');
setcolor(white);
end;
procedure _opt;
begin
setcolor(darkgray);
if admin=true then begin
outtextxy(93,147,'‘‡„€ˆ…');
outtextxy(93,187,'‘Œ’');
outtextxy(82,227,'„€‚‹…ˆ…');
outtextxy(93,267,'“„€‹…ˆ…');
outtextxy(66,307,'…„€Š’ˆ‚€ˆ…');
outtextxy(103,347,'ˆ‘Š');
outtextxy(103,387,'‚›•„');
end else
begin
outtextxy(93,207,'‘Œ’');
outtextxy(103,247,'ˆ‘Š');
outtextxy(103,287,'‚›•„');
end;
setcolor(white);
end;
procedure left_open;
begin
setcolor(white);
setfillstyle(1,lightgray);
ellipse(187,250,90,270,43,50);
line(188,200,188,301);
floodfill(166,240,white);
setcolor(lightgray);
line(185,210,185,290);
floodfill(172,245,lightgray);
setcolor(color);
setlinestyle(0,0,0);
line(190,200,190,301);
arc(320,250,150,210,127);
setfillstyle(1,color);
floodfill(191,250,color);
setlinestyle(0,0,3);
arc(320,250,170,210,127);

delay(200);
setfillstyle(1,color);
floodfill(150,250,color);
setfillstyle(1,lightgray);

setcolor(white);
setfillstyle(1,lightgray);
ellipse(112,250,90,270,43,50);
line(113,200,113,301);
floodfill(90,240,white);
setcolor(white);
arc(139,250,90,270,15);
line(139,235,200,235);
line(139,265,200,265);
floodfill(170,250,white);

delay(200);
setcolor(color);
setlinestyle(0,0,0);
arc(320,250,150,210,127);
setfillstyle(1,color);
floodfill(160,250,color);
setlinestyle(0,0,3);
arc(320,250,170,210,127);
floodfill(100,250,color);

setcolor(white);
setfillstyle(1,lightgray);
ellipse(47,250,90,270,43,50);
line(48,200,48,301);
floodfill(46,240,white);
setcolor(white);
arc(74,250,90,270,15);
arc(170,250,270,90,15);
line(74,235,170,235);
line(74,265,170,265);
floodfill(180,250,white);

delay(300);
setcolor(white);
arc(74,210,90,270,15);
arc(170,210,270,90,15);
line(74,195,170,195);
line(74,225,170,225);
setfillstyle(1,lightgray);
floodfill(180,210,white);
setcolor(white);
arc(74,290,90,270,15);
arc(170,290,270,90,15);
line(74,275,170,275);
line(74,305,170,305);
setfillstyle(1,lightgray);
floodfill(180,290,white);
delay(200);
setcolor(white);
arc(74,170,90,270,15);
arc(170,170,270,90,15);
line(74,155,170,155);
line(74,185,170,185);
setfillstyle(1,lightgray);
floodfill(180,170,white);
setcolor(white);
arc(74,330,90,270,15);
arc(170,330,270,90,15);
line(74,315,170,315);
line(74,345,170,345);
setfillstyle(1,lightgray);
floodfill(180,330,white);
delay(100);
setcolor(darkgray);
outtextxy(87,167,'„‹†‘’ˆ');
outtextxy(82,207,'‘’“„ˆŠˆ');
outtextxy(66,247,'‚‡›‘Š');
outtextxy(105,248,'./');
outtextxy(122,247,'€ƒ€†„');
outtextxy(177,248,'.');
outtextxy(103,287,'Š“‘›');
outtextxy(103,328,'‚›•„');
end;

procedure left_close;
begin
setcolor(lightgray);
outtextxy(87,167,'„‹†‘’ˆ');
outtextxy(82,207,'‘’“„ˆŠˆ');
outtextxy(66,247,'‚‡›‘Š');
outtextxy(105,248,'./');
outtextxy(122,247,'€ƒ€†„');
outtextxy(177,248,'.');
outtextxy(103,287,'Š“‘›');
outtextxy(103,328,'‚›•„');

delay(100);
setfillstyle(1,color);
floodfill(180,330,color);
floodfill(180,170,color);
delay(200);
floodfill(180,290,color);
floodfill(180,210,color);
delay(200);
floodfill(30,250,color);
floodfill(180,250,color);
setfillstyle(1,lightgray);

setcolor(white);
setfillstyle(1,lightgray);
ellipse(112,250,90,270,43,50);
line(113,200,113,301);
floodfill(90,240,white);
setcolor(white);
arc(139,250,90,270,15);
line(139,235,200,235);
line(139,265,200,265);
floodfill(170,250,white);

delay(200);
setcolor(color);
setlinestyle(0,0,0);
arc(320,250,150,210,127);
setfillstyle(1,color);
floodfill(160,250,color);
setlinestyle(0,0,3);
arc(320,250,170,210,127);
floodfill(100,250,color);

setcolor(white);
setfillstyle(1,lightgray);
ellipse(187,250,90,270,43,50);
line(188,200,188,301);
floodfill(166,240,white);
setcolor(lightgray);
line(185,210,185,290);
floodfill(172,245,lightgray);
setcolor(color);
setlinestyle(0,0,0);
line(190,200,190,301);
arc(320,250,150,210,127);
setfillstyle(1,color);
floodfill(191,250,color);
setlinestyle(0,0,3);
arc(320,250,170,210,127);
delay(200);
setfillstyle(1,color);
floodfill(180,250,color);
setcolor(white);
ellipse(215,250,106,254,43,50);
setfillstyle(1,lightgray);
floodfill(174,250,white);
end;

procedure open_opt;
begin
setcolor(lightgray);
outtextxy(87,167,'„‹†‘’ˆ');
outtextxy(82,207,'‘’“„ˆŠˆ');
outtextxy(66,247,'‚‡›‘Š');
outtextxy(105,248,'./');
outtextxy(122,247,'€ƒ€†„');
outtextxy(177,248,'.');
outtextxy(103,287,'Š“‘›');
outtextxy(103,328,'‚›•„');
delay(100);
setfillstyle(1,color);
floodfill(180,330,color);
floodfill(180,170,color);
delay(200);
floodfill(180,290,color);
floodfill(180,210,color);
delay(300);
floodfill(180,250,color);
setcolor(white);
setfillstyle(1,lightgray);
arc(74,230,90,270,15);
arc(170,230,270,90,15);
line(74,215,170,215);
line(74,245,170,245);
floodfill(180,230,white);
delay(200);
setcolor(white);
arc(74,270,90,270,15);
arc(170,270,270,90,15);
line(74,255,170,255);
line(74,285,170,285);
floodfill(170,280,white);
delay(200);
setcolor(white);
arc(74,190,90,270,15);
arc(170,190,270,90,15);
line(74,175,170,175);
line(74,205,170,205);
floodfill(180,190,white);
setcolor(white);
arc(74,310,90,270,15);
arc(170,310,270,90,15);
line(74,295,170,295);
line(74,325,170,325);
floodfill(180,310,white);
delay(200);
setcolor(white);
arc(74,150,90,270,15);
arc(170,150,270,90,15);
line(74,135,170,135);
line(74,165,170,165);
floodfill(180,150,white);
setcolor(white);
arc(74,350,90,270,15);
arc(170,350,270,90,15);
line(74,335,170,335);
line(74,365,170,365);
floodfill(180,350,white);
delay(200);
setcolor(white);
arc(74,390,90,270,15);
arc(170,390,270,90,15);
line(74,375,170,375);
line(74,405,170,405);
floodfill(180,390,white);
delay(100);
setcolor(darkgray);
outtextxy(93,147,'‘‡„€ˆ…');
outtextxy(93,187,'‘Œ’');
outtextxy(82,227,'„€‚‹…ˆ…');
outtextxy(93,267,'“„€‹…ˆ…');
outtextxy(66,307,'…„€Š’ˆ‚€ˆ…');
outtextxy(103,347,'ˆ‘Š');
outtextxy(103,387,'‚›•„');
end;
procedure open_opt_user;
begin
setcolor(lightgray);
outtextxy(87,167,'„‹†‘’ˆ');
outtextxy(82,207,'‘’“„ˆŠˆ');
outtextxy(66,247,'‚‡›‘Š');
outtextxy(105,248,'./');
outtextxy(122,247,'€ƒ€†„');
outtextxy(177,248,'.');
outtextxy(103,287,'Š“‘›');
outtextxy(103,328,'‚›•„');
delay(100);
setfillstyle(1,color);
floodfill(180,330,color);
floodfill(180,170,color);
delay(200);
floodfill(180,290,color);
floodfill(180,210,color);
delay(200);
setcolor(white);
arc(74,210,90,270,15);
arc(170,210,270,90,15);
line(74,195,170,195);
line(74,225,170,225);
setfillstyle(1,lightgray);
floodfill(180,210,white);
setcolor(white);
arc(74,290,90,270,15);
arc(170,290,270,90,15);
line(74,275,170,275);
line(74,305,170,305);
setfillstyle(1,lightgray);
floodfill(180,290,white);
delay(100);
setcolor(darkgray);
outtextxy(93,207,'‘Œ’');
outtextxy(103,247,'ˆ‘Š');
outtextxy(103,287,'‚›•„');
end;

procedure close_opt;
begin
setcolor(lightgray);
outtextxy(93,147,'‘‡„€ˆ…');
outtextxy(93,187,'‘Œ’');
outtextxy(82,227,'„€‚‹…ˆ…');
outtextxy(93,267,'“„€‹…ˆ…');
outtextxy(66,307,'…„€Š’ˆ‚€ˆ…');
outtextxy(103,347,'ˆ‘Š');
outtextxy(103,387,'‚›•„');
delay(100);
setfillstyle(1,color);
floodfill(74,390,color);
delay(200);
floodfill(74,150,color);
floodfill(74,350,color);
delay(200);
floodfill(74,300,color);
floodfill(74,200,color);
delay(200);
floodfill(74,270,color);
delay(200);
floodfill(74,240,color);
setcolor(white);
setfillstyle(1,lightgray);
arc(74,250,90,270,15);
arc(170,250,270,90,15);
line(74,235,170,235);
line(74,265,170,265);
floodfill(180,250,white);
delay(200);
setcolor(white);
arc(74,210,90,270,15);
arc(170,210,270,90,15);
line(74,195,170,195);
line(74,225,170,225);
setfillstyle(1,lightgray);
floodfill(180,210,white);
setcolor(white);
arc(74,290,90,270,15);
arc(170,290,270,90,15);
line(74,275,170,275);
line(74,305,170,305);
setfillstyle(1,lightgray);
floodfill(180,290,white);
delay(200);
setcolor(white);
arc(74,170,90,270,15);
arc(170,170,270,90,15);
line(74,155,170,155);
line(74,185,170,185);
setfillstyle(1,lightgray);
floodfill(180,170,white);
setcolor(white);
arc(74,330,90,270,15);
arc(170,330,270,90,15);
line(74,315,170,315);
line(74,345,170,345);
setfillstyle(1,lightgray);
floodfill(180,330,white);
delay(100);
setcolor(darkgray);
outtextxy(87,167,'„‹†‘’ˆ');
outtextxy(82,207,'‘’“„ˆŠˆ');
outtextxy(66,247,'‚‡›‘Š');
outtextxy(105,248,'./');
outtextxy(122,247,'€ƒ€†„');
outtextxy(177,248,'.');
outtextxy(103,287,'Š“‘›');
outtextxy(103,328,'‚›•„');
end;

procedure close_opt_user;
begin
setcolor(lightgray);
outtextxy(93,207,'‘Œ’');
outtextxy(103,247,'ˆ‘Š');
outtextxy(103,287,'‚›•„');
delay(100);
setfillstyle(1,color);
floodfill(180,290,color);
floodfill(180,210,color);
delay(200);
setfillstyle(1,lightgray);
setcolor(white);
arc(74,210,90,270,15);
arc(170,210,270,90,15);
line(74,195,170,195);
line(74,225,170,225);
setfillstyle(1,lightgray);
floodfill(180,210,white);
setcolor(white);
arc(74,290,90,270,15);
arc(170,290,270,90,15);
line(74,275,170,275);
line(74,305,170,305);
setfillstyle(1,lightgray);
floodfill(180,290,white);
delay(200);
setcolor(white);
arc(74,170,90,270,15);
arc(170,170,270,90,15);
line(74,155,170,155);
line(74,185,170,185);
setfillstyle(1,lightgray);
floodfill(180,170,white);
setcolor(white);
arc(74,330,90,270,15);
arc(170,330,270,90,15);
line(74,315,170,315);
line(74,345,170,345);
setfillstyle(1,lightgray);
floodfill(180,330,white);
delay(100);
setcolor(darkgray);
outtextxy(87,167,'„‹†‘’ˆ');
outtextxy(82,207,'‘’“„ˆŠˆ');
outtextxy(66,247,'‚‡›‘Š');
outtextxy(105,248,'./');
outtextxy(122,247,'€ƒ€†„');
outtextxy(177,248,'.');
outtextxy(103,287,'Š“‘›');
outtextxy(103,328,'‚›•„');
end;



procedure perecl_opt;
begin
case opt of
1:begin
_opt;
delay(100);
outtextxy(93,147,'‘‡„€ˆ…');
end;
2:begin
_opt;
delay(100);
outtextxy(93,187,'‘Œ’');
end;
3:begin
_opt;
delay(100);
outtextxy(82,227,'„€‚‹…ˆ…');
end;
4:begin
_opt;
delay(100);
outtextxy(93,267,'“„€‹…ˆ…');
end;
5:begin
_opt;
delay(100);
outtextxy(66,307,'…„€Š’ˆ‚€ˆ…');
end;
6:begin
_opt;
delay(100);
outtextxy(103,347,'ˆ‘Š');
end;
7:begin
_opt;
delay(100);
outtextxy(103,387,'‚›•„');
end;
end;
end;
procedure perecl_opt_user;
begin
case opt of
1:begin
_opt;
delay(100);
outtextxy(93,207,'‘Œ’');
end;
2:begin
_opt;
delay(100);
outtextxy(103,247,'ˆ‘Š');
end;
3:begin
_opt;
delay(100);
outtextxy(103,287,'‚›•„');
end;
end;
end;



procedure perecl_left;
begin
case left of
1:begin
_left;
delay(100);
outtextxy(87,167,'„‹†‘’ˆ');
end;
2:begin
_left;
delay(100);
outtextxy(82,207,'‘’“„ˆŠˆ');
end;
3:begin
_left;
delay(100);
outtextxy(66,247,'‚‡›‘Š');
outtextxy(105,248,'./');
outtextxy(122,247,'€ƒ€†„');
outtextxy(177,248,'.');
end;
4:begin
_left;
delay(100);
outtextxy(103,287,'Š“‘›');
end;
5:begin
_left;
delay(100);
outtextxy(103,328,'‚›•„');
end;
end;
end;


procedure _right;
begin
setcolor(darkgray);
outtextxy(490,148,'‡€„€—€ 1');
outtextxy(490,188,'‡€„€—€ 2');
outtextxy(490,228,'‡€„€—€ 3');
outtextxy(490,268,'‡€„€—€ 4');
outtextxy(490,308,'‡€„€—€ 5');
outtextxy(500,348,'‚›•„');
setcolor(white);
end;

procedure perecl_right;
begin
case right of
1:begin
_right;
delay(100);
outtextxy(490,148,'‡€„€—€ 1');
end;
2:begin
_right;
delay(100);
outtextxy(490,188,'‡€„€—€ 2');
end;
3:begin
_right;
delay(100);
outtextxy(490,228,'‡€„€—€ 3');
end;
4:begin
_right;
delay(100);
outtextxy(490,268,'‡€„€—€ 4');
end;
5:begin
_right;
delay(100);
outtextxy(490,308,'‡€„€—€ 5');
end;
6:begin
_right;
delay(100);
outtextxy(500,348,'‚›•„');
end;
end;
end;


procedure right_open;
begin
setcolor(white);
setfillstyle(1,lightgray);
ellipse(453,250,270,90,43,50);
line(452,200,452,301);
floodfill(480,240,white);
setcolor(lightgray);
line(455,210,455,290);
floodfill(467,245,lightgray);
setcolor(color);
setlinestyle(0,0,0);
line(450,200,450,301);
arc(320,250,330,30,127);
setfillstyle(1,color);
floodfill(448,250,color);
setlinestyle(0,0,3);
arc(320,250,330,30,127);
arc(320,250,330,30,129);
delay(200);

setfillstyle(1,color);
floodfill(460,250,color);

setfillstyle(1,lightgray);
setcolor(white);
setfillstyle(1,lightgray);
ellipse(528,250,270,90,43,50);
line(527,200,527,301);
floodfill(540,240,white);
setcolor(white);
arc(501,250,270,90,15);
line(440,235,501,235);
line(440,265,501,265);
floodfill(470,250,white);

delay(200);
setcolor(color);
setlinestyle(0,0,3);
arc(320,250,330,30,127);
arc(320,250,330,30,129);
setfillstyle(1,color);
floodfill(460,250,color);
floodfill(540,250,color);

setcolor(white);
setfillstyle(1,lightgray);
ellipse(593,250,270,90,43,50);
line(592,200,592,301);
floodfill(600,240,white);
setcolor(white);
arc(566,250,270,90,15);
line(470,235,566,235);
line(470,265,566,265);
arc(470,250,90,270,15);
floodfill(500,250,white);

delay(300);
setfillstyle(1,color);
floodfill(500,250,color);

setcolor(white);
arc(566,230,270,90,15);
line(470,215,566,215);
line(470,245,566,245);
arc(470,230,90,270,15);
setfillstyle(1,lightgray);
floodfill(500,230,white);
delay(200);
setcolor(white);
arc(566,270,270,90,15);
line(470,255,566,255);
line(470,285,566,285);
arc(470,270,90,270,15);
floodfill(500,270,white);
delay(200);
setcolor(white);
arc(566,190,270,90,15);
line(470,175,566,175);
line(470,205,566,205);
arc(470,190,90,270,15);
setfillstyle(1,lightgray);
floodfill(500,190,white);
setcolor(white);
arc(566,310,270,90,15);
line(470,295,566,295);
line(470,325,566,325);
arc(470,310,90,270,15);
floodfill(500,310,white);
delay(200);
setcolor(white);
arc(566,150,270,90,15);
line(470,135,566,135);
line(470,165,566,165);
arc(470,150,90,270,15);
setfillstyle(1,lightgray);
floodfill(500,150,white);
setcolor(white);
arc(566,350,270,90,15);
line(470,335,566,335);
line(470,365,566,365);
arc(470,350,90,270,15);
floodfill(500,350,white);
setcolor(darkgray);
outtextxy(490,148,'‡€„€—€ 1');
outtextxy(490,188,'‡€„€—€ 2');
outtextxy(490,228,'‡€„€—€ 3');
outtextxy(490,268,'‡€„€—€ 4');
outtextxy(490,308,'‡€„€—€ 5');
outtextxy(500,348,'‚›•„');
end;

procedure right_close;
begin
setcolor(lightgray);
outtextxy(490,148,'‡€„€—€ 1');
outtextxy(490,188,'‡€„€—€ 2');
outtextxy(490,228,'‡€„€—€ 3');
outtextxy(490,268,'‡€„€—€ 4');
outtextxy(490,308,'‡€„€—€ 5');
outtextxy(500,348,'‚›•„');
delay(100);
setfillstyle(1,color);
floodfill(540,150,color);
floodfill(540,350,color);
delay(200);
floodfill(540,300,color);
floodfill(540,200,color);
delay(200);
floodfill(540,270,color);
delay(200);
floodfill(540,240,color);
setcolor(white);
arc(566,250,270,90,15);
line(470,235,566,235);
line(470,265,566,265);
arc(470,250,90,270,15);
setfillstyle(1,lightgray);
floodfill(500,250,white);

delay(200);
setfillstyle(1,color);
floodfill(500,250,color);
floodfill(620,250,color);
setcolor(white);
setfillstyle(1,lightgray);
ellipse(528,250,270,90,43,50);
line(527,200,527,301);
floodfill(540,240,white);
setcolor(white);
arc(501,250,270,90,15);
line(440,235,501,235);
line(440,265,501,265);
floodfill(470,250,white);

delay(200);
setcolor(color);
setlinestyle(0,0,3);
arc(320,250,330,30,127);
arc(320,250,330,30,129);
setfillstyle(1,color);
floodfill(460,250,color);
floodfill(540,250,color);

setcolor(white);
setfillstyle(1,lightgray);
ellipse(453,250,270,90,43,50);
line(452,200,452,301);
floodfill(480,240,white);
delay(200);
setfillstyle(1,color);
floodfill(480,240,color);

setcolor(white);
ellipse(425,250,286,74,43,50);
setfillstyle(1,lightgray);
floodfill(450,250,white);
end;

procedure _bot;
begin
setcolor(darkgray);
outtextxy(145,402,' ƒ€ŒŒ…');
outtextxy(266,402,' €‡€’—ˆŠ…');
outtextxy(440,402,'‚›•„');
setcolor(white);
end;

procedure perecl_bot;
begin
case bot of
1:begin
_bot;
delay(100);
outtextxy(145,402,' ƒ€ŒŒ…');
end;
2:begin
_bot;
delay(100);
outtextxy(266,402,' €‡€’—ˆŠ…');
end;
3:begin
_bot;
delay(100);
outtextxy(440,402,'‚›•„');
end;
end;
end;


procedure open_bot;
begin
setfillstyle(1,color);
floodfill(100,420,color);
delay(200);
setcolor(white);
line(30,9,615,9);
line(30,58,615,58);
arc(35,33,90,270,25);
arc(610,33,270,90,25);
setfillstyle(1,lightgray);
floodfill(220,18,white);

setcolor(darkgray);
outtextxy(30,18,'„«ï ¯¥à¥¬¥é¥­¨ï ¯® £« ¢­®¬ã ¬¥­î ¨á¯®«ì§ã©â¥ áâà¥«ª¨, <- ¢«¥¢®, -> ¢¯à ¢®,   ');
outtextxy(39,38,'¢­¨§ ¨   ¢¢¥àå. „«ï ¢ë¡®à  «î¡®© ®¯æ¨¨ ­ ¦¬¨â¥ "Enter", ¤«ï ¢ëå®¤  "Esc".');
settextstyle(0,1,0);
outtextxy(34,32,'<-');
outtextxy(102,32,'->');
settextstyle(0,0,0);
delay(200);
setcolor(color);
setlinestyle(0,0,0);
arc(320,250,240,300,127);
setfillstyle(1,color);
floodfill(320,380,color);
setlinestyle(0,0,3);
setcolor(white);

ellipse(320,382,180,360,52,40);
line(267,381,372,381);
setfillstyle(1,lightgray);
floodfill(320,390,white);

delay(200);
setfillstyle(1,color);
floodfill(320,390,color);

ellipse(320,435,180,360,52,40);
line(267,434,372,434);
setfillstyle(1,lightgray);
floodfill(320,440,white);
setcolor(white);

arc(369,405,270,90,15);
line(273,390,369,390);
line(273,420,369,420);
arc(273,405,90,270,15);
setfillstyle(1,lightgray);
floodfill(300,405,white);
delay(300);
arc(234,405,270,90,15);
line(138,390,234,390);
line(138,420,234,420);
arc(138,405,90,270,15);
setfillstyle(1,lightgray);
floodfill(170,405,white);
arc(504,405,270,90,15);
line(408,390,504,390);
line(408,420,504,420);
arc(408,405,90,270,15);
setfillstyle(1,lightgray);
floodfill(450,405,white);
delay(200);
setcolor(darkgray);
outtextxy(145,402,' ƒ€ŒŒ…');
outtextxy(266,402,' €‡€’—ˆŠ…');
outtextxy(440,402,'‚›•„');
end;
procedure close_bot;
begin
setcolor(lightgray);
outtextxy(145,402,' ƒ€ŒŒ…');
outtextxy(266,402,' €‡€’—ˆŠ…');
outtextxy(440,402,'‚›•„');
delay(200);
setfillstyle(1,color);
floodfill(450,405,color);
floodfill(170,405,color);
delay(200);
floodfill(320,460,color);
floodfill(320,400,color);
setcolor(white);
ellipse(320,382,180,360,52,40);
line(267,381,372,381);
setfillstyle(1,lightgray);
floodfill(320,390,white);
delay(200);
setfillstyle(1,color);
floodfill(320,400,color);
setcolor(white);
ellipse(320,354,195,345,55,42);
setfillstyle(1,lightgray);
floodfill(320,380,white);

delay(200);
setfillstyle(1,color);
floodfill(100,40,color);
if exit_bot=false then begin
delay(200);
setcolor(white);
line(30,421,615,421);
line(30,470,615,470);
arc(35,445,90,270,25);
arc(610,445,270,90,25);
setfillstyle(1,lightgray);
floodfill(220,430,white);
setcolor(darkgray);
outtextxy(30,430,'„«ï ¯¥à¥¬¥é¥­¨ï ¯® £« ¢­®¬ã ¬¥­î ¨á¯®«ì§ã©â¥ áâà¥«ª¨, <- ¢«¥¢®, -> ¢¯à ¢®,   ');
outtextxy(39,450,'¢­¨§ ¨   ¢¢¥àå. „«ï ¢ë¡®à  «î¡®© ®¯æ¨¨ ­ ¦¬¨â¥ "Enter", ¤«ï ¢ëå®¤  "Esc".');
settextstyle(0,1,0);
outtextxy(34,444,'<-');
outtextxy(102,444,'->');
settextstyle(0,0,0);
end;
end;

procedure _up;
begin
setcolor(darkgray);
if admin=true then begin
outtextxy(164,92,'€‹œ');
outtextxy(288,92,'–‚…’ ”€');
outtextxy(440,92,'‚›•„');
end else begin
outtextxy(218,92,'–‚…’ ”€');
outtextxy(373,92,'‚›•„');
end;
setcolor(white);
end;

procedure perecl_up;
begin
if admin=true then
case up of
1:begin
_up;
delay(100);
outtextxy(164,92,'€‹œ');
end;
2:begin
_up;
delay(100);
outtextxy(288,92,'–‚…’ ”€');
end;
3:begin
_up;
delay(100);
outtextxy(440,92,'‚›•„');
end;
end else
case up of
1:begin
_up;
delay(100);
outtextxy(218,92,'–‚…’ ”€');
end;
2:begin
_up;
delay(100);
outtextxy(373,92,'‚›•„');
end;
end;
end;


procedure open_up;
begin
setcolor(color);
setlinestyle(0,0,0);
arc(320,250,50,130,127);
setfillstyle(1,color);
floodfill(320,120,color);
setlinestyle(0,0,3);
arc(320,250,50,130,127);
setcolor(white);

ellipse(320,118,360,180,52,40);
line(267,119,372,119);
setfillstyle(1,lightgray);
floodfill(320,100,white);

delay(200);
setfillstyle(1,color);
floodfill(320,100,color);

ellipse(320,65,360,180,52,40);
line(267,66,372,66);
setfillstyle(1,lightgray);
floodfill(320,30,white);

arc(369,95,270,90,15);
line(273,80,369,80);
line(273,110,369,110);
arc(273,95,90,270,15);
setfillstyle(1,lightgray);
floodfill(300,100,white);
delay(300);
if admin=true then begin
arc(234,95,270,90,15);
line(138,80,234,80);
line(138,110,234,110);
arc(138,95,90,270,15);
setfillstyle(1,lightgray);
floodfill(170,100,white);
arc(504,95,270,90,15);
line(408,80,504,80);
line(408,110,504,110);
arc(408,95,90,270,15);
setfillstyle(1,lightgray);
floodfill(450,100,white);
delay(300);
setcolor(darkgray);
outtextxy(164,92,'€‹œ');
outtextxy(288,92,'–‚…’ ”€');
outtextxy(440,92,'‚›•„');
end else begin
setfillstyle(1,color);
floodfill(300,100,color);

arc(302,95,270,90,15);
line(206,80,302,80);
line(206,110,302,110);
arc(206,95,90,270,15);
setfillstyle(1,lightgray);
floodfill(240,100,white);
delay(200);
arc(437,95,270,90,15);
line(341,80,437,80);
line(341,110,437,110);
arc(341,95,90,270,15);
setfillstyle(1,lightgray);
floodfill(370,100,white);
delay(300);
setcolor(darkgray);
outtextxy(218,92,'–‚…’ ”€');
outtextxy(373,92,'‚›•„');
end;
end;

procedure close_up;
begin
if admin=true then begin
setcolor(lightgray);
outtextxy(164,92,'€‹œ');
outtextxy(288,92,'–‚…’ ”€');
outtextxy(440,92,'‚›•„');
delay(300);
setfillstyle(1,color);
floodfill(160,100,color);
floodfill(440,100,color);
end else begin
setcolor(lightgray);
outtextxy(218,92,'–‚…’ ”€');
outtextxy(373,92,'‚›•„');
delay(300);
setfillstyle(1,color);
floodfill(370,100,color);
delay(200);
floodfill(240,100,color);
setcolor(white);
arc(369,95,270,90,15);
line(273,80,369,80);
line(273,110,369,110);
arc(273,95,90,270,15);
setfillstyle(1,lightgray);
floodfill(300,100,white);
end;
setfillstyle(1,color);
delay(300);
floodfill(300,100,color);
floodfill(300,60,color);

setcolor(white);
ellipse(320,118,360,180,52,40);
line(267,119,372,119);
setfillstyle(1,lightgray);
floodfill(320,100,white);
delay(200);
setfillstyle(1,color);
floodfill(320,100,color);

ellipse(320,146,1,165,55,42);
setfillstyle(1,lightgray);
floodfill(320,120,white);
end;

procedure pass_change;
begin
setcolor(lightgray);
circle(320,250,34);
circle(320,250,33);
outtextxy(295,332,'‘€‚Š€');
outtextxy(287,155,'€‘’‰Šˆ');
i:=0;
setcolor(white);
circle(320,250,60);
circle(320,250,61);
repeat
setcolor(white);
line(202,250-i,438,250-i);
line(202,250+i,438,250+i);
delay(30);
if i<>14 then begin
setcolor(lightgray);
line(202,250-i,438,250-i);
line(202,250+i,438,250+i);
end;
inc(i);
until i=15;
setcolor(darkgray);
settextstyle(1,0,1);
outtextxy(297,195,'enter');
outtextxy(305,210,'new');
outtextxy(283,263,'password');
pas:='';
k:=0;
s:='';
repeat
setcolor(white);
line(262,258,272,258);
delay(100);
setcolor(lightgray);
line(262,258,272,258);
delay(100);
until keypressed;
zv:=0;
repeat
g:=readkey;
if (k<8) and (g in ['a'..'z']) then
begin
pas:=pas+g;
setcolor(white);
settextstyle(4,0,4);
outtextxy(260+zv,230,'*');
while keypressed
do readkey;
repeat
setcolor(white);
line(277+zv,258,287+zv,258);
delay(100);
setcolor(lightgray);
line(277+zv,258,287+zv,258);
delay(100);
until keypressed;
zv:=zv+15;
k:=length(pas);
end;
if (g=#8) and (zv>0) then
begin
k:=length(pas);
delete(pas,k,1);
k:=length(pas);
zv:=zv-15;
setcolor(lightgray);
settextstyle(4,0,4);
outtextxy(260+zv,230,'*');
while keypressed
do readkey;
repeat
setcolor(white);
line(262+zv,258,272+zv,258);
delay(100);
setcolor(lightgray);
line(262+zv,258,272+zv,258);
delay(100);
until keypressed;
end else if (not (g=#13)) and (not(g=#27))
and ((k=8) or (k=0) or (not(g in ['a'..'z'])))  then begin
while keypressed
do readkey;
repeat
setcolor(white);
line(262+zv,258,272+zv,258);
delay(100);
setcolor(lightgray);
line(262+zv,258,272+zv,258);
delay(100);
until keypressed;
end;
until (g=#13) or (g=#27) ;
if g=#27 then g:=' ';
if length(pas) <>0 then begin
assign(password,'path.txt');
rewrite(password);
pass.shifr:=caesarencipher(pas);
write(password,pass);
close(password);
end;
delay(200);
settextstyle(1,0,1);
setcolor(lightgray);
line(202,236,438,236);
line(202,264,438,264);
circle(320,250,60);
circle(320,250,61);
outtextxy(297,195,'enter');
outtextxy(305,210,'new');
outtextxy(283,263,'password');
i:=15;
repeat
setcolor(white);
line(202,250-i,438,250-i);
line(202,250+i,438,250+i);
delay(30);
setcolor(lightgray);
line(202,250-i,438,250-i);
line(202,250+i,438,250+i);
dec(i);
until i=0;
settextstyle(0,0,0);
delay(200);
ipod;
setcolor(white);
outtextxy(287,155,'€‘’‰Šˆ');
i:=2;
end;

procedure open_window;
begin
if exit_right=true then
begin
right_close;
setfillstyle(1,color);
floodfill(100,420,color);
end else if (exit_left=true) and (admin=false) then
begin
setcolor(lightgray);
outtextxy(93,207,'‘Œ’');
outtextxy(103,247,'ˆ‘Š');
outtextxy(103,287,'‚›•„');
delay(100);
setfillstyle(1,color);
floodfill(180,290,color);
floodfill(180,210,color);
delay(200);
floodfill(30,250,color);
floodfill(180,250,color);
setfillstyle(1,lightgray);

setcolor(white);
setfillstyle(1,lightgray);
ellipse(112,250,90,270,43,50);
line(113,200,113,301);
floodfill(90,240,white);
setcolor(white);
arc(139,250,90,270,15);
line(139,235,200,235);
line(139,265,200,265);
floodfill(170,250,white);

delay(200);
setcolor(color);
setlinestyle(0,0,0);
arc(320,250,150,210,127);
setfillstyle(1,color);
floodfill(160,250,color);
setlinestyle(0,0,3);
arc(320,250,170,210,127);
floodfill(100,250,color);

setcolor(white);
setfillstyle(1,lightgray);
ellipse(187,250,90,270,43,50);
line(188,200,188,301);
floodfill(166,240,white);
setcolor(lightgray);
line(185,210,185,290);
floodfill(172,245,lightgray);
setcolor(color);
setlinestyle(0,0,0);
line(190,200,190,301);
arc(320,250,150,210,127);
setfillstyle(1,color);
floodfill(191,250,color);
setlinestyle(0,0,3);
arc(320,250,170,210,127);
delay(200);
setfillstyle(1,color);
floodfill(180,250,color);
setcolor(white);
ellipse(215,250,106,254,43,50);
setfillstyle(1,lightgray);
floodfill(174,250,white);
setfillstyle(1,color);
floodfill(100,420,color);
end else if (exit_left=true) and (admin=true) then
begin
setcolor(lightgray);
outtextxy(93,147,'‘‡„€ˆ…');
outtextxy(93,187,'‘Œ’');
outtextxy(82,227,'„€‚‹…ˆ…');
outtextxy(93,267,'“„€‹…ˆ…');
outtextxy(66,307,'…„€Š’ˆ‚€ˆ…');
outtextxy(103,347,'ˆ‘Š');
outtextxy(103,387,'‚›•„');
delay(100);
setfillstyle(1,color);
floodfill(74,390,color);
delay(200);
floodfill(74,150,color);
floodfill(74,350,color);
delay(200);
floodfill(74,300,color);
floodfill(74,200,color);
delay(200);
floodfill(74,270,color);
delay(200);
floodfill(74,240,color);
setcolor(white);
setfillstyle(1,lightgray);
arc(74,250,90,270,15);
arc(170,250,270,90,15);
line(74,235,170,235);
line(74,265,170,265);
floodfill(180,250,white);
setfillstyle(1,color);
delay(200);
floodfill(30,250,color);
floodfill(180,250,color);
setfillstyle(1,lightgray);

setcolor(white);
setfillstyle(1,lightgray);
ellipse(112,250,90,270,43,50);
line(113,200,113,301);
floodfill(90,240,white);
setcolor(white);
arc(139,250,90,270,15);
line(139,235,200,235);
line(139,265,200,265);
floodfill(170,250,white);

delay(200);
setcolor(color);
setlinestyle(0,0,0);
arc(320,250,150,210,127);
setfillstyle(1,color);
floodfill(160,250,color);
setlinestyle(0,0,3);
arc(320,250,170,210,127);
floodfill(100,250,color);

setcolor(white);
setfillstyle(1,lightgray);
ellipse(187,250,90,270,43,50);
line(188,200,188,301);
floodfill(166,240,white);
setcolor(lightgray);
line(185,210,185,290);
floodfill(172,245,lightgray);
setcolor(color);
setlinestyle(0,0,0);
line(190,200,190,301);
arc(320,250,150,210,127);
setfillstyle(1,color);
floodfill(191,250,color);
setlinestyle(0,0,3);
arc(320,250,170,210,127);
delay(200);
setfillstyle(1,color);
floodfill(180,250,color);
setcolor(white);
ellipse(215,250,106,254,43,50);
setfillstyle(1,lightgray);
floodfill(174,250,white);
setfillstyle(1,color);
floodfill(100,420,color);
end else
if exit_bot=true then
close_bot;

setcolor(color);
circle(320,250,127);
circle(320,250,126);
setfillstyle(1,color);
floodfill(190,250,color);
floodfill(450,250,color);
floodfill(320,380,color);
floodfill(320,120,color);
setcolor(white);
circle(320,250,124);
ellipse(226,250,125,235,43,50);
ellipse(414,250,305,55,43,50);
ellipse(320,343,214,326,55,42);
ellipse(320,157,34,146,55,42);
setfillstyle(1,lightgray);
floodfill(185,250,white);
floodfill(454,250,white);
floodfill(320,383,white);
floodfill(320,118,white);
delay(100);
setcolor(color);
circle(320,250,127);
circle(320,250,126);
setfillstyle(1,color);
floodfill(190,250,color);
floodfill(450,250,color);
floodfill(320,380,color);
floodfill(320,120,color);
setcolor(white);
circle(320,250,124);
delay(200);
setcolor(white);
setfillstyle(1,white);
pieslice(320,250,0,360,119);
z:=0;
repeat
setcolor(white);
arc(320-z,250,90,270,124);
line(320-z,125,320-z,375);

arc(320+z,250,270,90,124);
line(320+z,125,320+z,375);

setfillstyle(1,white);
floodfill(250-z,200,white);
floodfill(370+z,150,white);
z:=z+50;
delay(200);
if (z<>0) and (z<>200) then begin
setcolor(color);
line(322-z,125,322-z,375);
line(318+z,125,318+z,375);
setfillstyle(1,color);
floodfill(340-z,250,color);
floodfill(300+z,250,color);
setcolor(white);
line(320-z,195,320+z,195);
line(320-z,295,320+z,295);
setfillstyle(1,lightgray);
floodfill(330-z,250,white);
end;
until z=200;
delay(300);
setcolor(lightgray);
line(172,195,468,195);
line(172,295,468,295);
setcolor(color);
line(172,125,172,375);
line(468,125,468,375);
setfillstyle(1,color);
floodfill(150,250,color);
floodfill(480,250,color);
z:=50;
repeat
setcolor(white);
arc(170,240+z,180,270,124);
line(170,240+z,170,365+z);
line(170,240+z,45,240+z);

arc(170,240-z,90,180,124);
line(170,240-z,45,240-z);
line(170,240-z,170,115-z);

arc(470,240+z,270,360,124);
line(470,240+z,470,365+z);
line(470,240+z,595,240+z);

arc(470,240-z,0,90,124);
line(470,240-z,470,115-z);
line(470,240-z,595,240-z);
setfillstyle(1,white);
floodfill(100,180-z,white);
floodfill(100,300+z,white);
floodfill(520,150-z,white);
floodfill(570,300+z,white);

if z=100 then begin setcolor(color);
line(172,145,468,145);
line(172,335,468,335);

line(173,288,173,337);
line(171,337,45,337);
line(171,288,45,288);

line(173,192,173,143);
line(171,143,45,143);
line(171,192,45,192);

line(467,288,467,337);
line(469,337,596,337);
line(469,288,596,288);

line(467,192,467,143);
line(469,143,596,143);
line(469,192,596,192);

setfillstyle(1,color);
floodfill(150,300,color);
floodfill(150,180,color);
floodfill(500,300,color);
floodfill(500,180,color);
end;

setcolor(white);
line(130,240-z,130,240+z);
line(510,240-z,510,240+z);
line(170,195-z,470,195-z);
line(170,285+z,470,285+z);
setfillstyle(1,lightgray);
floodfill(320,200-z,white);
floodfill(320,280+z,white);
floodfill(140,260-z,white);
floodfill(140,220+z,white);
z:=z+50;
delay(200);
until z=150;
while keypressed
do readkey;
end;

procedure close_window;
begin
z:=100;
repeat
z:=z-50;
setcolor(color);
arc(170,240+z,170,280,126);
line(173,285+z,173,365+z);
arc(170,240-z,80,190,126);
line(173,195-z,173,115-z);
arc(470,240+z,260,10,126);
line(467,285+z,467,365+z);
arc(470,240-z,350,100,126);
line(467,195-z,467,115-z);
line(170,192-z,470,192-z);
line(170,288+z,470,288+z);
setfillstyle(1,color);
floodfill(160,410+z,color);
floodfill(160,80-z,color);
floodfill(480,410+z,color);
floodfill(480,80-z,color);
floodfill(320,180-z,color);
floodfill(320,300+z,color);

delay(100);
setcolor(white);
arc(170,240+z,180,270,124);
line(170,240+z,170,365+z);
line(170,240+z,45,240+z);

arc(170,240-z,90,180,124);
line(170,240-z,45,240-z);
line(170,240-z,170,115-z);

arc(470,240+z,270,360,124);
line(470,240+z,470,365+z);
line(470,240+z,595,240+z);

arc(470,240-z,0,90,124);
line(470,240-z,470,115-z);
line(470,240-z,595,240-z);

line(130,240-z,130,240+z);
line(510,240-z,510,240+z);
line(170,195-z,470,195-z);
line(170,285+z,470,285+z);

setfillstyle(1,white);
floodfill(160,250+z,white);
floodfill(120,250+z,white);
floodfill(160,230-z,white);
floodfill(120,230-z,white);

floodfill(480,250+z,white);
floodfill(540,250+z,white);
floodfill(480,230-z,white);
floodfill(540,230-z,white);
delay(100);
until z=0;
delay(200);
z:=150;
repeat
z:=z-50;
setcolor(color);
arc(320-z,250,90,270,126);
arc(320+z,250,270,90,126);
setfillstyle(1,color);
floodfill(180-z,250,color);
floodfill(460+z,250,color);

setcolor(white);
arc(320-z,250,90,270,124);
line(320-z,125,320-z,375);

arc(320+z,250,270,90,124);
line(320+z,125,320+z,375);

setfillstyle(1,white);
floodfill(330+z,250,white);
floodfill(330+z,180,white);
floodfill(330+z,300,white);
floodfill(310-z,250,white);
floodfill(310-z,180,white);
floodfill(310-z,300,white);

delay(100);
until z=0;
delay(200);
setcolor(lightgray);
circle(320,250,117);
setfillstyle(1,lightgray);
floodfill(320,250,lightgray);
delay(100);
ipod;
puziri;
g:=' ';
if exit_right=true then
begin
setcolor(white);
outtextxy(373,247,'‡€„€—ˆ');
setcolor(white);
line(30,421,615,421);
line(30,470,615,470);
arc(35,445,90,270,25);
arc(610,445,270,90,25);
setfillstyle(1,lightgray);
floodfill(220,430,white);

setcolor(darkgray);
outtextxy(30,430,'„«ï ¯¥à¥¬¥é¥­¨ï ¯® £« ¢­®¬ã ¬¥­î ¨á¯®«ì§ã©â¥ áâà¥«ª¨, <- ¢«¥¢®, -> ¢¯à ¢®,   ');
outtextxy(39,450,'¢­¨§ ¨   ¢¢¥àå. „«ï ¢ë¡®à  «î¡®© ®¯æ¨¨ ­ ¦¬¨â¥ "Enter", ¤«ï ¢ëå®¤  "Esc".');
settextstyle(0,1,0);
outtextxy(34,444,'<-');
outtextxy(102,444,'->');
settextstyle(0,0,0);
right_open;
perecl_right;
end else if (exit_left=true) and (admin=false) then
begin
setcolor(white);
outtextxy(220,247,'”€‰‹');
setcolor(white);
line(30,421,615,421);
line(30,470,615,470);
arc(35,445,90,270,25);
arc(610,445,270,90,25);
setfillstyle(1,lightgray);
floodfill(220,430,white);

setcolor(darkgray);
outtextxy(30,430,'„«ï ¯¥à¥¬¥é¥­¨ï ¯® £« ¢­®¬ã ¬¥­î ¨á¯®«ì§ã©â¥ áâà¥«ª¨, <- ¢«¥¢®, -> ¢¯à ¢®,   ');
outtextxy(39,450,'¢­¨§ ¨   ¢¢¥àå. „«ï ¢ë¡®à  «î¡®© ®¯æ¨¨ ­ ¦¬¨â¥ "Enter", ¤«ï ¢ëå®¤  "Esc".');
settextstyle(0,1,0);
outtextxy(34,444,'<-');
outtextxy(102,444,'->');
settextstyle(0,0,0);
setcolor(white);
setfillstyle(1,lightgray);
ellipse(187,250,90,270,43,50);
line(188,200,188,301);
floodfill(166,240,white);
setcolor(lightgray);
line(185,210,185,290);
floodfill(172,245,lightgray);
setcolor(color);
setlinestyle(0,0,0);
line(190,200,190,301);
arc(320,250,150,210,127);
setfillstyle(1,color);
floodfill(191,250,color);
setlinestyle(0,0,3);
arc(320,250,170,210,127);

delay(200);
setfillstyle(1,color);
floodfill(150,250,color);
setfillstyle(1,lightgray);

setcolor(white);
setfillstyle(1,lightgray);
ellipse(112,250,90,270,43,50);
line(113,200,113,301);
floodfill(90,240,white);
setcolor(white);
arc(139,250,90,270,15);
line(139,235,200,235);
line(139,265,200,265);
floodfill(170,250,white);

delay(200);
setcolor(color);
setlinestyle(0,0,0);
arc(320,250,150,210,127);
setfillstyle(1,color);
floodfill(160,250,color);
setlinestyle(0,0,3);
arc(320,250,170,210,127);
floodfill(100,250,color);

setcolor(white);
setfillstyle(1,lightgray);
ellipse(47,250,90,270,43,50);
line(48,200,48,301);
floodfill(46,240,white);
setcolor(white);
arc(74,250,90,270,15);
arc(170,250,270,90,15);
line(74,235,170,235);
line(74,265,170,265);
floodfill(180,250,white);
delay(200);
setcolor(white);
arc(74,210,90,270,15);
arc(170,210,270,90,15);
line(74,195,170,195);
line(74,225,170,225);
setfillstyle(1,lightgray);
floodfill(180,210,white);
setcolor(white);
arc(74,290,90,270,15);
arc(170,290,270,90,15);
line(74,275,170,275);
line(74,305,170,305);
setfillstyle(1,lightgray);
floodfill(180,290,white);
delay(100);
setcolor(darkgray);
outtextxy(93,207,'‘Œ’');
outtextxy(103,247,'ˆ‘Š');
outtextxy(103,287,'‚›•„');
perecl_opt_user;
end else if (exit_left=true) and (admin=true) then
begin
setcolor(white);
outtextxy(220,247,'”€‰‹');
setcolor(white);
line(30,421,615,421);
line(30,470,615,470);
arc(35,445,90,270,25);
arc(610,445,270,90,25);
setfillstyle(1,lightgray);
floodfill(220,430,white);

setcolor(darkgray);
outtextxy(30,430,'„«ï ¯¥à¥¬¥é¥­¨ï ¯® £« ¢­®¬ã ¬¥­î ¨á¯®«ì§ã©â¥ áâà¥«ª¨, <- ¢«¥¢®, -> ¢¯à ¢®,   ');
outtextxy(39,450,'¢­¨§ ¨   ¢¢¥àå. „«ï ¢ë¡®à  «î¡®© ®¯æ¨¨ ­ ¦¬¨â¥ "Enter", ¤«ï ¢ëå®¤  "Esc".');
settextstyle(0,1,0);
outtextxy(34,444,'<-');
outtextxy(102,444,'->');
settextstyle(0,0,0);
setcolor(white);
setfillstyle(1,lightgray);
ellipse(187,250,90,270,43,50);
line(188,200,188,301);
floodfill(166,240,white);
setcolor(lightgray);
line(185,210,185,290);
floodfill(172,245,lightgray);
setcolor(color);
setlinestyle(0,0,0);
line(190,200,190,301);
arc(320,250,150,210,127);
setfillstyle(1,color);
floodfill(191,250,color);
setlinestyle(0,0,3);
arc(320,250,170,210,127);

delay(200);
setfillstyle(1,color);
floodfill(150,250,color);
setfillstyle(1,lightgray);

setcolor(white);
setfillstyle(1,lightgray);
ellipse(112,250,90,270,43,50);
line(113,200,113,301);
floodfill(90,240,white);
setcolor(white);
arc(139,250,90,270,15);
line(139,235,200,235);
line(139,265,200,265);
floodfill(170,250,white);

delay(200);
setcolor(color);
setlinestyle(0,0,0);
arc(320,250,150,210,127);
setfillstyle(1,color);
floodfill(160,250,color);
setlinestyle(0,0,3);
arc(320,250,170,210,127);
floodfill(100,250,color);

setcolor(white);
setfillstyle(1,lightgray);
ellipse(47,250,90,270,43,50);
line(48,200,48,301);
floodfill(46,240,white);
setcolor(white);
arc(74,250,90,270,15);
arc(170,250,270,90,15);
line(74,235,170,235);
line(74,265,170,265);
floodfill(180,250,white);
delay(300);
setfillstyle(1,color);
floodfill(180,250,color);
setcolor(white);
setfillstyle(1,lightgray);
arc(74,230,90,270,15);
arc(170,230,270,90,15);
line(74,215,170,215);
line(74,245,170,245);
floodfill(180,230,white);
delay(200);
setcolor(white);
arc(74,270,90,270,15);
arc(170,270,270,90,15);
line(74,255,170,255);
line(74,285,170,285);
floodfill(170,280,white);
delay(200);
setcolor(white);
arc(74,190,90,270,15);
arc(170,190,270,90,15);
line(74,175,170,175);
line(74,205,170,205);
floodfill(180,190,white);
setcolor(white);
arc(74,310,90,270,15);
arc(170,310,270,90,15);
line(74,295,170,295);
line(74,325,170,325);
floodfill(180,310,white);
delay(200);
setcolor(white);
arc(74,150,90,270,15);
arc(170,150,270,90,15);
line(74,135,170,135);
line(74,165,170,165);
floodfill(180,150,white);
setcolor(white);
arc(74,350,90,270,15);
arc(170,350,270,90,15);
line(74,335,170,335);
line(74,365,170,365);
floodfill(180,350,white);
delay(200);
setcolor(white);
arc(74,390,90,270,15);
arc(170,390,270,90,15);
line(74,375,170,375);
line(74,405,170,405);
floodfill(180,390,white);
delay(100);
setcolor(darkgray);
outtextxy(93,147,'‘‡„€ˆ…');
outtextxy(93,187,'‘Œ’');
outtextxy(82,227,'„€‚‹…ˆ…');
outtextxy(93,267,'“„€‹…ˆ…');
outtextxy(66,307,'…„€Š’ˆ‚€ˆ…');
outtextxy(103,347,'ˆ‘Š');
outtextxy(103,387,'‚›•„');
perecl_opt;
end else if exit_bot=true then
begin
setcolor(white);
outtextxy(295,332,'‘€‚Š€');
open_bot;
perecl_bot;
end;
while keypressed
do readkey;
end;
procedure about_prog;
begin
setcolor(darkgray);
outtextxy(235,120,'Š®¬¯«¥ªá­ ï  §  „ ­­ëå');
outtextxy(160,149,'‘®§¤ ­  ¤«ï ®¡«¥£ç¥­¨ï à ¡®âë á®âàã¤­¨ª®¢');
outtextxy(160,162,'®â¤¥«  ª ¤à®¢ ¯à¥¤¯à¨ïâ¨ï.Š®¬¯«¥ªá ¡ §');
outtextxy(160,175,'¤ ­­ëå ®â¤¥«  ª ¤à®¢ ¯à¥¤¯à¨ïâ¨ï ¢ª«îç ¥â');
outtextxy(160,188,'¢ á¥¡ï á«¥¤ãîé¨¥ ¡ §ë:„®«¦­®áâ¨,‘®âàã¤­¨ª¨,');
outtextxy(160,201,'‚§ëáª ­¨ï ¨ ­ £à ¦¤¥­¨ï, Šãàáë ¯® ¯®¢ëè¥­¨î');
outtextxy(160,214,'ª¢ «¨ä¨ª æ¨¨.');
outtextxy(160,260,'€ â ª¦¥ ¢ª«îç ¥â ¢ á¥¡ï á«¥¤ãîé¨¥ äã­ªæ¨¨');
outtextxy(160,273,'à ¡®âë á ª®¬¯«¥ªá®¬ ¡ § ¤ ­­ëå: ‘®§¤ ­¨¥,');
outtextxy(160,286,'à®á¬®âà,„®¡ ¢«¥­¨¥,“¤ «¥­¨¥,');
outtextxy(160,299,'¥¤ ªâ¨à®¢ ­¨¥,®¨áª.');
outtextxy(175,323,'à®£à ¬¬  à §à ¡®â ­  ­  TURBO Pascal 7.1');
outtextxy(373,363,'€«¬ âë 2009');
settextstyle(8,0,1);
outtextxy(180,230,'"â¤¥« ª ¤à®¢ ¯à¥¤¯à¨ïâ¨ï"');
settextstyle(0,0,0);
readkey;
setcolor(lightgray);
outtextxy(235,120,'Š®¬¯«¥ªá­ ï  §  „ ­­ëå');
outtextxy(160,149,'‘®§¤ ­  ¤«ï ®¡«¥£ç¥­¨ï à ¡®âë á®âàã¤­¨ª®¢');
outtextxy(160,162,'®â¤¥«  ª ¤à®¢ ¯à¥¤¯à¨ïâ¨ï.Š®¬¯«¥ªá ¡ §');
outtextxy(160,175,'¤ ­­ëå ®â¤¥«  ª ¤à®¢ ¯à¥¤¯à¨ïâ¨ï ¢ª«îç ¥â');
outtextxy(160,188,'¢ á¥¡ï á«¥¤ãîé¨¥ ¡ §ë:„®«¦­®áâ¨,‘®âàã¤­¨ª¨,');
outtextxy(160,201,'‚§ëáª ­¨ï ¨ ­ £à ¦¤¥­¨ï, Šãàáë ¯® ¯®¢ëè¥­¨î');
outtextxy(160,214,'ª¢ «¨ä¨ª æ¨¨.');
outtextxy(160,260,'€ â ª¦¥ ¢ª«îç ¥â ¢ á¥¡ï á«¥¤ãîé¨¥ äã­ªæ¨¨');
outtextxy(160,273,'à ¡®âë á ª®¬¯«¥ªá®¬ ¡ § ¤ ­­ëå: ‘®§¤ ­¨¥,');
outtextxy(160,286,'à®á¬®âà,„®¡ ¢«¥­¨¥,“¤ «¥­¨¥,');
outtextxy(160,299,'¥¤ ªâ¨à®¢ ­¨¥,®¨áª.');
outtextxy(175,323,'à®£à ¬¬  à §à ¡®â ­  ­  TURBO Pascal 7.1');
outtextxy(373,363,'€«¬ âë 2009');
settextstyle(8,0,1);
outtextxy(180,230,'"â¤¥« ª ¤à®¢ ¯à¥¤¯à¨ïâ¨ï"');
settextstyle(0,0,0);
end;
procedure about_dev;
begin
setcolor(darkgray);
outtextxy(235,120,'Š®¬¯«¥ªá­ ï  §  „ ­­ëå');
outtextxy(222,140,'"â¤¥« ª ¤à®¢ ¯à¥¤¯à¨ïâ¨ï"');
outtextxy(160,260,' §à ¡®â « ¨ à¥ «¨§®¢ « áâã¤¥­â £àã¯¯ë 3€');
outtextxy(175,323,'à®£à ¬¬  à §à ¡®â ­  ­  TURBO Pascal 7.1');
outtextxy(373,363,'€«¬ âë 2009');
settextstyle(8,0,1);
outtextxy(200,220,'’®ª àçãª ‹¥¢  ¢«®¢¨ç');
settextstyle(0,0,0);
readkey;
setcolor(lightgray);
outtextxy(235,120,'Š®¬¯«¥ªá­ ï  §  „ ­­ëå');
outtextxy(222,140,'"â¤¥« ª ¤à®¢ ¯à¥¤¯à¨ïâ¨ï"');
outtextxy(160,260,' §à ¡®â « ¨ à¥ «¨§®¢ « áâã¤¥­â £àã¯¯ë 3€');
outtextxy(175,323,'à®£à ¬¬  à §à ¡®â ­  ­  TURBO Pascal 7.1');
outtextxy(373,363,'€«¬ âë 2009');
settextstyle(8,0,1);
outtextxy(200,220,'’®ª àçãª ‹¥¢  ¢«®¢¨ç');
settextstyle(0,0,0);
end;

procedure menu_opt;
begin
open_opt;
while keypressed
do readkey;
opt:=1;
exit_opt:=true;
setcolor(white);
outtextxy(93,147,'‘‡„€ˆ…');
repeat
g:=readkey;
if ord(g)=0 then g:=readkey;
case g of
#72:begin
if opt<>1 then dec(opt) else opt:=7;
perecl_opt;
end;
#80:begin
if opt<>7 then inc(opt) else opt:=1;
perecl_opt;
end;
#13:
case opt of
1:begin
open_window;
case left of
1:create_1;
2:create_2;
3:create_3;
4:create_4;
end;
close_window;
end;
2:begin
open_window;
case left of
1:view_1;
2:view_2;
3:view_3;
4:view_4;
end;
close_window;
end;
3:begin
open_window;
case left of
1:add_1;
2:add_2;
3:add_3;
4:add_4;
end;
close_window;
end;
4:begin
open_window;
case left of
1:del_1;
2:del_2;
3:del_3;
4:del_4;
end;
close_window;
end;
5:begin
open_window;
case left of
1:edit_1;
2:edit_2;
3:edit_3;
4:edit_4;
end;
close_window;
end;
6:begin
open_window;
case left of
1:search_1;
2:search_2;
3:search_3;
4:search_4;
end;
close_window;
end;
7:exit_opt:=false;
end;
end;
until (exit_opt=false) or (g=#27);
while keypressed
do readkey;
exit_opt:=false;
close_opt;
if g=#27 then g:=' ';
while keypressed
do readkey;
perecl_left;
end;

procedure menu_opt_user;
begin
open_opt_user;
while keypressed
do readkey;
opt:=1;
exit_opt:=true;
setcolor(white);
outtextxy(93,207,'‘Œ’');
repeat
g:=readkey;
if ord(g)=0 then g:=readkey;
case g of
#72:begin
if opt<>1 then dec(opt) else opt:=3;
perecl_opt_user;
end;
#80:begin
if opt<>3 then inc(opt) else opt:=1;
perecl_opt_user;
end;
#13:
case opt of
1:begin
open_window;
case left of
1:view_1;
2:view_2;
3:view_3;
4:view_4;
end;
close_window;
end;
2:begin
open_window;
case left of
1:search_1;
2:search_2;
3:search_3;
4:search_4;
end;
close_window;
end;
3:exit_opt:=false;
end;
end;
until (exit_opt=false) or (g=#27);
while keypressed
do readkey;
exit_opt:=false;
close_opt_user;
if g=#27 then g:=' ';
while keypressed
do readkey;
perecl_left;
end;


procedure menu_left;
begin
left_open;
while keypressed
do readkey;
left:=1;
exit_left:=true;
setcolor(white);
outtextxy(87,167,'„‹†‘’ˆ');
repeat
g:=readkey;
if ord(g)=0 then g:=readkey;
case g of
#72:begin
if left<>1 then dec(left) else left:=5;
perecl_left;
end;
#80:begin
if left<>5 then inc(left) else left:=1;
perecl_left;
end;
#13:
case left of
1:if admin=true then menu_opt else menu_opt_user;
2:if admin=true then menu_opt else menu_opt_user;
3:if admin=true then menu_opt else menu_opt_user;
4:if admin=true then menu_opt else menu_opt_user;
5:exit_left:=false;
end;
end;
until (exit_left=false) or (g=#27);
exit_left:=false;
left_close;
if g=#27 then g:=' ';
while keypressed
do readkey;
setcolor(white);
end;

procedure menu_right;
begin
right_open;
while keypressed
do readkey;
right:=1;
exit_right:=true;
setcolor(white);
outtextxy(490,148,'‡€„€—€ 1');
repeat
g:=readkey;
if ord(g)=0 then g:=readkey;
case g of
#72:begin
if right<>1 then dec(right) else right:=6;
perecl_right;
end;
#80:begin
if right<>6 then inc(right) else right:=1;
perecl_right;
end;
#13:
case right of
1:begin
open_window;
task_1;
close_window;
end;
2:begin
open_window;
task_2;
close_window;
end;
3:begin
open_window;
task_3;
close_window;
end;
4:begin
open_window;
task_4;
close_window;
end;
5:begin
open_window;
task_5;
close_window;
end;
6:exit_right:=false;
end;
end;
until (exit_right=false) or (g=#27);
while keypressed
do readkey;
exit_right:=false;
right_close;
if g=#27 then g:=' ';
while keypressed
do readkey;
end;

procedure menu_bot;
begin
open_bot;
while keypressed
do readkey;
bot:=1;
exit_bot:=true;
setcolor(white);
outtextxy(145,402,' ƒ€ŒŒ…');
repeat
g:=readkey;
if ord(g)=0 then g:=readkey;
case g of
#75:begin
if bot<>1 then dec(bot) else bot:=3;
perecl_bot;
end;
#77:begin

if bot<>3 then inc(bot) else bot:=1;
perecl_bot;
end;
#13:
case bot of
1:begin
open_window;
about_prog;
close_window;
end;
2:begin
open_window;
about_dev;
close_window;
end;
3:exit_bot:=false;
end;
end;
until (exit_bot=false) or (g=#27);
while keypressed
do readkey;
exit_bot:=false;
close_bot;
if g=#27 then g:=' ';
while keypressed
do readkey;
end;


procedure menu_up;
begin
open_up;
while keypressed
do readkey;
up:=1;
exit_up:=true;
setcolor(white);
if admin=true then  outtextxy(164,92,'€‹œ')
else outtextxy(218,92,'–‚…’ ”€');
repeat
g:=readkey;
if ord(g)=0 then g:=readkey;
if admin=true then
case g of
#75:begin
if up<>1 then dec(up) else up:=3;
perecl_up;
end;
#77:begin
if up<>3 then inc(up) else up:=1;
perecl_up;
end;
#13:
case up of
1:pass_change;
2:menu_col;
3:exit_up:=false;
end;
end else
case g of
#75:begin
if up<>1 then dec(up) else up:=2;
perecl_up;
end;
#77:begin
if up<>2 then inc(up) else up:=1;
perecl_up;
end;
#13:
case up of
1:menu_col;
2:exit_up:=false;
end;
end;
until (exit_up=false) or (g=#27);
exit_up:=false;
close_up;
if g=#27 then g:=' ';
while keypressed
do readkey;
end;



procedure main_menu;
begin
back_color;
setcolor(color);
setlinestyle(0,0,3);
for i:=1 to 320 do
rectangle(0+i,0+round(i*0.7),640-i,480-round(i*0.7));
while keypressed do
readkey;
i:=1;
j:=2;
settextstyle(10,0,0);
inyan:=2;
ipod;
outtextxy(220,247,'”€‰‹');

setcolor(white);
line(30,421,615,421);
line(30,470,615,470);
arc(35,445,90,270,25);
arc(610,445,270,90,25);
setfillstyle(1,lightgray);
floodfill(220,430,white);

setcolor(darkgray);
outtextxy(30,430,'„«ï ¯¥à¥¬¥é¥­¨ï ¯® £« ¢­®¬ã ¬¥­î ¨á¯®«ì§ã©â¥ áâà¥«ª¨, <- ¢«¥¢®, -> ¢¯à ¢®,   ');
outtextxy(39,450,'¢­¨§ ¨   ¢¢¥àå. „«ï ¢ë¡®à  «î¡®© ®¯æ¨¨ ­ ¦¬¨â¥ "Enter", ¤«ï ¢ëå®¤  "Esc".');
settextstyle(0,1,0);
outtextxy(34,444,'<-');
outtextxy(102,444,'->');
settextstyle(0,0,0);

delay(500);
puziri;
while keypressed do
readkey;
repeat
g:=readkey;
if ord(g)=0 then g:=readkey;
case g of
#75:begin if i>1 then begin dec(i);
case j of
1:inc(j);
3:dec(j);
end;
end;
perecluchenie;
end;
#77:begin if i<3 then begin inc(i);
case j of
1:inc(j);
3:dec(j);
end;
end;
perecluchenie;
end;
#72:begin if j>1 then begin dec(j);
case i of
1:inc(i);
3:dec(i);
end;
end;
perecluchenie;
end;
#80:begin if j<3 then begin inc(j);
case i of
1:inc(i);
3:dec(i);
end;
perecluchenie;
end;
end;
#13:
case i of
1:menu_left;
2:case j of
1:menu_up;
2:begin
in_yan_open;
setcolor(white);
outtextxy(312,182,'„ ');
setcolor(black);
outtextxy(308,307,'¥â');
while keypressed do
readkey;
repeat
if inyan=2 then exit_niz else exit_verh;
g:=readkey;
if ord(g)=0 then g:=readkey;
case g of
#72:if inyan=1 then inyan:=2 else
inyan:=1;
#80:if inyan=1 then inyan:=2 else
inyan:=1;
#13:if inyan=1 then exit:=true else
begin
setcolor(white);
outtextxy(308,307,'¥â');
in_yan_close;
setcolor(white);
outtextxy(300,247,'‚›•„');
while keypressed do
readkey;
end;
end;
until (g=#13) or (g=#27);
end;
3:menu_bot;
end;
3:menu_right;
end;
end;
until (g=#27) or (exit=true);
end;
end.