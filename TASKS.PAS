unit tasks;
interface
procedure task_1;
procedure task_2;
procedure task_3;
procedure task_4;
procedure task_5;
implementation
uses crt,graph,windos,bases;
var age,year,month,day,sex,edit,
h,m,m2,m3,m4,p,f,place_y,place_x,zv,k,z,color,i,dx,dm,puzir:integer;
d:real;
x,c,int:longint;
year_pr,month_pr,day_pr,w_day:word;
st,st1,st2:string;

procedure task_1;
begin
e:=1;
search:=0;
getdate(year_pr,month_pr,day_pr,w_day);
reset(list2);
for m:=1 to filesize(list2) do begin
st:='';
st1:='';
age:=0;
read(list2,sp2);
str(sp2.birth_date,st);
st1:=st[1]+st[2];
val(st1,day,i);
st1:='';
st1:=st[3]+st[4];
val(st1,month,i);
st1:='';
for z:=5 to 8 do
st1:=st1+st[z];
val(st1,year,i);
st1:='';
age:=year_pr-year;
if month_pr<month then dec(age) else
if (month_pr=month) and (day_pr<day) then
dec(age);
if (sp2.pol='Мужской') and (age>=63) then
begin
inc(search);
srch[search]:=m;
end
else
if (sp2.pol='Женский') and (age>=58) then
begin
inc(search);
srch[search]:=m;
end;

end;
if srch[1]<>0 then
find:=true;
if find=true then
begin
setcolor(darkgray);
str(search,st);
outtextxy(210,210,'Работающих пенсионеров - '+st);
delay(2000);
setcolor(lightgray);
outtextxy(210,210,'Работающих пенсионеров - '+st);
view_2;
end else
begin
setcolor(darkgray);
outtextxy(210,210,'Работающих пенсионеров нет');
delay(2000);
setcolor(lightgray);
outtextxy(210,210,'Работающих пенсионеров нет');
end;
find:=false;
for z:=1 to 99 do
srch[z]:=0;
end;

procedure task_2;
begin
e:=1;
search:=0;
getdate(year_pr,month_pr,day_pr,w_day);
reset(list2);
for m:=1 to filesize(list2) do begin
st:='';
st1:='';
age:=0;
read(list2,sp2);
str(sp2.birth_date,st);
st1:=st[1]+st[2];
val(st1,day,i);
st1:='';
st1:=st[3]+st[4];
val(st1,month,i);
st1:='';

if (month_pr=month) and (day_pr<=day) then
begin
inc(search);
srch[search]:=m;
end else begin
if month=1 then month:=12 else
dec(month);
if (month_pr=month) and ((day_pr-day)>=0) then
begin
inc(search);
srch[search]:=m;
end;
end;
end;
if srch[1]<>0 then
find:=true;
if find=true then
begin
setcolor(darkgray);
str(search,st);
outtextxy(160,210,'Сотрудников с ближайшим днем рождения - '+st);
delay(2000);
setcolor(lightgray);
outtextxy(160,210,'Сотрудников с ближайшим днем рождения - '+st);
view_2;
end else
begin
setcolor(darkgray);
outtextxy(160,210,'Сотрудников с ближайшим днем рождения нет');
delay(2000);
setcolor(lightgray);
outtextxy(160,210,'Сотрудников с ближайшим днем рождения нет');
end;
find:=false;
for z:=1 to 99 do
srch[z]:=0;
end;

procedure task_3;
begin
reset(list3);
z:=0;
e:=1;
st:='';
st1:='';
c:=0;
x:=0;
search:=1;
for m:=1 to filesize(list3) do begin
read(list3,sp3);
str(sp3.code_2,st1);
if sp3.penalty='' then
st1:='';
st:=st+st1;
end;
st1:='';
repeat
for m:=1 to length(st) do
if st[1]<>st[m] then
st1:=st1+st[m] else
inc(x);
if x>z then begin
z:=x;
val(st[1],c,i);
end;
x:=0;
st:=st1;
st1:='';
until length(st)=0;
if c<>0 then begin
find:=true;
srch[1]:=c;
setcolor(darkgray);
str(z,st);
outtextxy(227,220,'Количество взысканий - '+st);
delay(2000);
setcolor(lightgray);
outtextxy(227,220,'Количество взысканий - '+st);
view_2;
end else
begin
setcolor(darkgray);
outtextxy(270,220,'Взысканий нет');
delay(2000);
setcolor(lightgray);
outtextxy(270,220,'Взысканий нет');
end;
find:=false;
srch[1]:=0;
end;

procedure task_4;
begin
getdate(year_pr,month_pr,day_pr,w_day);
st:='';
st1:='';
st2:='';
search:=0;
e:=1;
reset(list4);
for m:=1 to filesize(list4) do begin
read(list4,sp4);
str(sp4.date,st);
for z:=5 to 8 do
st1:=st1+st[z];
val(st1,year,i);
st1:='';
if year=year_pr then
begin
str(sp4.code_2,st);
if pos(st,st2)=0 then
st2:=st2+st;
st:='';
end;
end;
for z:=1 to length(st2) do begin
reset(list2);
for m:=1 to filesize(list2) do begin
read(list2,sp2);
str(sp2.code,st);
if st2[z]=st then begin
inc(search);
srch[search]:=m;
end;
end;
end;
if srch[1]<>0 then
find:=true;
if find=true then
begin
setcolor(darkgray);
str(search,st);
outtextxy(210,200,'Сотрудников проходящих курсы');
outtextxy(170,220,'по повышению квалификации в этом году');
outtextxy(317,240,st);
delay(3000);
setcolor(lightgray);
outtextxy(210,200,'Сотрудников проходящих курсы');
outtextxy(170,220,'по повышению квалификации в этом году');
outtextxy(317,240,st);
view_2;
end else
begin
setcolor(darkgray);
outtextxy(210,200,'Сотрудников проходящих курсы');
outtextxy(155,220,'по повышению квалификации в этом году нет');
delay(3000);
setcolor(lightgray);
outtextxy(210,200,'Сотрудников проходящих курсы');
outtextxy(155,220,'по повышению квалификации в этом году нет');
end;
find:=false;
for z:=1 to 99 do
srch[z]:=0;
end;

procedure task_5;
begin
c:=999999999;
search:=0;
e:=1;
reset(list1);
while not eof(list1) do begin
read(list1,sp1);
if sp1.pay<c then
c:=sp1.pay;
end;
reset(list1);
for m:=1 to filesize(list1) do begin
read(list1,sp1);
if c=sp1.pay then
begin
inc(search);
srch[search]:=m;
end;
end;
if srch[1]<>0 then
find:=true;
if find=true then
begin
setcolor(darkgray);
str(search,st);
outtextxy(179,215,'Должностей с минимальным окладом - '+st);
delay(2000);
setcolor(lightgray);
outtextxy(179,215,'Должностей с минимальным окладом - '+st);
view_1;
end;
find:=false;
for z:=1 to 99 do
srch[z]:=0;
end;
end.
