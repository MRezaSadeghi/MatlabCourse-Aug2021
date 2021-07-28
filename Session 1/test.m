clc; clear; close all;
h = ones(1, 40);
syms m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 m11 m12 m13 m14 m15 m16 m17 m18 m19 m20 m21 m22  w_1 w_2 w_3 q_in q_out
A(1)=m9==m8;%boiler
A(2)=m7==m8;%pump3
A(3)=m9==m10+m11;%turb1
A(4)=m11==m14+m15+m16;%turb2
A(5)=m16==m19+m20;%turb3
A(6)=m20+m22==m1;%conden
A(7)=m21==m22;%ev1
A(8)=m2==m1;%pump1
A(9)=m19+m2==m3+m21;%cf_1
A(10)=m3+m15+m18==m14;%of
A(11)=m5==m4;%pump2
A(12)=m17==m18;%ev2
A(13)=m17+m6==m5+m14+m13;%cf_2
A(14)=m10+m6==m7+m12;%cf_3
A(15)=m13==m12;%ev3
A(16)=m9*h(9)==m11*h(11)+m10*h(10)+w_1;%turb1
A(17)=m11*h(11)==m14*h(14)+m15*h(15)+m16*h(16)+w_2;%turb2
A(18)=m16*h(16)==m20*h(20)+m19*h(19)+w_3;%turb3
A(19)=m20*h(20)+m22*h(22)==m1*h(1)+q_out;%conden
A(20)=m19*h(19)+m2*h(2)==m21*h(21)+m3*h(3);%cf_1
A(21)=m15*h(15)+m3*h(3)+m18*h(18)==m4*h(4);%op
A(22)=m14*h(14)+m5*h(5)+m13*h(13)==m17*h(17)+m6*h(6);%cf_2
A(23)=m10*h(10)+m6*h(6)==m7*h(7)+m12*h(12);%cf_3
A(24)=q_in+m8*h(8)==m9*h(9);%boiler
A(25)=w_1+m1*h(1)==m2*h(2);%pump1
A(26)=w_2+m4*h(4)==m5*h(5);%pump2
A(27)=w_3+m7*h(7)==m8*h(8);%pump3
S = solve(A,[m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 m11 m12 m13 m14 m15 m16 m17 m18 m19 m20 m21 m22 w_1 w_2 w_3 q_in q_out]);
disp('done');
