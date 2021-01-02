unit bases;
interface
type
bd1=record
code:integer;
pay:longint;
occup,educ:string;
end;
bd2=record
code,code_1:integer;
educ,adres,pol,name,surname,otchestvo:string;
zarplata,telephone,Birth_date:longint;
end;
bd3=record
code,code_2:integer;
award,penalty:string;
award_date,penalty_date:longint;
end;
bd4=record
code,code_2:integer;
name,place:string;
date:longint;
end;
var p,f,place_y,place_x:integer;
date:boolean;
g:char;
st:string;
search,e:integer;
find:boolean;
srch:array[1..99] of integer;
temp1,list1:file of bd1;
sp1:bd1;
temp2,list2:file of bd2;
sp2:bd2;
temp3,list3:file of bd3;
sp3:bd3;
temp4,list4:file of bd4;
sp4:bd4;
procedure create_1;
procedure view_1;
procedure add_1;
procedure del_1;
procedure edit_1;
procedure search_1;
procedure create_2;
procedure view_2;
procedure add_2;
procedure del_2;
procedure edit_2;
procedure search_2;
procedure create_3;
procedure view_3;
procedure add_3;
procedure del_3;
procedure edit_3;
procedure search_3;
procedure create_4;
procedure view_4;
procedure add_4;
procedure del_4;
procedure edit_4;
procedure search_4;

implementation
uses crt,graph,input;
var z,sex,edit,h,m,m2,m3,m4,color,i,dx,dm,puzir:integer; d:real;
int:longint;
edit1,edit2,edit3,edit4,max,del:boolean;
st1:string;
procedure create_1;
begin
h:=0;
f:=20;
setcolor(darkgray);
outtextxy(180,210,'Введите количество вносимых записей');
p:=2;
place_x:=320;
place_y:=230;
create_int;
val(st,h,i);
st:='';
setcolor(lightgray);
outtextxy(180,210,'Введите количество вносимых записей');
outtextxy(place_x,place_y,st);
str(h,st);
outtextxy(320,230,st);
st:='';
if h<>0 then begin
setcolor(darkgray);
outtextxy(270,108,'Запись');
outtextxy(180,163,'Код');
outtextxy(180,208,'Должность');
outtextxy(180,253,'Оклад');
outtextxy(180,298,'Образование');
p:=9;
setcolor(white);
setlinestyle(0,0,2);
line(280,125,280,350);
rewrite(list1);
for m:=1 to h do begin
setcolor(darkgray);
str(h,st);
if m<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m,st);
outtextxy(327,109,st);
st:='';
sp1.code:=m;
str(sp1.code,st);
outtextxy(300,163,st);
st:='';
place_x:=300;
place_y:=208;
f:=18;
create_str;
f:=20;
sp1.occup:=st;
place_x:=300;
place_y:=253;
create_int;
val(st,int,i);
sp1.pay:=int;
int:=0;
place_x:=300;
place_y:=298;
create_str;
sp1.educ:=st;
st:='';
write(list1,sp1);
setcolor(lightgray);
str(h,st);
if m<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m,st);
outtextxy(327,109,st);
st:='';
str(sp1.code,st);
outtextxy(300,163,st);
st:='';
place_y:=208;
outtextxy(place_x,place_y,sp1.occup);
place_y:=253;
str(sp1.pay,st);
outtextxy(place_x,place_y,st);
st:='';
place_y:=298;
outtextxy(place_x,place_y,sp1.educ);
end;
setcolor(lightgray);
outtextxy(270,108,'Запись');
outtextxy(180,163,'Код');
outtextxy(180,208,'Должность');
outtextxy(180,253,'Оклад');
outtextxy(180,298,'Образование');
setlinestyle(0,0,2);
line(280,125,280,350);
end;
setcolor(darkgray);
if h<>0 then
outtextxy(195,220,'База данных была успешно создана.')
else outtextxy(215,220,'База данных не была создана.');
delay(3000);
setcolor(lightgray);
if h<>0 then
outtextxy(195,220,'База данных была успешно создана.')
else outtextxy(215,220,'База данных не была создана.');
setlinestyle(0,0,3);
end;

procedure view_1;
begin
f:=20;
reset(list1);
setlinestyle(0,0,2);
setcolor(darkgray);
outtextxy(270,108,'Запись');
outtextxy(180,163,'Код');
outtextxy(180,208,'Должность');
outtextxy(180,253,'Оклад');
outtextxy(180,298,'Образование');
p:=9;
setcolor(white);
line(280,128,280,350);
if (del=false) and (edit1=false) then m:=1 else
if (m>filesize(list1)) and (del=true) then m:=filesize(list1);
st:='';
repeat
if find=true then m:=srch[e];
seek(list1,m-1);
read(list1,sp1);
setcolor(darkgray);
if find=true then
begin
str(search,st);
if e<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if e<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(e,st);
outtextxy(327,109,st);
st:='';
end else
begin
str(filesize(list1),st);
if m<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m,st);
outtextxy(327,109,st);
st:='';
end;
str(sp1.code,st);
outtextxy(300,163,st);
st:='';
place_x:=300;
place_y:=208;
outtextxy(place_x,place_y,sp1.occup);
place_y:=253;
str(sp1.pay,st);
outtextxy(place_x,place_y,st);
st:='';
place_y:=298;
outtextxy(place_x,place_y,sp1.educ);

