unit seif;
interface
procedure zastavka;
implementation
uses crt,Graph;
var
m,h,dx,dm,i,j,l,c:integer;
y,x:real;
n,b:boolean;
procedure zastavka;
begin
setfillstyle(1,white);
bar(0,0,700,700);
setfillstyle(1,black);
bar(150,200,250,300);
setcolor(green);
rectangle(150,200,250,300);
repeat
setcolor(green);
line(250,200,250,300);
line(150+round(j*1.3),200+round(l*0.7),150+round(j*1.3),300+round(l*0.7));
line(150+round(j*1.3),200+round(l*0.7),250,200);
line(150+round(j*1.3),300+round(l*0.7),250,300);
setfillstyle(1,black);
if j<77 then floodfill(249,280,green) else
if j>77 then floodfill(251,280,green);
delay(50);
if l>79 then b:=true;
if b=false then inc(l) else dec(l);
inc(j);
if j<>161 then begin
setfillstyle(1,white);
bar(0,0,700,700);
setfillstyle(1,black);
bar(150,200,250,300);
setfillstyle(1,lightgray);
bar(155,205,245,295);
setfillstyle(1,brown);
bar(160,255,170,270);
setcolor(black);
x:=0;
c:=1;
setlinestyle(0,0,2);
rectangle(160,255,170,270);
setlinestyle(0,0,0);
repeat
y:=sin(x);
putpixel(163-i+round(x),260+round(y)-round(i*0.4),black);
putpixel(163-i+round(x),263+round(y)+round(i*0.1),black);
putpixel(163-i+round(x),266+round(y)+round(i*0.6),black);
x:=x+1.1;
inc(c);
until (c=6) or (keypressed);
end;
until (j=161) or (keypressed);
setcolor(black);
repeat
setfillstyle(1,brown);
bar(160-round(i*1.2),255-round(i*1.7),170+round(i*1.2),270+round(i*1.7));
setlinestyle(0,0,3);
rectangle(160-round(i*1.2),255-round(i*1.7),170+round(i*1.2),270+round(i*1.7));
setlinestyle(0,0,0);
inc(i);
l:=1;
x:=0;
repeat
y:=sin(x);
putpixel(163-i+round(x),260+round(y)-round(i*0.4),black);
putpixel(163-i+round(x),263+round(y)+round(i*0.1),black);
putpixel(163-i+round(x),266+round(y)+round(i*0.6),black);
x:=x+1.1;
inc(l);
until (l=6+round(i*1.7)) or (keypressed);
delay(30);
until (i=80) or (keypressed);
settextstyle(3,0,1);
setcolor(black);
i:=1;
j:=0;
settextstyle(3,0,2);
repeat
if i<115 then begin
setcolor(i);
outtextxy(100+i-100,140,'Ž’„…‹ Š€„Ž‚');
delay(10);
setfillstyle(1,white);
bar(0,130,63,168);
setcolor(black);
setlinestyle(0,0,3);
line(65,123,65,170);
setlinestyle(0,0,0);
setfillstyle(1,brown);
bar(67,130,262,170);
inc(i);
end
else
begin
setcolor(j);
if j=15 then setcolor(black);
outtextxy(100-j,140,'Ž’„…‹ Š€„Ž‚');
delay(10);
if j<>15 then begin
setfillstyle(1,brown);
bar(67,130,262,170);
end;
inc(j);
end;
until (j=16) or (keypressed);
if not (keypressed) then delay(2000);
h:=0;
repeat
i:=1+h;
j:=1+h;
b:=false;
n:=false;
repeat
setcolor(black);
setlinestyle(0,3,3);
rectangle(i*60-40,5+(j*80-80),10+i*60,65+(j*80-80));
setfillstyle(1,brown);
bar(i*60-37,8+(j*80-80),7+i*60,62+(j*80-80));
l:=1;
x:=1;
repeat
y:=sin(x);
putpixel(round(x)+i*60-35,round(y)+15+(j*80-80),black);
putpixel(round(x)+i*60-35,round(y)+27+(j*80-80),black);
putpixel(round(x)+i*60-35,round(y)+39+(j*80-80),black);
putpixel(round(x)+i*60-35,round(y)+51+(j*80-80),black);
x:=x+0.7;
inc(l);
until (l=57) or (keypressed);
if (i < 10-h) and (b=false) then inc(i) else
if (j<6-h) and (n=false) then inc(j) else
if (j=6-h) and (i<>1+h) then begin  b:=true; dec(i); end else
if j<>1+h then begin n:=true; dec(j); end;
delay(150);
until ((j=1+h) and (n=true)) or (keypressed);
inc(h);
until (h=3) or (keypressed);
if keypressed then readkey else
delay(2000);
end;
end.