if edit1=true then
repeat
setcolor(white);
case edit of
1:outtextxy(300,208,sp1.occup);
2:begin
str(sp1.pay,st);
outtextxy(300,253,st);
st:='';
end;
3:outtextxy(300,298,sp1.educ);
end;
while keypressed
do readkey;
g:=readkey;
if ord(g)=0 then g:=readkey;
delay(100);
setcolor(darkgray);
case edit of
1:outtextxy(300,208,sp1.occup);
2:begin
str(sp1.pay,st);
outtextxy(300,253,st);
st:='';
end;
3:outtextxy(300,298,sp1.educ);
end;
case g of
#72:if edit>1 then dec(edit) else edit:=3;
#80:if edit<3 then inc(edit) else edit:=1;
#13:
begin
reset(list1);
rewrite(temp1);
setcolor(lightgray);
for z:=1 to filesize(list1) do begin
read(list1,sp1);
if z=m then case edit of
1:begin
place_x:=300;
place_y:=208;
outtextxy(place_x,place_y,sp1.occup);
f:=18;
create_str;
f:=20;
sp1.occup:=st;
end;
2:begin
place_x:=300;
place_y:=253;
str(sp1.pay,st);
outtextxy(place_x,place_y,st);
st:='';
create_int;
val(st,int,i);
sp1.pay:=int;
int:=0;
end;
3:begin
place_x:=300;
place_y:=298;
outtextxy(place_x,place_y,sp1.educ);
create_str;
sp1.educ:=st;
st:='';
end;
end;
write(temp1,sp1);
end;
reset(temp1);
rewrite(list1);
while not(eof(temp1)) do
begin
read(temp1,sp1);
write(list1,sp1);
end;
end;
end;
until (g=#75) or (g=#77) or (g=#27) or (g=#13) else
begin
while keypressed
do readkey;
g:=readkey;
if ord(g)=0 then g:=readkey;
end;

delay(100);
setcolor(lightgray);
if find=true then
begin
str(search,st);
if e<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if e<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(e,st);
outtextxy(327,109,st);
st:='';
end else
begin
str(filesize(list1),st);
if m<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m,st);
outtextxy(327,109,st);
st:='';
end;
str(sp1.code,st);
outtextxy(300,163,st);
st:='';
place_y:=208;
outtextxy(place_x,place_y,sp1.occup);
place_y:=253;
str(sp1.pay,st);
outtextxy(place_x,place_y,st);
st:='';
place_y:=298;
outtextxy(place_x,place_y,sp1.educ);
if find=false then case g of
#75:if m>1 then dec(m) else m:=filesize(list1);
#77:if m<filesize(list1) then inc(m) else m:=1;
end else
case g of
#75:if e>1 then dec(e) else e:=search;
#77:if e<search then inc(e) else e:=1;
end;
until (g=#13) or (g=#27);
setcolor(lightgray);
setlinestyle(0,0,2);
outtextxy(270,108,'Запись');
outtextxy(180,163,'Код');
outtextxy(180,208,'Должность');
outtextxy(180,253,'Оклад');
outtextxy(180,298,'Образование');
line(280,128,280,350);
setlinestyle(0,0,3);
end;

procedure del_1;
begin
f:=20;
m:=1;
del:=true;
repeat
view_1;
rewrite(temp1);
if g=#13 then begin
reset(list1);
for z:=1 to filesize(list1) do
begin
read(list1,sp1);
if z<>m then
write(temp1,sp1);
end;
reset(temp1);
rewrite(list1);
while not(eof(temp1)) do
begin
read(temp1,sp1);
write(list1,sp1);
end;
end;
until (g=#27) or (filesize(list1)=0);
if filesize(list1)=0 then
begin
setcolor(darkgray);
outtextxy(240,210,'Записей больше нет.');
delay(3000);
setcolor(lightgray);
outtextxy(240,210,'Записей больше нет.');
end;
del:=false;
end;

procedure add_1;
begin
f:=20;
setcolor(darkgray);
outtextxy(170,210,'Введите количество добавляемых записей');
p:=2;
place_x:=310;
place_y:=230;
create_int;
val(st,h,i);
st:='';
setcolor(lightgray);
outtextxy(170,210,'Введите количество добавляемых записей');
outtextxy(place_x,place_y,st);
str(h,st);
outtextxy(310,230,st);
st:='';
reset(list1);
if (h+filesize(list1)) > 99 then begin
max:=true;
h:=99-filesize(list1);
end;
if h<>0 then begin
setcolor(darkgray);
outtextxy(180,163,'Код');
outtextxy(180,208,'Должность');
outtextxy(180,253,'Оклад');
outtextxy(180,298,'Образование');
p:=9;
setcolor(white);
setlinestyle(0,0,2);
line(280,125,280,350);
for m2:=1 to h do begin
reset(list1);
rewrite(temp1);
while not(eof(list1)) do
begin
read(list1,sp1);
write(temp1,sp1);
end;
reset(temp1);
rewrite(list1);
for z:=1 to filesize(temp1) do
begin
read(temp1,sp1);
if sp1.code=z then
write(list1,sp1);
end;
setcolor(darkgray);
str(filesize(temp1)+1,st);
if (filesize(list1)+1) <10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if (filesize(list1)+1) <10 then
line(337,116,340,109)
else line(345,116,348,109);
str(filesize(list1)+1,st);
outtextxy(327,109,st);
st:='';

sp1.code:=filesize(list1)+1;
str(sp1.code,st);
outtextxy(300,163,st);
st:='';
place_x:=300;
place_y:=208;
f:=18;
create_str;
f:=20;
sp1.occup:=st;
place_x:=300;
place_y:=253;
create_int;
val(st,int,i);
sp1.pay:=int;
int:=0;
place_x:=300;
place_y:=298;
create_str;
sp1.educ:=st;
st:='';
write(list1,sp1);
setcolor(lightgray);
str(filesize(temp1)+1,st);
if filesize(list1) <10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if filesize(list1) <10 then
line(337,116,340,109)
else line(345,116,348,109);
str(filesize(list1),st);
outtextxy(327,109,st);
st:='';
str(sp1.code,st);
outtextxy(300,163,st);
st:='';
place_y:=208;
outtextxy(place_x,place_y,sp1.occup);
place_y:=253;
str(sp1.pay,st);
outtextxy(place_x,place_y,st);
st:='';
place_y:=298;
outtextxy(place_x,place_y,sp1.educ);
reset(temp1);
seek(temp1,filesize(list1)-1);
while not(eof(temp1)) do
begin
read(temp1,sp1);
write(list1,sp1);
end;
end;
setcolor(lightgray);
outtextxy(180,163,'Код');
outtextxy(180,208,'Должность');
outtextxy(180,253,'Оклад');
outtextxy(180,298,'Образование');
setlinestyle(0,0,2);
line(280,125,280,350);
end;
setcolor(darkgray);
if h>1 then begin if max=true then begin
outtextxy(220,200,'Превышен лимит в 99 записей');
delay(2000);
end;
outtextxy(205,220,'Записи были успешно добавлены.'); end else
if h<>0 then outtextxy(205,220,'Запись была успешно добавлена.')
else begin if max=true then begin
outtextxy(220,200,'Превышен лимит в 99 записей');
delay(2000);
end;
outtextxy(225,220,'Записи не были добавлены.');
end;
delay(3000);
setcolor(lightgray);
if h>1 then begin
outtextxy(220,200,'Превышен лимит в 99 записей');
outtextxy(205,220,'Записи были успешно добавлены.'); end else
if h<>0 then outtextxy(205,220,'Запись была успешно добавлена.')
else begin
outtextxy(220,200,'Превышен лимит в 99 записей');
outtextxy(225,220,'Записи не были добавлены.');
end;
max:=false;
setlinestyle(0,0,3);
end;

procedure edit_1;
begin
f:=20;
edit1:=true;
edit:=1;
m:=1;
repeat
view_1;
until (g=#27);
edit1:=false;
setcolor(darkgray);
outtextxy(225,230,'Изменения были сохранены.');
delay(3000);
setcolor(lightgray);
outtextxy(225,230,'Изменения были сохранены.');
end;

procedure search_1;
begin
reset(list1);
setlinestyle(0,0,3);
setcolor(white);
arc(244,230,90,270,15);
arc(400,230,270,90,15);
line(244,215,400,215);
line(244,245,400,245);
setcolor(darkgray);
outtextxy(155,190,'Для поиска введите строку или часть строки');
place_x:=242;
place_y:=227;
f:=20;
create;
setlinestyle(0,0,3);
setcolor(lightgray);
arc(244,230,90,270,15);
arc(400,230,270,90,15);
line(244,215,400,215);
line(244,245,400,245);
outtextxy(155,190,'Для поиска введите строку или часть строки');
outtextxy(242,227,st);
search:=0;
find:=false;
e:=1;
for m:=1 to filesize(list1) do begin
read(list1,sp1);
str(sp1.code,st1);
if pos(st,st1)<>0 then
find:=true;
if pos(st,sp1.occup)<>0 then
find:=true;
str(sp1.pay,st1);
if pos(st,st1)<>0 then
find:=true;
if pos(st,sp1.educ)<>0 then
find:=true;
if find=true then
begin
inc(search);
srch[search]:=m;
end;
find:=false;
end;
if srch[1]<>0 then
find:=true;
if find=true then begin
setcolor(darkgray);
str(search,st);
outtextxy(230,210,'Найдено соотвествий - '+st);
delay(2000);
setcolor(lightgray);
outtextxy(230,210,'Найдено соотвествий - '+st);
view_1;
end else
begin
setcolor(darkgray);
outtextxy(230,210,'Cоотвествий не найдено');
delay(2000);
setcolor(lightgray);
outtextxy(230,210,'Cоотвествий не найдено');
end;
find:=false;
for z:=1 to 99 do
srch[z]:=0;
end;

procedure create_2;
begin
f:=17;
h:=0;
setcolor(darkgray);
outtextxy(180,210,'Введите количество вносимых записей');
p:=2;
place_x:=320;
place_y:=230;
create_int;
val(st,h,i);
st:='';
setcolor(lightgray);
outtextxy(180,210,'Введите количество вносимых записей');
outtextxy(place_x,place_y,st);
str(h,st);
outtextxy(320,230,st);
st:='';
if h<>0 then begin
setcolor(darkgray);
outtextxy(270,108,'Запись');
outtextxy(180,144,'Код');
outtextxy(180,164,'Фамилия');
outtextxy(180,184,'Имя');
outtextxy(180,204,'Отчество');
outtextxy(180,224,'Пол');
outtextxy(180,244,'Дата рождения');
outtextxy(180,264,'Адрес');
outtextxy(180,284,'Телефон');
outtextxy(180,304,'Код должности');
outtextxy(180,324,'Зарплата');
outtextxy(180,344,'Образование');
p:=9;
setcolor(white);
setlinestyle(0,0,2);
line(300,125,300,360);
rewrite(list2);
for m2:=1 to h do begin
setcolor(darkgray);
str(h,st);
if m2<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m2<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m2,st);
outtextxy(327,109,st);
st:='';
sp2.code:=m2;
str(sp2.code,st);
outtextxy(320,144,st);
st:='';
f:=11;
place_x:=320;
place_y:=164;
create_str;
sp2.surname:=st;
st:='';
f:=17;
place_x:=320;
place_y:=184;
create_str;
sp2.name:=st;
st:='';
place_x:=320;
place_y:=204;
create_str;
sp2.otchestvo:=st;
st:='';
sex:=1;
setcolor(darkgray);
outtextxy(323,224,'Мужской');
outtextxy(398,224,'Женский');
repeat
setcolor(white);
case sex of
1:outtextxy(323,224,'Мужской');
2:outtextxy(398,224,'Женский');
end;
g:=readkey;
if ord(g)=0 then g:=readkey;
while keypressed
do readkey;
delay(100);
setcolor(darkgray);
case sex of
1:outtextxy(323,224,'Мужской');
2:outtextxy(398,224,'Женский');
end;
case g of
#75:if sex=1 then sex:=2 else sex:=1;
#77:if sex=1 then sex:=2 else sex:=1;
end;
until (g=#13) or (g=#27);
setcolor(lightgray);
outtextxy(323,224,'Мужской');
outtextxy(398,224,'Женский');
case sex of
1:sp2.pol:='Мужской';
2:sp2.pol:='Женский';
end;
setcolor(darkgray);
outtextxy(320,224,sp2.pol);
date:=true;
place_x:=320;
place_y:=244;
p:=10;
create_int;
date:=false;
p:=9;
st1:='';
for z:=1 to length(st) do
if st[z]<>'.' then
st1:=st1+st[z];
val(st1,int,i);
sp2.birth_date:=int;
int:=0;
st1:='';
place_x:=320;
place_y:=264;
create_str;
sp2.adres:=st;
st:='';
place_x:=320;
place_y:=284;
create_int;
val(st,int,i);
sp2.telephone:=int;
int:=0;
setcolor(lightgray);
str(h,st);
if m2<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m2<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m2,st);
outtextxy(327,109,st);
st:='';

str(sp2.code,st);
outtextxy(320,144,st);
st:='';
outtextxy(320,164,sp2.surname);
outtextxy(320,184,sp2.name);
outtextxy(320,204,sp2.otchestvo);
outtextxy(320,224,sp2.pol);
str(sp2.birth_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(320,244,st1);
st1:='';
outtextxy(320,264,sp2.adres);
str(sp2.telephone,st);
outtextxy(320,284,st);
st:='';
outtextxy(270,108,'Запись');
outtextxy(180,144,'Код');
outtextxy(180,164,'Фамилия');
outtextxy(180,184,'Имя');
outtextxy(180,204,'Отчество');
outtextxy(180,224,'Пол');
outtextxy(180,244,'Дата рождения');
outtextxy(180,264,'Адрес');
outtextxy(180,284,'Телефон');
outtextxy(180,304,'Код должности');
outtextxy(180,324,'Зарплата');
outtextxy(180,344,'Образование');
line(300,125,300,360);
delay(50);
setcolor(darkgray);
outtextxy(240,220,'Выберите должность.');
delay(1500);
setcolor(lightgray);
outtextxy(240,220,'Выберите должность.');
view_1;
f:=17;
setlinestyle(0,0,2);
setcolor(darkgray);
str(h,st);
if m2<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m2<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m2,st);
outtextxy(327,109,st);
st:='';
str(sp2.code,st);
outtextxy(320,144,st);
st:='';
outtextxy(320,164,sp2.surname);
outtextxy(320,184,sp2.name);
outtextxy(320,204,sp2.otchestvo);
outtextxy(320,224,sp2.pol);
str(sp2.birth_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(320,244,st1);
st1:='';
outtextxy(320,264,sp2.adres);
str(sp2.telephone,st);
outtextxy(320,284,st);
st:='';
outtextxy(270,108,'Запись');
outtextxy(180,144,'Код');
outtextxy(180,164,'Фамилия');
outtextxy(180,184,'Имя');
outtextxy(180,204,'Отчество');
outtextxy(180,224,'Пол');
outtextxy(180,244,'Дата рождения');
outtextxy(180,264,'Адрес');
outtextxy(180,284,'Телефон');
outtextxy(180,304,'Код должности');
outtextxy(180,324,'Зарплата');
outtextxy(180,344,'Образование');
setcolor(white);
line(300,125,300,360);
delay(50);
setcolor(darkgray);
sp2.code_1:=sp1.code;
str(sp2.code_1,st);
outtextxy(320,304,st+' ('+sp1.occup+')');
st:='';
sp2.zarplata:=round((sp1.pay/100)*80);
str(sp2.zarplata,st);
outtextxy(320,324,st);
st:='';
place_x:=320;
place_y:=344;
create_str;
sp2.educ:=st;
st:='';

write(list2,sp2);

setcolor(lightgray);
str(h,st);
if m2<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m2<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m2,st);
outtextxy(327,109,st);
st:='';
str(sp2.code,st);
outtextxy(320,144,st);
st:='';
outtextxy(320,164,sp2.surname);
outtextxy(320,184,sp2.name);
outtextxy(320,204,sp2.otchestvo);
outtextxy(320,224,sp2.pol);
str(sp2.birth_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(320,244,st1);
st1:='';
outtextxy(320,264,sp2.adres);
str(sp2.telephone,st);
outtextxy(320,284,st);
st:='';
str(sp2.code_1,st);
outtextxy(320,304,st+' ('+sp1.occup+')');
st:='';
str(sp2.zarplata,st);
outtextxy(320,324,st);
st:='';
outtextxy(320,344,sp2.educ);
end;
setcolor(lightgray);
outtextxy(270,108,'Запись');
outtextxy(180,144,'Код');
outtextxy(180,164,'Фамилия');
outtextxy(180,184,'Имя');
outtextxy(180,204,'Отчество');
outtextxy(180,224,'Пол');
outtextxy(180,244,'Дата рождения');
outtextxy(180,264,'Адрес');
outtextxy(180,284,'Телефон');
outtextxy(180,304,'Код должности');
outtextxy(180,324,'Зарплата');
outtextxy(180,344,'Образование');
line(300,125,300,360);
end;
setcolor(darkgray);
if h<>0 then
outtextxy(195,220,'База данных была успешно создана.')
else outtextxy(215,220,'База данных не была создана.');
delay(3000);
setcolor(lightgray);
if h<>0 then
outtextxy(195,220,'База данных была успешно создана.')
else outtextxy(215,220,'База данных не была создана.');
setlinestyle(0,0,3);
end;

procedure view_2;
begin
f:=17;
reset(list2);
setlinestyle(0,0,2);
setcolor(darkgray);
outtextxy(270,108,'Запись');
outtextxy(180,144,'Код');
outtextxy(180,164,'Фамилия');
outtextxy(180,184,'Имя');
outtextxy(180,204,'Отчество');
outtextxy(180,224,'Пол');
outtextxy(180,244,'Дата рождения');
outtextxy(180,264,'Адрес');
outtextxy(180,284,'Телефон');
outtextxy(180,304,'Код должности');
outtextxy(180,324,'Зарплата');
outtextxy(180,344,'Образование');
p:=9;
setcolor(white);
setlinestyle(0,0,2);
line(300,125,300,360);
if (del=false) and (edit2=false) then m2:=1 else
if (m2>filesize(list2)) and (del=true) then m2:=filesize(list2);
st:='';
repeat
if find=true then m2:=srch[e];
seek(list2,m2-1);
read(list2,sp2);
setcolor(darkgray);
if find=true then
begin
str(search,st);
if e<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if e<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(e,st);
outtextxy(327,109,st);
st:='';
end else
begin
str(filesize(list2),st);
if m2<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m2<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m2,st);
outtextxy(327,109,st);
st:='';
end;
str(sp2.code,st);
outtextxy(320,144,st);
st:='';
outtextxy(320,164,sp2.surname);
outtextxy(320,184,sp2.name);
outtextxy(320,204,sp2.otchestvo);
outtextxy(320,224,sp2.pol);
str(sp2.birth_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(320,244,st1);
st1:='';
outtextxy(320,264,sp2.adres);
str(sp2.telephone,st);
outtextxy(320,284,st);
st:='';
reset(list1);
repeat
read(list1,sp1);
until sp2.code_1=sp1.code;
str(sp2.code_1,st);
outtextxy(320,304,st+' ('+sp1.occup+')');
st:='';
str(sp2.zarplata,st);
outtextxy(320,324,st);
st:='';
outtextxy(320,344,sp2.educ);

if edit2=true then
repeat
setcolor(white);
case edit of
1:outtextxy(320,164,sp2.surname);
2:outtextxy(320,184,sp2.name);
3:outtextxy(320,204,sp2.otchestvo);
4:outtextxy(320,224,sp2.pol);
5:begin
str(sp2.birth_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(320,244,st1);
st1:='';
end;
6:outtextxy(320,264,sp2.adres);
7:begin
str(sp2.telephone,st);
outtextxy(320,284,st);
st:='';
end;
8:begin
reset(list1);
repeat
read(list1,sp1);
until sp2.code_1=sp1.code;
str(sp2.code_1,st);
outtextxy(320,304,st+' ('+sp1.occup+')');
st:='';
end;
9:outtextxy(320,344,sp2.educ);
end;
while keypressed
do readkey;
g:=readkey;
if ord(g)=0 then g:=readkey;
delay(100);
setcolor(darkgray);
case edit of
1:outtextxy(320,164,sp2.surname);
2:outtextxy(320,184,sp2.name);
3:outtextxy(320,204,sp2.otchestvo);
4:outtextxy(320,224,sp2.pol);
5:begin
str(sp2.birth_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(320,244,st1);
st1:='';
end;
6:outtextxy(320,264,sp2.adres);
7:begin
str(sp2.telephone,st);
outtextxy(320,284,st);
st:='';
end;
8:begin
reset(list1);
repeat
read(list1,sp1);
until sp2.code_1=sp1.code;
str(sp2.code_1,st);
outtextxy(320,304,st+' ('+sp1.occup+')');
st:='';
end;
9:outtextxy(320,344,sp2.educ);
end;
case g of
#72:if edit>1 then dec(edit) else edit:=9;
#80:if edit<9 then inc(edit) else edit:=1;
#13:
begin
reset(list2);
rewrite(temp2);
setcolor(lightgray);
for e:=1 to filesize(list2) do begin
read(list2,sp2);
if e=m2 then case edit of
1:begin
outtextxy(320,164,sp2.surname);
f:=11;
place_x:=320;
place_y:=164;
create_str;
sp2.surname:=st;
st:='';
f:=17;
end;
2:begin
outtextxy(320,184,sp2.name);
place_x:=320;
place_y:=184;
create_str;
sp2.name:=st;
st:='';
end;
3:begin
outtextxy(320,204,sp2.otchestvo);
place_x:=320;
place_y:=204;
create_str;
sp2.otchestvo:=st;
st:='';
end;
4:begin
outtextxy(320,224,sp2.pol);
sex:=1;
setcolor(darkgray);
outtextxy(323,224,'Мужской');
outtextxy(398,224,'Женский');
repeat
setcolor(white);
case sex of
1:outtextxy(323,224,'Мужской');
2:outtextxy(398,224,'Женский');
end;
g:=readkey;
if ord(g)=0 then g:=readkey;
while keypressed
do readkey;
delay(100);
setcolor(darkgray);
case sex of
1:outtextxy(323,224,'Мужской');
2:outtextxy(398,224,'Женский');
end;
case g of
#75:if sex=1 then sex:=2 else sex:=1;
#77:if sex=1 then sex:=2 else sex:=1;
end;
until (g=#13) or (g=#27);
setcolor(lightgray);
outtextxy(323,224,'Мужской');
outtextxy(398,224,'Женский');
case sex of
1:sp2.pol:='Мужской';
2:sp2.pol:='Женский';
end;
setcolor(darkgray);
outtextxy(320,224,sp2.pol);
end;
5:begin
str(sp2.birth_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(320,244,st1);
st1:='';
date:=true;
place_x:=320;
place_y:=244;
p:=10;
create_int;
date:=false;
p:=9;
st1:='';
for z:=1 to length(st) do
if st[z]<>'.' then
st1:=st1+st[z];
val(st1,int,i);
sp2.birth_date:=int;
int:=0;
st1:='';
end;
6:begin
outtextxy(320,264,sp2.adres);
place_x:=320;
place_y:=264;
create_str;
sp2.adres:=st;
st:='';
end;
7:begin
str(sp2.telephone,st);
outtextxy(320,284,st);
st:='';
place_x:=320;
place_y:=284;
create_int;
val(st,int,i);
sp2.telephone:=int;
int:=0;
end;
8:begin

reset(list1);
repeat
read(list1,sp1);
until sp2.code_1=sp1.code;
str(sp2.code_1,st);
outtextxy(320,304,st+' ('+sp1.occup+')');
st:='';
setcolor(lightgray);
str(filesize(list2),st);
if m2<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m2<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m2,st);
outtextxy(327,109,st);
st:='';

str(sp2.code,st);
outtextxy(320,144,st);
st:='';
outtextxy(320,164,sp2.surname);
outtextxy(320,184,sp2.name);
outtextxy(320,204,sp2.otchestvo);
outtextxy(320,224,sp2.pol);
str(sp2.birth_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(320,244,st1);
st1:='';
outtextxy(320,264,sp2.adres);
str(sp2.telephone,st);
outtextxy(320,284,st);
st:='';
str(sp2.code_1,st);
outtextxy(320,304,st+' ('+sp1.occup+')');
st:='';
str(sp2.zarplata,st);
outtextxy(320,324,st);
st:='';
outtextxy(320,344,sp2.educ);
outtextxy(270,108,'Запись');
outtextxy(180,144,'Код');
outtextxy(180,164,'Фамилия');
outtextxy(180,184,'Имя');
outtextxy(180,204,'Отчество');
outtextxy(180,224,'Пол');
outtextxy(180,244,'Дата рождения');
outtextxy(180,264,'Адрес');
outtextxy(180,284,'Телефон');
outtextxy(180,304,'Код должности');
outtextxy(180,324,'Зарплата');
outtextxy(180,344,'Образование');
line(300,125,300,360);
delay(50);
setcolor(darkgray);
outtextxy(240,220,'Выберите должность.');
delay(1500);
setcolor(lightgray);
outtextxy(240,220,'Выберите должность.');
view_1;
f:=17;
setlinestyle(0,0,2);
setcolor(darkgray);
str(filesize(list2),st);
if m2<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m2<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m2,st);
outtextxy(327,109,st);
st:='';
str(sp2.code,st);
outtextxy(320,144,st);
st:='';
outtextxy(320,164,sp2.surname);
outtextxy(320,184,sp2.name);
outtextxy(320,204,sp2.otchestvo);
outtextxy(320,224,sp2.pol);
str(sp2.birth_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(320,244,st1);
st1:='';
outtextxy(320,264,sp2.adres);
str(sp2.telephone,st);
outtextxy(320,284,st);
st:='';
outtextxy(270,108,'Запись');
outtextxy(180,144,'Код');
outtextxy(180,164,'Фамилия');
outtextxy(180,184,'Имя');
outtextxy(180,204,'Отчество');
outtextxy(180,224,'Пол');
outtextxy(180,244,'Дата рождения');
outtextxy(180,264,'Адрес');
outtextxy(180,284,'Телефон');
outtextxy(180,304,'Код должности');
outtextxy(180,324,'Зарплата');
outtextxy(180,344,'Образование');
setcolor(white);
line(300,125,300,360);
delay(50);
setcolor(darkgray);
sp2.code_1:=sp1.code;
str(sp2.code_1,st);
outtextxy(320,304,st+' ('+sp1.occup+')');
st:='';
sp2.zarplata:=round((sp1.pay/100)*80);
str(sp2.zarplata,st);
outtextxy(320,324,st);
st:='';
outtextxy(320,344,sp2.educ);
end;
9:begin
outtextxy(320,344,sp2.educ);
place_x:=320;
place_y:=344;
create_str;
sp2.educ:=st;
st:='';
end;
end;
write(temp2,sp2);
end;
reset(temp2);
rewrite(list2);
while not(eof(temp2)) do
begin
read(temp2,sp2);
write(list2,sp2);
end;
end;
end;
until (g=#75) or (g=#77) or (g=#27) or (g=#13) else
begin
while keypressed
do readkey;
g:=readkey;
if ord(g)=0 then g:=readkey;
end;
delay(100);
setcolor(lightgray);
if find=true then
begin
str(search,st);
if e<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if e<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(e,st);
outtextxy(327,109,st);
st:='';
end else
begin
str(filesize(list2),st);
if m2<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m2<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m2,st);
outtextxy(327,109,st);
st:='';
end;
str(sp2.code,st);
outtextxy(320,144,st);
st:='';
outtextxy(320,164,sp2.surname);
outtextxy(320,184,sp2.name);
outtextxy(320,204,sp2.otchestvo);
outtextxy(320,224,sp2.pol);
str(sp2.birth_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(320,244,st1);
st1:='';
outtextxy(320,264,sp2.adres);
str(sp2.telephone,st);
outtextxy(320,284,st);
st:='';
str(sp2.code_1,st);
outtextxy(320,304,st+' ('+sp1.occup+')');
st:='';
str(sp2.zarplata,st);
outtextxy(320,324,st);
st:='';
outtextxy(320,344,sp2.educ);
if find=false then case g of
#75:if m2>1 then dec(m2) else m2:=filesize(list2);
#77:if m2<filesize(list2) then inc(m2) else m2:=1;
end else
case g of
#75:if e>1 then dec(e) else e:=search;
#77:if e<search then inc(e) else e:=1;
end;
until (g=#13) or (g=#27);
setcolor(lightgray);
outtextxy(270,108,'Запись');
outtextxy(180,144,'Код');
outtextxy(180,164,'Фамилия');
outtextxy(180,184,'Имя');
outtextxy(180,204,'Отчество');
outtextxy(180,224,'Пол');
outtextxy(180,244,'Дата рождения');
outtextxy(180,264,'Адрес');
outtextxy(180,284,'Телефон');
outtextxy(180,304,'Код должности');
outtextxy(180,324,'Зарплата');
outtextxy(180,344,'Образование');
line(300,125,300,360);
setlinestyle(0,0,3);
end;

procedure del_2;
begin
f:=17;
m2:=1;
del:=true;
repeat
view_2;
rewrite(temp2);
if g=#13 then begin
reset(list2);
for z:=1 to filesize(list2) do
begin
read(list2,sp2);
if z<>m2 then
write(temp2,sp2);
end;
reset(temp2);
rewrite(list2);
while not(eof(temp2)) do
begin
read(temp2,sp2);
write(list2,sp2);
end;
end;
until (g=#27) or (filesize(list2)=0);
if filesize(list2)=0 then
begin
setcolor(darkgray);
outtextxy(240,210,'Записей больше нет.');
delay(3000);
setcolor(lightgray);
outtextxy(240,210,'Записей больше нет.');
end;
del:=false;
end;

procedure add_2;
begin
f:=17;
setcolor(darkgray);
outtextxy(170,210,'Введите количество добавляемых записей');
p:=2;
place_x:=310;
place_y:=230;
create_int;
val(st,h,i);
st:='';
setcolor(lightgray);
outtextxy(170,210,'Введите количество добавляемых записей');
outtextxy(place_x,place_y,st);
str(h,st);
outtextxy(310,230,st);
st:='';
reset(list2);
if (h+filesize(list2)) > 99 then begin
max:=true;
h:=99-filesize(list2);
end;
if h<>0 then begin
setcolor(darkgray);
outtextxy(270,108,'Запись');
outtextxy(180,144,'Код');
outtextxy(180,164,'Фамилия');
outtextxy(180,184,'Имя');
outtextxy(180,204,'Отчество');
outtextxy(180,224,'Пол');
outtextxy(180,244,'Дата рождения');
outtextxy(180,264,'Адрес');
outtextxy(180,284,'Телефон');
outtextxy(180,304,'Код должности');
outtextxy(180,324,'Зарплата');
outtextxy(180,344,'Образование');
p:=9;
setcolor(white);
setlinestyle(0,0,2);
line(300,125,300,360);
for m2:=1 to h do begin
reset(list2);
rewrite(temp2);
while not(eof(list2)) do
begin
read(list2,sp2);
write(temp2,sp2);
end;
reset(temp2);
rewrite(list2);
for z:=1 to filesize(temp2) do
begin
read(temp2,sp2);
if sp2.code=z then
write(list2,sp2);
end;
setcolor(darkgray);
str(filesize(temp2)+1,st);
if (filesize(list2)+1) <10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if (filesize(list2)+1) <10 then
line(337,116,340,109)
else line(345,116,348,109);
str(filesize(list2)+1,st);
outtextxy(327,109,st);
st:='';

sp2.code:=filesize(list2)+1;
str(sp2.code,st);
outtextxy(320,144,st);
st:='';
f:=11;
place_x:=320;
place_y:=164;
create_str;
sp2.surname:=st;
st:='';
f:=17;
place_x:=320;
place_y:=184;
create_str;
sp2.name:=st;
st:='';
place_x:=320;
place_y:=204;
create_str;
sp2.otchestvo:=st;
st:='';
sex:=1;
setcolor(darkgray);
outtextxy(323,224,'Мужской');
outtextxy(398,224,'Женский');
repeat
setcolor(white);
case sex of
1:outtextxy(323,224,'Мужской');
2:outtextxy(398,224,'Женский');
end;
g:=readkey;
if ord(g)=0 then g:=readkey;
while keypressed
do readkey;
delay(100);
setcolor(darkgray);
case sex of
1:outtextxy(323,224,'Мужской');
2:outtextxy(398,224,'Женский');
end;
case g of
#75:if sex=1 then sex:=2 else sex:=1;
#77:if sex=1 then sex:=2 else sex:=1;
end;
until (g=#13) or (g=#27);
setcolor(lightgray);
outtextxy(323,224,'Мужской');
outtextxy(398,224,'Женский');
case sex of
1:sp2.pol:='Мужской';
2:sp2.pol:='Женский';
end;
setcolor(darkgray);
outtextxy(320,224,sp2.pol);
date:=true;
place_x:=320;
place_y:=244;
p:=10;
create_int;
date:=false;
p:=9;
st1:='';
for z:=1 to length(st) do
if st[z]<>'.' then
st1:=st1+st[z];
val(st1,int,i);
sp2.birth_date:=int;
int:=0;
st1:='';
place_x:=320;
place_y:=264;
create_str;
sp2.adres:=st;
st:='';
place_x:=320;
place_y:=284;
create_int;
val(st,int,i);
sp2.telephone:=int;
int:=0;
setcolor(lightgray);
str(filesize(temp2)+1,st);
if (filesize(list2)+1) <10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if (filesize(list2)+1) <10 then
line(337,116,340,109)
else line(345,116,348,109);
str(filesize(list2)+1,st);
outtextxy(327,109,st);
st:='';
str(sp2.code,st);
outtextxy(320,144,st);
st:='';
outtextxy(320,164,sp2.surname);
outtextxy(320,184,sp2.name);
outtextxy(320,204,sp2.otchestvo);
outtextxy(320,224,sp2.pol);
str(sp2.birth_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(320,244,st1);
st1:='';
outtextxy(320,264,sp2.adres);
str(sp2.telephone,st);
outtextxy(320,284,st);
st:='';
outtextxy(270,108,'Запись');
outtextxy(180,144,'Код');
outtextxy(180,164,'Фамилия');
outtextxy(180,184,'Имя');
outtextxy(180,204,'Отчество');
outtextxy(180,224,'Пол');
outtextxy(180,244,'Дата рождения');
outtextxy(180,264,'Адрес');
outtextxy(180,284,'Телефон');
outtextxy(180,304,'Код должности');
outtextxy(180,324,'Зарплата');
outtextxy(180,344,'Образование');
line(300,125,300,360);
delay(50);
setcolor(darkgray);
outtextxy(240,220,'Выберите должность.');
delay(1500);
setcolor(lightgray);
outtextxy(240,220,'Выберите должность.');
view_1;
while keypressed
do readkey;
f:=17;
setlinestyle(0,0,2);
setcolor(darkgray);
str(filesize(temp2)+1,st);
if (filesize(list2)+1) <10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if (filesize(list2)+1) <10 then
line(337,116,340,109)
else line(345,116,348,109);
str(filesize(list2)+1,st);
outtextxy(327,109,st);
st:='';
str(sp2.code,st);
outtextxy(320,144,st);
st:='';
outtextxy(320,164,sp2.surname);
outtextxy(320,184,sp2.name);
outtextxy(320,204,sp2.otchestvo);
outtextxy(320,224,sp2.pol);
str(sp2.birth_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(320,244,st1);
st1:='';
outtextxy(320,264,sp2.adres);
str(sp2.telephone,st);
outtextxy(320,284,st);
st:='';
outtextxy(270,108,'Запись');
outtextxy(180,144,'Код');
outtextxy(180,164,'Фамилия');
outtextxy(180,184,'Имя');
outtextxy(180,204,'Отчество');
outtextxy(180,224,'Пол');
outtextxy(180,244,'Дата рождения');
outtextxy(180,264,'Адрес');
outtextxy(180,284,'Телефон');
outtextxy(180,304,'Код должности');
outtextxy(180,324,'Зарплата');
outtextxy(180,344,'Образование');
line(300,125,300,360);
delay(50);
setcolor(darkgray);
sp2.code_1:=sp1.code;
str(sp2.code_1,st);
outtextxy(320,304,st+' ('+sp1.occup+')');
st:='';
sp2.zarplata:=round((sp1.pay/100)*80);
str(sp2.zarplata,st);
outtextxy(320,324,st);
st:='';
place_x:=320;
place_y:=344;
create_str;
sp2.educ:=st;
st:='';
write(list2,sp2);
setcolor(lightgray);
str(filesize(temp2)+1,st);
if filesize(list2) <10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if filesize(list2) <10 then
line(337,116,340,109)
else line(345,116,348,109);
str(filesize(list2),st);
outtextxy(327,109,st);
st:='';
str(sp2.code,st);
outtextxy(320,144,st);
st:='';
outtextxy(320,164,sp2.surname);
outtextxy(320,184,sp2.name);
outtextxy(320,204,sp2.otchestvo);
outtextxy(320,224,sp2.pol);
str(sp2.birth_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(320,244,st1);
st1:='';
outtextxy(320,264,sp2.adres);
str(sp2.telephone,st);
outtextxy(320,284,st);
st:='';
str(sp2.code_1,st);
outtextxy(320,304,st+' ('+sp1.occup+')');
st:='';
str(sp2.zarplata,st);
outtextxy(320,324,st);
st:='';
outtextxy(320,344,sp2.educ);
reset(temp2);
seek(temp2,filesize(list2)-1);
while not(eof(temp2)) do
begin
read(temp2,sp2);
write(list2,sp2);
end;
end;
setcolor(lightgray);
outtextxy(270,108,'Запись');
outtextxy(180,144,'Код');
outtextxy(180,164,'Фамилия');
outtextxy(180,184,'Имя');
outtextxy(180,204,'Отчество');
outtextxy(180,224,'Пол');
outtextxy(180,244,'Дата рождения');
outtextxy(180,264,'Адрес');
outtextxy(180,284,'Телефон');
outtextxy(180,304,'Код должности');
outtextxy(180,324,'Зарплата');
outtextxy(180,344,'Образование');
line(300,125,300,360);
end;
setcolor(darkgray);
if h>1 then begin if max=true then begin
outtextxy(220,200,'Превышен лимит в 99 записей');
delay(2000);
end;
outtextxy(205,220,'Записи были успешно добавлены.'); end else
if h<>0 then outtextxy(205,220,'Запись была успешно добавлена.')
else begin if max=true then begin
outtextxy(220,200,'Превышен лимит в 99 записей');
delay(2000);
end;
outtextxy(225,220,'Записи не были добавлены.');
end;
delay(3000);
setcolor(lightgray);
if h>1 then begin
outtextxy(220,200,'Превышен лимит в 99 записей');
outtextxy(205,220,'Записи были успешно добавлены.'); end else
if h<>0 then outtextxy(205,220,'Запись была успешно добавлена.')
else begin
outtextxy(220,200,'Превышен лимит в 99 записей');
outtextxy(225,220,'Записи не были добавлены.');
end;
max:=false;
setlinestyle(0,0,3);
end;

procedure edit_2;
begin
f:=17;
edit2:=true;
edit:=1;
m2:=1;
repeat
view_2;
until (g=#27);
edit2:=false;
setcolor(darkgray);
outtextxy(225,230,'Изменения были сохранены.');
delay(3000);
setcolor(lightgray);
outtextxy(225,230,'Изменения были сохранены.');
end;

procedure search_2;
begin
reset(list2);
setlinestyle(0,0,3);
setcolor(white);
arc(244,230,90,270,15);
arc(400,230,270,90,15);
line(244,215,400,215);
line(244,245,400,245);
setcolor(darkgray);
outtextxy(155,190,'Для поиска введите строку или часть строки');
place_x:=242;
place_y:=227;
f:=20;
create;
setlinestyle(0,0,3);
setcolor(lightgray);
arc(244,230,90,270,15);
arc(400,230,270,90,15);
line(244,215,400,215);
line(244,245,400,245);
outtextxy(155,190,'Для поиска введите строку или часть строки');
outtextxy(242,227,st);
search:=0;
find:=false;
e:=1;
for z:=1 to length(st) do
if st[z]<>'.' then
st1:=st1+st[z];
st:=st1;
st1:='';
for m:=1 to filesize(list2) do begin
read(list2,sp2);
str(sp2.code,st1);
if pos(st,st1)<>0 then
find:=true;
if pos(st,sp2.surname)<>0 then
find:=true;
if pos(st,sp2.name)<>0 then
find:=true;
if pos(st,sp2.otchestvo)<>0 then
find:=true;
if pos(st,sp2.pol)<>0 then
find:=true;
str(sp2.birth_date,st1);
if pos(st,st1)<>0 then
find:=true;
if pos(st,sp2.adres)<>0 then
find:=true;
str(sp2.telephone,st1);
if pos(st,st1)<>0 then
find:=true;
str(sp2.code_1,st1);
if pos(st,st1)<>0 then
find:=true;
if pos(st,sp2.educ)<>0 then
find:=true;
if find=true then
begin
inc(search);
srch[search]:=m;
end;
find:=false;
end;
if srch[1]<>0 then
find:=true;
if find=true then begin
setcolor(darkgray);
str(search,st);
outtextxy(230,210,'Найдено соотвествий - '+st);
delay(2000);
setcolor(lightgray);
outtextxy(230,210,'Найдено соотвествий - '+st);
view_2;
end else
begin
setcolor(darkgray);
outtextxy(230,210,'Cоотвествий не найдено');
delay(2000);
setcolor(lightgray);
outtextxy(230,210,'Cоотвествий не найдено');
end;
find:=false;
for z:=1 to 99 do
srch[z]:=0;
end;

procedure create_3;
begin
f:=17;
h:=0;
setcolor(darkgray);
outtextxy(180,210,'Введите количество вносимых записей');
p:=2;
place_x:=320;
place_y:=230;
create_int;
val(st,h,i);
st:='';
setcolor(lightgray);
outtextxy(180,210,'Введите количество вносимых записей');
outtextxy(place_x,place_y,st);
str(h,st);
outtextxy(320,230,st);
st:='';
if h<>0 then begin
setcolor(darkgray);
outtextxy(270,108,'Запись');
outtextxy(180,147,'Код');
outtextxy(180,182,'Вид награждения');
outtextxy(180,217,'Вид взыскания');
outtextxy(180,252,'Код сотрудника');
outtextxy(180,292,'Дата награждения');
outtextxy(180,327,'Дата взыскания');
p:=9;
setcolor(white);
setlinestyle(0,0,2);
line(315,125,315,350);
rewrite(list3);
for m3:=1 to h do begin
setcolor(darkgray);
str(h,st);
if m3<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m3<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m3,st);
outtextxy(327,109,st);
st:='';
sp3.code:=m3;
str(sp3.code,st);
outtextxy(330,147,st);
st:='';
place_x:=330;
place_y:=182;
create_str;
sp3.award:=st;
st:='';
place_x:=330;
place_y:=217;
create_str;
sp3.penalty:=st;
st:='';

setcolor(lightgray);
str(h,st);
if m3<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m3<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m3,st);
outtextxy(327,109,st);
st:='';
str(sp3.code,st);
outtextxy(330,147,st);
st:='';

outtextxy(330,182,sp3.award);
outtextxy(330,217,sp3.penalty);
outtextxy(270,108,'Запись');
outtextxy(180,147,'Код');
outtextxy(180,182,'Вид награждения');
outtextxy(180,217,'Вид взыскания');
outtextxy(180,252,'Код сотрудника');
outtextxy(180,292,'Дата награждения');
outtextxy(180,327,'Дата взыскания');
line(315,125,315,350);
delay(50);
setcolor(darkgray);
outtextxy(235,220,'Выберите сотрудника.');
delay(1500);
setcolor(lightgray);
outtextxy(235,220,'Выберите сотрудника.');
view_2;
f:=17;
setlinestyle(0,0,2);
setcolor(darkgray);
str(h,st);
if m3<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m3<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m3,st);
outtextxy(327,109,st);
st:='';
str(sp3.code,st);
outtextxy(330,147,st);
st:='';
outtextxy(330,182,sp3.award);
outtextxy(330,217,sp3.penalty);
outtextxy(270,108,'Запись');
outtextxy(180,147,'Код');
outtextxy(180,182,'Вид награждения');
outtextxy(180,217,'Вид взыскания');
outtextxy(180,252,'Код сотрудника');
outtextxy(180,292,'Дата награждения');
outtextxy(180,327,'Дата взыскания');
setcolor(white);
line(315,125,315,350);
delay(50);
setcolor(darkgray);
sp3.code_2:=sp2.code;
str(sp3.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(330,252,st+' ('+st1+')');
st:='';
st1:='';

date:=true;
place_x:=330;
place_y:=292;
p:=10;
create_int;
date:=false;
p:=9;
st1:='';
for z:=1 to length(st) do
if st[z]<>'.' then
st1:=st1+st[z];
val(st1,int,i);
sp3.award_date:=int;
int:=0;
st1:='';

date:=true;
place_x:=330;
place_y:=327;
p:=10;
create_int;
date:=false;
p:=9;
st1:='';
for z:=1 to length(st) do
if st[z]<>'.' then
st1:=st1+st[z];
val(st1,int,i);
sp3.penalty_date:=int;
int:=0;
st1:='';

write(list3,sp3);
setcolor(lightgray);
str(h,st);
if m3<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m3<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m3,st);
outtextxy(327,109,st);
st:='';
str(sp3.code,st);
outtextxy(330,147,st);
st:='';
outtextxy(330,182,sp3.award);
outtextxy(330,217,sp3.penalty);
str(sp3.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(330,252,st+' ('+st1+')');
st:='';
st1:='';
str(sp3.award_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,292,st1);
st1:='';
str(sp3.penalty_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,327,st1);
st1:='';
end;
setcolor(lightgray);
outtextxy(270,108,'Запись');
outtextxy(180,147,'Код');
outtextxy(180,182,'Вид награждения');
outtextxy(180,217,'Вид взыскания');
outtextxy(180,252,'Код сотрудника');
outtextxy(180,292,'Дата награждения');
outtextxy(180,327,'Дата взыскания');
line(315,125,315,350);
end;
setcolor(darkgray);
if h<>0 then
outtextxy(195,220,'База данных была успешно создана.')
else outtextxy(215,220,'База данных не была создана.');
delay(3000);
setcolor(lightgray);
if h<>0 then
outtextxy(195,220,'База данных была успешно создана.')
else outtextxy(215,220,'База данных не была создана.');
setlinestyle(0,0,3);
end;

procedure view_3;
begin
f:=17;
reset(list3);
setlinestyle(0,0,2);
setcolor(darkgray);
outtextxy(270,108,'Запись');
outtextxy(180,147,'Код');
outtextxy(180,182,'Вид награждения');
outtextxy(180,217,'Вид взыскания');
outtextxy(180,252,'Код сотрудника');
outtextxy(180,292,'Дата награждения');
outtextxy(180,327,'Дата взыскания');
p:=9;
setcolor(white);
setlinestyle(0,0,2);
line(315,125,315,350);
if (del=false) and (edit3=false) then m3:=1 else
if (m3>filesize(list3)) and (del=true) then m3:=filesize(list3);
st:='';
repeat
if find=true then m3:=srch[e];
seek(list3,m3-1);
read(list3,sp3);
setcolor(darkgray);
if find=true then
begin
str(search,st);
if e<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if e<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(e,st);
outtextxy(327,109,st);
st:='';
end else
begin
str(filesize(list3),st);
if m3<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m3<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m3,st);
outtextxy(327,109,st);
st:='';
end;
str(sp3.code,st);
outtextxy(330,147,st);
st:='';
outtextxy(330,182,sp3.award);
outtextxy(330,217,sp3.penalty);
reset(list2);
repeat
read(list2,sp2);
until sp2.code=sp3.code_2;
str(sp3.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(330,252,st+' ('+st1+')');
st:='';
st1:='';
str(sp3.award_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,292,st1);
st1:='';
str(sp3.penalty_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,327,st1);
st1:='';

if edit3=true then
repeat
setcolor(white);
case edit of
1:outtextxy(330,182,sp3.award);
2:outtextxy(330,217,sp3.penalty);
3:begin
reset(list2);
repeat
read(list2,sp2);
until sp2.code=sp3.code_2;
str(sp3.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(330,252,st+' ('+st1+')');
st:='';
st1:='';
end;
4:begin
str(sp3.award_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,292,st1);
st1:='';
end;
5:begin
str(sp3.penalty_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,327,st1);
st1:='';
end;
end;
while keypressed
do readkey;
g:=readkey;
if ord(g)=0 then g:=readkey;
delay(100);
setcolor(darkgray);
case edit of
1:outtextxy(330,182,sp3.award);
2:outtextxy(330,217,sp3.penalty);
3:begin
reset(list2);
repeat
read(list2,sp2);
until sp2.code=sp3.code_2;
str(sp3.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(330,252,st+' ('+st1+')');
st:='';
st1:='';
end;
4:begin
str(sp3.award_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,292,st1);
st1:='';
end;
5:begin
str(sp3.penalty_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,327,st1);
st1:='';
end;
end;
case g of
#72:if edit>1 then dec(edit) else edit:=5;
#80:if edit<5 then inc(edit) else edit:=1;
#13:
begin
reset(list3);
rewrite(temp3);
setcolor(lightgray);
for e:=1 to filesize(list3) do begin
read(list3,sp3);
if e=m3 then case edit of
1:begin
outtextxy(330,182,sp3.award);
place_x:=330;
place_y:=182;
create_str;
sp3.award:=st;
st:='';
end;
2:begin
outtextxy(330,217,sp3.penalty);
place_x:=330;
place_y:=217;
create_str;
sp3.penalty:=st;
st:='';
end;
3:begin
reset(list2);
repeat
read(list2,sp2);
until sp2.code=sp3.code_2;
str(sp3.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(330,252,st+' ('+st1+')');
st:='';
st1:='';
setcolor(lightgray);
str(filesize(list3),st);
if m3<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m3<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m3,st);
outtextxy(327,109,st);
st:='';
str(sp3.code,st);
outtextxy(330,147,st);
st:='';

outtextxy(330,182,sp3.award);
outtextxy(330,217,sp3.penalty);
str(sp3.award_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,292,st1);
st1:='';
str(sp3.penalty_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,327,st1);
st1:='';
outtextxy(270,108,'Запись');
outtextxy(180,147,'Код');
outtextxy(180,182,'Вид награждения');
outtextxy(180,217,'Вид взыскания');
outtextxy(180,252,'Код сотрудника');
outtextxy(180,292,'Дата награждения');
outtextxy(180,327,'Дата взыскания');
line(315,125,315,350);
delay(50);
setcolor(darkgray);
outtextxy(235,220,'Выберите сотрудника.');
delay(1500);
setcolor(lightgray);
outtextxy(235,220,'Выберите сотрудника.');
view_2;
f:=17;
setlinestyle(0,0,2);
setcolor(darkgray);
str(filesize(list3),st);
if m3<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m3<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m3,st);
outtextxy(327,109,st);
st:='';
str(sp3.code,st);
outtextxy(330,147,st);
st:='';
outtextxy(330,182,sp3.award);
outtextxy(330,217,sp3.penalty);
str(sp3.award_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,292,st1);
st1:='';
str(sp3.penalty_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,327,st1);
st1:='';

outtextxy(270,108,'Запись');
outtextxy(180,147,'Код');
outtextxy(180,182,'Вид награждения');
outtextxy(180,217,'Вид взыскания');
outtextxy(180,252,'Код сотрудника');
outtextxy(180,292,'Дата награждения');
outtextxy(180,327,'Дата взыскания');
setcolor(white);
line(315,125,315,350);
delay(50);
setcolor(darkgray);
sp3.code_2:=sp2.code;
str(sp3.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(330,252,st+' ('+st1+')');
st:='';
st1:='';
end;
4:begin
str(sp3.award_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,292,st1);
st1:='';
date:=true;
place_x:=330;
place_y:=292;
p:=10;
create_int;
date:=false;
p:=9;
st1:='';
for z:=1 to length(st) do
if st[z]<>'.' then
st1:=st1+st[z];
val(st1,int,i);
sp3.award_date:=int;
int:=0;
st1:='';
end;
5:begin
str(sp3.penalty_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,327,st1);
st1:='';
date:=true;
place_x:=330;
place_y:=327;
p:=10;
create_int;
date:=false;
p:=9;
st1:='';
for z:=1 to length(st) do
if st[z]<>'.' then
st1:=st1+st[z];
val(st1,int,i);
sp3.penalty_date:=int;
int:=0;
st1:='';

end;
end;
write(temp3,sp3);
end;
reset(temp3);
rewrite(list3);
while not(eof(temp3)) do
begin
read(temp3,sp3);
write(list3,sp3);
end;
end;
end;
until (g=#75) or (g=#77) or (g=#27) or (g=#13) else
begin
while keypressed
do readkey;
g:=readkey;
if ord(g)=0 then g:=readkey;
end;
delay(100);
setcolor(lightgray);
if find=true then
begin
str(search,st);
if e<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if e<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(e,st);
outtextxy(327,109,st);
st:='';
end else
begin
str(filesize(list3),st);
if m3<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m3<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m3,st);
outtextxy(327,109,st);
st:='';
end;
str(sp3.code,st);
outtextxy(330,147,st);
st:='';
outtextxy(330,182,sp3.award);
outtextxy(330,217,sp3.penalty);
str(sp3.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(330,252,st+' ('+st1+')');
st:='';
st1:='';
str(sp3.award_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,292,st1);
st1:='';
str(sp3.penalty_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,327,st1);
st1:='';
if find=false then case g of
#75:if m3>1 then dec(m3) else m3:=filesize(list3);
#77:if m3<filesize(list3) then inc(m3) else m3:=1;
end else
case g of
#75:if e>1 then dec(e) else e:=search;
#77:if e<search then inc(e) else e:=1;
end;
until (g=#13) or (g=#27);
setcolor(lightgray);
outtextxy(270,108,'Запись');
outtextxy(180,147,'Код');
outtextxy(180,182,'Вид награждения');
outtextxy(180,217,'Вид взыскания');
outtextxy(180,252,'Код сотрудника');
outtextxy(180,292,'Дата награждения');
outtextxy(180,327,'Дата взыскания');
line(315,125,315,350);
setlinestyle(0,0,3);
end;

procedure del_3;
begin
f:=17;
m3:=1;
del:=true;
repeat
view_3;
rewrite(temp3);
if g=#13 then begin
reset(list3);
for z:=1 to filesize(list3) do
begin
read(list3,sp3);
if z<>m3 then
write(temp3,sp3);
end;
reset(temp3);
rewrite(list3);
while not(eof(temp3)) do
begin
read(temp3,sp3);
write(list3,sp3);
end;
end;
until (g=#27) or (filesize(list3)=0);
if filesize(list3)=0 then
begin
setcolor(darkgray);
outtextxy(240,210,'Записей больше нет.');
delay(3000);
setcolor(lightgray);
outtextxy(240,210,'Записей больше нет.');
end;
del:=false;
end;

procedure add_3;
begin
f:=17;
setcolor(darkgray);
outtextxy(170,210,'Введите количество добавляемых записей');
p:=2;
place_x:=310;
place_y:=230;
create_int;
val(st,h,i);
st:='';
setcolor(lightgray);
outtextxy(170,210,'Введите количество добавляемых записей');
outtextxy(place_x,place_y,st);
str(h,st);
outtextxy(310,230,st);
st:='';
reset(list3);
if (h+filesize(list3)) > 99 then begin
max:=true;
h:=99-filesize(list3);
end;
if h<>0 then begin
setcolor(darkgray);
outtextxy(270,108,'Запись');
outtextxy(180,147,'Код');
outtextxy(180,182,'Вид награждения');
outtextxy(180,217,'Вид взыскания');
outtextxy(180,252,'Код сотрудника');
outtextxy(180,292,'Дата награждения');
outtextxy(180,327,'Дата взыскания');
p:=9;
setcolor(white);
setlinestyle(0,0,2);
line(315,125,315,350);
for m3:=1 to h do begin
reset(list3);
rewrite(temp3);
while not(eof(list3)) do
begin
read(list3,sp3);
write(temp3,sp3);
end;
reset(temp3);
rewrite(list3);
for z:=1 to filesize(temp3) do
begin
read(temp3,sp3);
if sp3.code=z then
write(list3,sp3);
end;
setcolor(darkgray);
str(filesize(temp3)+1,st);
if (filesize(list3)+1) <10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if (filesize(list3)+1) <10 then
line(337,116,340,109)
else line(345,116,348,109);
str(filesize(list3)+1,st);
outtextxy(327,109,st);
st:='';

sp3.code:=filesize(list3)+1;
str(sp3.code,st);
outtextxy(330,147,st);
st:='';
place_x:=330;
place_y:=182;
create_str;
sp3.award:=st;
st:='';
place_x:=330;
place_y:=217;
create_str;
sp3.penalty:=st;
st:='';

setcolor(lightgray);
str(filesize(temp3)+1,st);
if (filesize(list3)+1) <10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if (filesize(list3)+1) <10 then
line(337,116,340,109)
else line(345,116,348,109);
str(filesize(list3)+1,st);
outtextxy(327,109,st);
st:='';
str(sp3.code,st);
outtextxy(330,147,st);
st:='';
outtextxy(330,182,sp3.award);
outtextxy(330,217,sp3.penalty);
outtextxy(270,108,'Запись');
outtextxy(180,147,'Код');
outtextxy(180,182,'Вид награждения');
outtextxy(180,217,'Вид взыскания');
outtextxy(180,252,'Код сотрудника');
outtextxy(180,292,'Дата награждения');
outtextxy(180,327,'Дата взыскания');
line(315,125,315,350);
delay(50);
setcolor(darkgray);
outtextxy(235,220,'Выберите сотрудника.');
delay(1500);
setcolor(lightgray);
outtextxy(235,220,'Выберите сотрудника.');
view_2;
f:=17;
setlinestyle(0,0,2);
setcolor(darkgray);
str(filesize(temp3)+1,st);
if (filesize(list3)+1) <10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if (filesize(list3)+1) <10 then
line(337,116,340,109)
else line(345,116,348,109);
str(filesize(list3)+1,st);
outtextxy(327,109,st);
st:='';
str(sp3.code,st);
outtextxy(330,147,st);
st:='';
outtextxy(330,182,sp3.award);
outtextxy(330,217,sp3.penalty);
outtextxy(270,108,'Запись');
outtextxy(180,147,'Код');
outtextxy(180,182,'Вид награждения');
outtextxy(180,217,'Вид взыскания');
outtextxy(180,252,'Код сотрудника');
outtextxy(180,292,'Дата награждения');
outtextxy(180,327,'Дата взыскания');
setcolor(white);
line(315,125,315,350);
delay(50);
setcolor(darkgray);
sp3.code_2:=sp2.code;
str(sp3.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(330,252,st+' ('+st1+')');
st:='';
st1:='';

date:=true;
place_x:=330;
place_y:=292;
p:=10;
create_int;
date:=false;
p:=9;
st1:='';
for z:=1 to length(st) do
if st[z]<>'.' then
st1:=st1+st[z];
val(st1,int,i);
sp3.award_date:=int;
int:=0;
st1:='';

date:=true;
place_x:=330;
place_y:=327;
p:=10;
create_int;
date:=false;
p:=9;
st1:='';
for z:=1 to length(st) do
if st[z]<>'.' then
st1:=st1+st[z];
val(st1,int,i);
sp3.penalty_date:=int;
int:=0;
st1:='';

write(list3,sp3);
setcolor(lightgray);
str(filesize(temp3)+1,st);
if filesize(list3) <10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if filesize(list3) <10 then
line(337,116,340,109)
else line(345,116,348,109);
str(filesize(list3),st);
outtextxy(327,109,st);
st:='';
str(sp3.code,st);
outtextxy(330,147,st);
st:='';
outtextxy(330,182,sp3.award);
outtextxy(330,217,sp3.penalty);
str(sp3.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(330,252,st+' ('+st1+')');
st:='';
st1:='';
str(sp3.award_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,292,st1);
st1:='';
str(sp3.penalty_date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(330,327,st1);
st1:='';
reset(temp3);
seek(temp3,filesize(list3)-1);
while not(eof(temp3)) do
begin
read(temp3,sp3);
write(list3,sp3);
end;
end;
setcolor(lightgray);
outtextxy(270,108,'Запись');
outtextxy(180,147,'Код');
outtextxy(180,182,'Вид награждения');
outtextxy(180,217,'Вид взыскания');
outtextxy(180,252,'Код сотрудника');
outtextxy(180,292,'Дата награждения');
outtextxy(180,327,'Дата взыскания');
line(315,125,315,350);
end;
setcolor(darkgray);
if h>1 then begin if max=true then begin
outtextxy(220,200,'Превышен лимит в 99 записей');
delay(2000);
end;
outtextxy(205,220,'Записи были успешно добавлены.'); end else
if h<>0 then outtextxy(205,220,'Запись была успешно добавлена.')
else begin if max=true then begin
outtextxy(220,200,'Превышен лимит в 99 записей');
delay(2000);
end;
outtextxy(225,220,'Записи не были добавлены.');
end;
delay(3000);
setcolor(lightgray);
if h>1 then begin
outtextxy(220,200,'Превышен лимит в 99 записей');
outtextxy(205,220,'Записи были успешно добавлены.'); end else
if h<>0 then outtextxy(205,220,'Запись была успешно добавлена.')
else begin
outtextxy(220,200,'Превышен лимит в 99 записей');
outtextxy(225,220,'Записи не были добавлены.');
end;
max:=false;
setlinestyle(0,0,3);
end;

procedure edit_3;
begin
f:=17;
edit3:=true;
edit:=1;
m3:=1;
repeat
view_3;
until (g=#27);
edit3:=false;
setcolor(darkgray);
outtextxy(225,230,'Изменения были сохранены.');
delay(3000);
setcolor(lightgray);
outtextxy(225,230,'Изменения были сохранены.');
end;

procedure search_3;
begin
reset(list3);
setlinestyle(0,0,3);
setcolor(white);
arc(244,230,90,270,15);
arc(400,230,270,90,15);
line(244,215,400,215);
line(244,245,400,245);
setcolor(darkgray);
outtextxy(155,190,'Для поиска введите строку или часть строки');
place_x:=242;
place_y:=227;
f:=20;
create;
setlinestyle(0,0,3);
setcolor(lightgray);
arc(244,230,90,270,15);
arc(400,230,270,90,15);
line(244,215,400,215);
line(244,245,400,245);
outtextxy(155,190,'Для поиска введите строку или часть строки');
outtextxy(242,227,st);
search:=0;
find:=false;
e:=1;
for z:=1 to length(st) do
if st[z]<>'.' then
st1:=st1+st[z];
st:=st1;
st1:='';
for m:=1 to filesize(list3) do begin
read(list3,sp3);

str(sp3.code,st1);
if pos(st,st1)<>0 then
find:=true;
if pos(st,sp3.award)<>0 then
find:=true;
if pos(st,sp3.penalty)<>0 then
find:=true;
str(sp3.code_2,st1);
if pos(st,st1)<>0 then
find:=true;
str(sp3.award_date,st1);
if pos(st,st1)<>0 then
find:=true;
str(sp3.penalty_date,st1);
if pos(st,st1)<>0 then
find:=true;
if find=true then
begin
inc(search);
srch[search]:=m;
end;
find:=false;
end;
if srch[1]<>0 then
find:=true;
if find=true then begin
setcolor(darkgray);
str(search,st);
outtextxy(230,210,'Найдено соотвествий - '+st);
delay(2000);
setcolor(lightgray);
outtextxy(230,210,'Найдено соотвествий - '+st);
view_3;
end else
begin
setcolor(darkgray);
outtextxy(230,210,'Cоотвествий не найдено');
delay(2000);
setcolor(lightgray);
outtextxy(230,210,'Cоотвествий не найдено');
end;
find:=false;
for z:=1 to 99 do
srch[z]:=0;
end;
procedure create_4;
begin
f:=16;
h:=0;
setcolor(darkgray);
outtextxy(180,210,'Введите количество вносимых записей');
p:=2;
place_x:=320;
place_y:=230;
create_int;
val(st,h,i);
st:='';
setcolor(lightgray);
outtextxy(180,210,'Введите количество вносимых записей');
outtextxy(place_x,place_y,st);
str(h,st);
outtextxy(320,230,st);
st:='';
if h<>0 then begin
setcolor(darkgray);
outtextxy(270,108,'Запись');
outtextxy(180,143,'Код');
outtextxy(180,179,'Название курса');
outtextxy(180,229,'Дата прохождения');
outtextxy(180,279,'Код сотрудника');
outtextxy(180,329,'Место прохождения');
p:=9;
setcolor(white);
setlinestyle(0,0,2);
line(325,125,325,350);
rewrite(list4);
for m4:=1 to h do begin
setcolor(darkgray);
str(h,st);
if m4<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m4<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m4,st);
outtextxy(327,109,st);
st:='';
sp4.code:=m4;
str(sp4.code,st);
outtextxy(335,143,st);
st:='';
place_x:=335;
place_y:=179;
create_str;
sp4.name:=st;
st:='';
date:=true;
place_x:=335;
place_y:=229;
p:=10;
create_int;
date:=false;
p:=9;
st1:='';
for z:=1 to length(st) do
if st[z]<>'.' then
st1:=st1+st[z];
val(st1,int,i);
sp4.date:=int;
int:=0;
st1:='';

setcolor(lightgray);
str(h,st);
if m4<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m4<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m4,st);
outtextxy(327,109,st);
st:='';
str(sp4.code,st);
outtextxy(335,143,st);
st:='';
outtextxy(335,179,sp4.name);
str(sp4.date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(335,229,st1);
st1:='';
outtextxy(270,108,'Запись');
outtextxy(180,143,'Код');
outtextxy(180,179,'Название курса');
outtextxy(180,229,'Дата прохождения');
outtextxy(180,279,'Код сотрудника');
outtextxy(180,329,'Место прохождения');
line(325,125,325,350);
delay(50);
setcolor(darkgray);
outtextxy(235,220,'Выберите сотрудника.');
delay(1500);
setcolor(lightgray);
outtextxy(235,220,'Выберите сотрудника.');
view_2;
f:=16;
setlinestyle(0,0,2);
setcolor(darkgray);
str(h,st);
if m4<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m4<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m4,st);
outtextxy(327,109,st);
st:='';
str(sp4.code,st);
outtextxy(335,143,st);
st:='';
outtextxy(335,179,sp4.name);
str(sp4.date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(335,229,st1);
st1:='';
outtextxy(270,108,'Запись');
outtextxy(180,143,'Код');
outtextxy(180,179,'Название курса');
outtextxy(180,229,'Дата прохождения');
outtextxy(180,279,'Код сотрудника');
outtextxy(180,329,'Место прохождения');
setcolor(white);
line(325,125,325,350);
delay(50);
setcolor(darkgray);
sp4.code_2:=sp2.code;
str(sp4.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(335,279,st+' ('+st1+')');
st:='';
st1:='';
place_x:=335;
place_y:=329;
create_str;
sp4.place:=st;
st:='';
write(list4,sp4);
setcolor(lightgray);
str(h,st);
if m4<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m4<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m4,st);
outtextxy(327,109,st);
st:='';
str(sp4.code,st);
outtextxy(335,143,st);
st:='';
outtextxy(335,179,sp4.name);
str(sp4.date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(335,229,st1);
st1:='';
str(sp4.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(335,279,st+' ('+st1+')');
st:='';
st1:='';
outtextxy(335,329,sp4.place);
end;
setcolor(lightgray);
outtextxy(270,108,'Запись');
outtextxy(180,143,'Код');
outtextxy(180,179,'Название курса');
outtextxy(180,229,'Дата прохождения');
outtextxy(180,279,'Код сотрудника');
outtextxy(180,329,'Место прохождения');
line(325,125,325,350);
end;
setcolor(darkgray);
if h<>0 then
outtextxy(195,220,'База данных была успешно создана.')
else outtextxy(215,220,'База данных не была создана.');
delay(3000);
setcolor(lightgray);
if h<>0 then
outtextxy(195,220,'База данных была успешно создана.')
else outtextxy(215,220,'База данных не была создана.');
setlinestyle(0,0,3);
end;

procedure view_4;
begin
f:=16;
reset(list4);
setlinestyle(0,0,2);
setcolor(darkgray);
outtextxy(270,108,'Запись');
outtextxy(180,143,'Код');
outtextxy(180,179,'Название курса');
outtextxy(180,229,'Дата прохождения');
outtextxy(180,279,'Код сотрудника');
outtextxy(180,329,'Место прохождения');
p:=9;
setcolor(white);
setlinestyle(0,0,2);
line(325,125,325,350);
if (del=false) and (edit4=false) then m4:=1 else
if (m4>filesize(list4)) and (del=true) then m4:=filesize(list4);
st:='';
repeat
if find=true then m4:=srch[e];
seek(list4,m4-1);
read(list4,sp4);
setcolor(darkgray);
if find=true then
begin
str(search,st);
if e<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if e<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(e,st);
outtextxy(327,109,st);
st:='';
end else
begin
str(filesize(list4),st);
if m4<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m4<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m4,st);
outtextxy(327,109,st);
st:='';
end;
str(sp4.code,st);
outtextxy(335,143,st);
st:='';
outtextxy(335,179,sp4.name);
str(sp4.date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(335,229,st1);
st1:='';
reset(list2);
repeat
read(list2,sp2);
until sp2.code=sp4.code_2;
str(sp4.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(335,279,st+' ('+st1+')');
st:='';
st1:='';
outtextxy(335,329,sp4.place);

if edit4=true then
repeat
setcolor(white);
case edit of
1:outtextxy(335,179,sp4.name);
2:begin
str(sp4.date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(335,229,st1);
st1:='';
end;
3:begin
reset(list2);
repeat
read(list2,sp2);
until sp2.code=sp4.code_2;
str(sp4.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(335,279,st+' ('+st1+')');
st:='';
st1:='';
end;
4:outtextxy(335,329,sp4.place);
end;
while keypressed
do readkey;
g:=readkey;
if ord(g)=0 then g:=readkey;
delay(100);
setcolor(darkgray);
case edit of
1:outtextxy(335,179,sp4.name);
2:begin
str(sp4.date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(335,229,st1);
st1:='';
end;
3:begin
reset(list2);
repeat
read(list2,sp2);
until sp2.code=sp4.code_2;
str(sp4.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(335,279,st+' ('+st1+')');
st:='';
st1:='';
end;
4:outtextxy(335,329,sp4.place);
end;
case g of
#72:if edit>1 then dec(edit) else edit:=4;
#80:if edit<4 then inc(edit) else edit:=1;
#13:
begin
reset(list4);
rewrite(temp4);
setcolor(lightgray);
for e:=1 to filesize(list4) do begin
read(list4,sp4);
if e=m4 then case edit of
1:begin
outtextxy(335,179,sp4.name);
place_x:=335;
place_y:=179;
create_str;
sp4.name:=st;
st:='';
end;
2:begin
str(sp4.date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(335,229,st1);
st1:='';
date:=true;
place_x:=335;
place_y:=229;
p:=10;
create_int;
date:=false;
p:=9;
st1:='';
for z:=1 to length(st) do
if st[z]<>'.' then
st1:=st1+st[z];
val(st1,int,i);
sp4.date:=int;
int:=0;
st1:='';
end;
3:begin
reset(list2);
repeat
read(list2,sp2);
until sp2.code=sp4.code_2;
str(sp4.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(335,279,st+' ('+st1+')');
st:='';
st1:='';

setcolor(lightgray);
str(filesize(list4),st);
if m4<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m4<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m4,st);
outtextxy(327,109,st);
st:='';
str(sp4.code,st);
outtextxy(335,143,st);
st:='';
outtextxy(335,179,sp4.name);
str(sp4.date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(335,229,st1);
st1:='';
outtextxy(335,329,sp4.place);
outtextxy(270,108,'Запись');
outtextxy(180,143,'Код');
outtextxy(180,179,'Название курса');
outtextxy(180,229,'Дата прохождения');
outtextxy(180,279,'Код сотрудника');
outtextxy(180,329,'Место прохождения');
line(325,125,325,350);
delay(50);
setcolor(darkgray);
outtextxy(235,220,'Выберите сотрудника.');
delay(1500);
setcolor(lightgray);
outtextxy(235,220,'Выберите сотрудника.');
view_2;
f:=16;
setlinestyle(0,0,2);
setcolor(darkgray);
str(filesize(list4),st);
if m4<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m4<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m4,st);
outtextxy(327,109,st);
st:='';
str(sp4.code,st);
outtextxy(335,143,st);
st:='';
outtextxy(335,179,sp4.name);
str(sp4.date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(335,229,st1);
st1:='';
outtextxy(335,329,sp4.place);
outtextxy(270,108,'Запись');
outtextxy(180,143,'Код');
outtextxy(180,179,'Название курса');
outtextxy(180,229,'Дата прохождения');
outtextxy(180,279,'Код сотрудника');
outtextxy(180,329,'Место прохождения');
setcolor(white);
line(325,125,325,350);
delay(50);
setcolor(darkgray);
sp4.code_2:=sp2.code;
str(sp4.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(335,279,st+' ('+st1+')');
st:='';
st1:='';
end;
4:begin
outtextxy(335,329,sp4.place);
place_x:=335;
place_y:=329;
create_str;
sp4.place:=st;
st:='';
end;
end;
write(temp4,sp4);
end;
reset(temp4);
rewrite(list4);
while not(eof(temp4)) do
begin
read(temp4,sp4);
write(list4,sp4);
end;
end;
end;
until (g=#75) or (g=#77) or (g=#27) or (g=#13) else
begin
while keypressed
do readkey;
g:=readkey;
if ord(g)=0 then g:=readkey;
end;

delay(100);
setcolor(lightgray);
if find=true then
begin
str(search,st);
if e<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if e<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(e,st);
outtextxy(327,109,st);
st:='';
end else
begin
str(filesize(list4),st);
if m4<10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if m4<10 then
line(337,116,340,109)
else line(345,116,348,109);
str(m4,st);
outtextxy(327,109,st);
st:='';
end;
str(sp4.code,st);
outtextxy(335,143,st);
st:='';
outtextxy(335,179,sp4.name);
str(sp4.date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(335,229,st1);
st1:='';
reset(list2);
repeat
read(list2,sp2);
until sp2.code=sp4.code_2;
str(sp4.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(335,279,st+' ('+st1+')');
st:='';
st1:='';
outtextxy(335,329,sp4.place);
if find=false then case g of
#75:if m4>1 then dec(m4) else m4:=filesize(list4);
#77:if m4<filesize(list4) then inc(m4) else m4:=1;
end else
case g of
#75:if e>1 then dec(e) else e:=search;
#77:if e<search then inc(e) else e:=1;
end;
until (g=#13) or (g=#27);
setcolor(lightgray);
outtextxy(270,108,'Запись');
outtextxy(180,143,'Код');
outtextxy(180,179,'Название курса');
outtextxy(180,229,'Дата прохождения');
outtextxy(180,279,'Код сотрудника');
outtextxy(180,329,'Место прохождения');
line(325,125,325,350);
setlinestyle(0,0,3);
end;

procedure del_4;
begin
f:=16;
m4:=1;
del:=true;
repeat
view_4;
rewrite(temp4);
if g=#13 then begin
reset(list4);
for z:=1 to filesize(list4) do
begin
read(list4,sp4);
if z<>m4 then
write(temp4,sp4);
end;
reset(temp4);
rewrite(list4);
while not(eof(temp4)) do
begin
read(temp4,sp4);
write(list4,sp4);
end;
end;
until (g=#27) or (filesize(list4)=0);
if filesize(list4)=0 then
begin
setcolor(darkgray);
outtextxy(240,210,'Записей больше нет.');
delay(3000);
setcolor(lightgray);
outtextxy(240,210,'Записей больше нет.');
end;
del:=false;
end;

procedure add_4;
begin
f:=16;
setcolor(darkgray);
outtextxy(170,210,'Введите количество добавляемых записей');
p:=2;
place_x:=310;
place_y:=230;
create_int;
val(st,h,i);
st:='';
setcolor(lightgray);
outtextxy(170,210,'Введите количество добавляемых записей');
outtextxy(place_x,place_y,st);
str(h,st);
outtextxy(310,230,st);
st:='';
reset(list4);
if (h+filesize(list4)) > 99 then begin
max:=true;
h:=99-filesize(list4);
end;
if h<>0 then begin
setcolor(darkgray);
outtextxy(270,108,'Запись');
outtextxy(180,143,'Код');
outtextxy(180,179,'Название курса');
outtextxy(180,229,'Дата прохождения');
outtextxy(180,279,'Код сотрудника');
outtextxy(180,329,'Место прохождения');
p:=9;
setcolor(white);
setlinestyle(0,0,2);
line(325,125,325,350);
for m4:=1 to h do begin
reset(list4);
rewrite(temp4);
while not(eof(list4)) do
begin
read(list4,sp4);
write(temp4,sp4);
end;
reset(temp4);
rewrite(list4);
for z:=1 to filesize(temp4) do
begin
read(temp4,sp4);
if sp4.code=z then
write(list4,sp4);
end;
setcolor(darkgray);
str(filesize(temp4)+1,st);
if (filesize(list4)+1) <10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if (filesize(list4)+1) <10 then
line(337,116,340,109)
else line(345,116,348,109);
str(filesize(list4)+1,st);
outtextxy(327,109,st);
st:='';

sp4.code:=filesize(list4)+1;
str(sp4.code,st);
outtextxy(335,143,st);
st:='';
place_x:=335;
place_y:=179;
create_str;
sp4.name:=st;
st:='';
date:=true;
place_x:=335;
place_y:=229;
p:=10;
create_int;
date:=false;
p:=9;
st1:='';
for z:=1 to length(st) do
if st[z]<>'.' then
st1:=st1+st[z];
val(st1,int,i);
sp4.date:=int;
int:=0;
st1:='';

setcolor(lightgray);
str(filesize(temp4)+1,st);
if (filesize(list4)+1) <10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if (filesize(list4)+1) <10 then
line(337,116,340,109)
else line(345,116,348,109);
str(filesize(list4)+1,st);
outtextxy(327,109,st);
st:='';
str(sp4.code,st);
outtextxy(335,143,st);
st:='';
outtextxy(335,179,sp4.name);
str(sp4.date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(335,229,st1);
st1:='';
outtextxy(270,108,'Запись');
outtextxy(180,143,'Код');
outtextxy(180,179,'Название курса');
outtextxy(180,229,'Дата прохождения');
outtextxy(180,279,'Код сотрудника');
outtextxy(180,329,'Место прохождения');
line(325,125,325,350);
delay(50);
setcolor(darkgray);
outtextxy(235,220,'Выберите сотрудника.');
delay(1500);
setcolor(lightgray);
outtextxy(235,220,'Выберите сотрудника.');
view_2;
f:=16;
setlinestyle(0,0,2);
setcolor(darkgray);
str(filesize(temp4)+1,st);
if (filesize(list4)+1) <10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if (filesize(list4)+1) <10 then
line(337,116,340,109)
else line(345,116,348,109);
str(filesize(list4)+1,st);
outtextxy(327,109,st);
st:='';
str(sp4.code,st);
outtextxy(335,143,st);
st:='';
outtextxy(335,179,sp4.name);
str(sp4.date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(335,229,st1);
st1:='';
outtextxy(270,108,'Запись');
outtextxy(180,143,'Код');
outtextxy(180,179,'Название курса');
outtextxy(180,229,'Дата прохождения');
outtextxy(180,279,'Код сотрудника');
outtextxy(180,329,'Место прохождения');
setcolor(white);
line(325,125,325,350);
delay(50);
setcolor(darkgray);
sp4.code_2:=sp2.code;
str(sp4.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(335,279,st+' ('+st1+')');
st:='';
st1:='';
place_x:=335;
place_y:=329;
create_str;
sp4.place:=st;
st:='';

write(list4,sp4);
setcolor(lightgray);
str(filesize(temp4)+1,st);
if filesize(list4) <10 then
outtextxy(345,109,st)
else outtextxy(353,109,st);
st:='';
if filesize(list4) <10 then
line(337,116,340,109)
else line(345,116,348,109);
str(filesize(list4),st);
outtextxy(327,109,st);
st:='';
str(sp4.code,st);
outtextxy(335,143,st);
st:='';
outtextxy(335,179,sp4.name);
str(sp4.date,st);
st1:='';
for z:=1 to length(st) do
begin
st1:=st1+st[z];
if (length(st1)=2) or (length(st1)=5) then
st1:=st1+'.';
end;
outtextxy(335,229,st1);
st1:='';
str(sp4.code_2,st);
st1:=sp2.surname;
st1:=st1+' '+sp2.name[1]+'.'+sp2.otchestvo[1]+'.';
outtextxy(335,279,st+' ('+st1+')');
st:='';
st1:='';
outtextxy(335,329,sp4.place);
reset(temp4);
seek(temp4,filesize(list4)-1);
while not(eof(temp4)) do
begin
read(temp4,sp4);
write(list4,sp4);
end;
end;
setcolor(lightgray);
outtextxy(270,108,'Запись');
outtextxy(180,143,'Код');
outtextxy(180,179,'Название курса');
outtextxy(180,229,'Дата прохождения');
outtextxy(180,279,'Код сотрудника');
outtextxy(180,329,'Место прохождения');
line(325,125,325,350);
end;
setcolor(darkgray);
if h>1 then begin if max=true then begin
outtextxy(220,200,'Превышен лимит в 99 записей');
delay(2000);
end;
outtextxy(205,220,'Записи были успешно добавлены.'); end else
if h<>0 then outtextxy(205,220,'Запись была успешно добавлена.')
else begin if max=true then begin
outtextxy(220,200,'Превышен лимит в 99 записей');
delay(2000);
end;
outtextxy(225,220,'Записи не были добавлены.');
end;
delay(3000);
setcolor(lightgray);
if h>1 then begin
outtextxy(220,200,'Превышен лимит в 99 записей');
outtextxy(205,220,'Записи были успешно добавлены.'); end else
if h<>0 then outtextxy(205,220,'Запись была успешно добавлена.')
else begin
outtextxy(220,200,'Превышен лимит в 99 записей');
outtextxy(225,220,'Записи не были добавлены.');
end;
max:=false;
setlinestyle(0,0,3);
end;

procedure edit_4;
begin
f:=16;
edit4:=true;
edit:=1;
m4:=1;
repeat
view_4;
until (g=#27);
edit4:=false;
setcolor(darkgray);
outtextxy(225,230,'Изменения были сохранены.');
delay(3000);
setcolor(lightgray);
outtextxy(225,230,'Изменения были сохранены.');
end;
procedure search_4;
begin
reset(list4);
setlinestyle(0,0,3);
setcolor(white);
arc(244,230,90,270,15);
arc(400,230,270,90,15);
line(244,215,400,215);
line(244,245,400,245);
setcolor(darkgray);
outtextxy(155,190,'Для поиска введите строку или часть строки');
place_x:=242;
place_y:=227;
f:=20;
create;
setlinestyle(0,0,3);
setcolor(lightgray);
arc(244,230,90,270,15);
arc(400,230,270,90,15);
line(244,215,400,215);
line(244,245,400,245);
outtextxy(155,190,'Для поиска введите строку или часть строки');
outtextxy(242,227,st);
search:=0;
find:=false;
e:=1;
for z:=1 to length(st) do
if st[z]<>'.' then
st1:=st1+st[z];
st:=st1;
st1:='';
for m:=1 to filesize(list4) do begin
read(list4,sp4);
str(sp4.code,st1);
if pos(st,st1)<>0 then
find:=true;
if pos(st,sp4.name)<>0 then
find:=true;
str(sp4.date,st1);
if pos(st,st1)<>0 then
find:=true;
str(sp4.code_2,st1);
if pos(st,st1)<>0 then
find:=true;
if pos(st,sp4.place)<>0 then
find:=true;
if find=true then
begin
inc(search);
srch[search]:=m;
end;
find:=false;
end;
if srch[1]<>0 then
find:=true;
if find=true then begin
setcolor(darkgray);
str(search,st);
outtextxy(230,210,'Найдено соотвествий - '+st);
delay(2000);
setcolor(lightgray);
outtextxy(230,210,'Найдено соотвествий - '+st);
view_4;
end else
begin
setcolor(darkgray);
outtextxy(230,210,'Cоотвествий не найдено');
delay(2000);
setcolor(lightgray);
outtextxy(230,210,'Cоотвествий не найдено');
end;
find:=false;
for z:=1 to 99 do
srch[z]:=0;
end;
begin
assign(list1,'bd1.txt');
assign(temp1,'bd1_temp.txt');
assign(list2,'bd2.txt');
assign(temp2,'bd2_temp.txt');
assign(list3,'bd3.txt');
assign(temp3,'bd3_temp.txt');
assign(list4,'bd4.txt');
assign(temp4,'bd4_temp.txt');
end.