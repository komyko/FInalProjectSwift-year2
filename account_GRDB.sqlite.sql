BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "masterctrl" (
	"member_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "song" (
	"artist"	TEXT,
	"language"	TEXT,
	"songalbum"	TEXT,
	"image"	TEXT,
	"lyrics"	TEXT,
	PRIMARY KEY("artist")
);
CREATE TABLE IF NOT EXISTS "register" (
	"member_id"	INTEGER,
	"member_name"	TEXT,
	"mem_passw"	TEXT,
	"email"	TEXT,
	"active"	INTEGER,
	PRIMARY KEY("member_id")
);
CREATE TABLE IF NOT EXISTS "product" (
	"id"	INTEGER,
	"name"	TEXT,
	"detail"	TEXT,
	"price"	INTEGER,
	"stock"	INTEGER,
	"image"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "masterctrl" VALUES (101);
INSERT INTO "song" VALUES ('Alan Walker','ENG','faded','Alanwalker1.jpeg','You were the shadow to my light
Did you feel us?
Another star
You fade away
Afraid our aim is out of sight
Wanna see us
Alight

Where are you now?
Where are you now?
Where are you now?
Was it all in my fantasy?
Where are you now?
Were you only imaginary?

Where are you now?
Atlantis
Under the sea
Under the sea
Where are you now?
Another dream
The monster''s running wild inside of me
I''m faded
I''m faded
So lost, I''m faded
I''m faded
So lost, I''m faded

These shallow waters never met what I needed
I''m letting go a deeper dive
Eternal silence of the sea, I''m breathing
Alive

Where are you now?
Where are you now?
Under the bright but faded lights
You''ve set my heart on fire
Where are you now?
Where are you now?

Where are you now?
Atlantis
Under the sea
Under the sea
Where are you now?
Another dream
The monster''s running wild inside of me
I''m faded
I''m faded
So lost, I''m faded
I''m faded
So lost, I''m faded');
INSERT INTO "song" VALUES ('One Republic','ENG','secrets','OneRepublic.jpg','I need another story
Something to get off my chest
My life gets kinda boring
Need something that I can confess

''Til all my sleeves are stained red
From all the truth that I''ve said
Come by it honestly I swear
Thought you saw me wink, no
I''ve been on the brink, so

Tell me what you want to hear
Something that will light those ears
Sick of all the insincere
So I''m gonna give all my secrets away

This time don''t need another perfect lie
Don''t care if critics ever jump in line
I''m gonna give all my secrets away

My God, amazing how we got this far
It''s like we''re chasing all those stars
Who''s driving shiny big black cars
And everyday I see the news
All the problems that we could solve
And when a situation rises
Just write it into an album
Send it straight to gold
But I don''t really like my flow, no, so

Tell me what you want to hear
Something that will light those ears
Sick of all the insincere
So I''m gonna give all my secrets away

This time, don''t need another perfect lie
Don''t care if critics ever jump in line
I''m gonna give all my secrets away

Oh, got no reason, got no shame
Got no family I can blame
Just don''t let me disappear
I''ma tell you everything

So tell me what you want to hear
Something that will light those ears
Sick of all the insincere
So I''m gonna give all my secrets away

This time, don''t need another perfect lie
Don''t care if critics ever jump in line
I''m gonna give all my secrets away

So tell me what you want to hear
Something that will light those ears
Sick of all the insincere
So I''m gonna give all my secrets away

This time, don''t need another perfect lie
Don''t care if critics ever jump in line
I''m gonna give all my secrets away
All my secrets away, all my secrets away');
INSERT INTO "song" VALUES ('Ed Sheeran','ENG','perfect','ed-Sheeran.jpg','I found a love for me
Darling, just dive right in
And follow my lead
Well, I found a girl, beautiful and sweet
I never knew you were the someone waiting for me
''Cause we were just kids when we fell in love
Not knowing what it was
I will not give you up this time
Darling, just kiss me slow, your heart is all I own
And in your eyes, you''re holding mine
Baby, I''m dancing in the dark with you between my arms
Barefoot on the grass, we''re listenin'' to our favorite song
When you said you looked a mess, I whispered underneath my breath
But you heard it, darling, you look perfect tonight
Well, I found a woman, stronger than anyone I know
She shares my dreams, I hope that someday I''ll share her home
I found a love, to carry more than just my secrets
To carry love, to carry children of our own
We are still kids, but we''re so in love
Fightin'' against all odds
I know we''ll be alright this time
Darling, just hold my hand
Be my girl, I''ll be your man
I see my future in your eyes
Baby, I''m dancing in the dark, with you between my arms
Barefoot on the grass, listenin'' to our favorite song
When I saw you in that dress, looking so beautiful
I don''t deserve this, darling, you look perfect tonight
Oh, no, no
Mm
Baby, I''m dancing in the dark, with you between my arms
Barefoot on the grass, we''re listenin'' to our favorite song
I have faith in what I see
Now I know I have met an angel in person
And she looks perfect
No, I don''t deserve this
You look perfect tonight');
INSERT INTO "song" VALUES ('Shayne Ward','ENG','NoPromises','Shayne-Ward.jpg','Hey baby when we are together
Doing things that we love
Every time your near I feel like I''m in heaven
Feeling high
I don''t want to let go girl
I just need you to know girl

I don''t wanna run away
Baby,your the one I need tonight
No promises
Baby, now I need to hold you tight
I just wanna die in your arms
Hear tonight

Hey baby when we are together
Doing things that we love
Every time your near I feel like I''m in heaven
Feeling high
I don''t want to let go girl
I just need you to know girl

I don''t wanna run away
Baby,your the one I need tonight
No promises
Baby,now I need to hold you tight
I just wanna die in your arms

I don''t want to run away
Wanna stay forever,Eternity
No promises

I don''t wanna run away
I don''t wanna be alone
No promises
Baby,now I need to hold you tight
Now and forever my love
No promises

I don''t wanna run away
Baby,your the one I need tonight
No promises
Baby,now I need to hold you tight
I just want to die in your arms,(here tonight)
I don''t wanna run away
Baby, your the one I need tonight
No promises
Baby, now I need to hold you tight
I just wanna die in your arms
Here tonight');
INSERT INTO "song" VALUES ('Taylor Swift','ENG','BadBlood','taylor-swift.jpg','''Cause baby now we got bad blood
You know it used to be mad love
So take a look at what you''ve done
''Cause baby now we got bad blood
Hey! I can''t take it back, look where I''m at
We was OG like D.O.C., remember that?
My TLC was quite OD, ID my facts
Now POV of you and me, similar Iraq
I don''t hate you, but I hate to critique, overrate you
These beats of a dark heart, use basslines to replace you
Take time and erase you, love don''t hear no more
No, I don''t fear no more
Better yet, respect ain''t quite sincere no more
Oh, it''s so sad to
Think about the good times
You and I
''Cause, baby, now we''ve got bad blood
You know it used to be mad love
So take a look what you''ve done
''Cause, baby, now we''ve got bad blood, hey!
Now we''ve got problems
And I don''t think we can solve ''em
You made a really deep cut
And, baby, now we''ve got bad blood, hey!
Remember when you tried to write me off?
Remember when you thought I''d take a loss?
Don''t you remember? You thought that I would need ya
Follow procedure, remember? Oh, wait, you got amnesia
It was my season for battle wounds
Battle scars, body bumped, bruised
Stabbed in the back, brimstone, fire jumping through
Still, all my life, I got money and power
And you gotta live with the bad blood now
Oh, it''s so sad to
Think about the good times
You and I
''Cause, baby, now we''ve got bad blood
You know it used to be mad love
So take a look what you''ve done
''Cause, baby, now we''ve got bad blood, hey!
Now we''ve got problems
And I don''t think we can solve ''em
You made a really deep cut
And, baby, now we''ve got bad blood, hey!
Band-Aids don''t fix bullet holes
You say sorry just for show
If you live like that, you live with ghosts
(You forgive, you forget, but you never let it go)
Band-Aids don''t fix bullet holes
You say sorry just for show
If you live like that, you live with ghosts
If you love like that, blood runs cold
''Cause, baby, now we''ve got bad blood
You know it used to be mad love
So take a look what you''ve done
''Cause, baby, now we''ve got bad blood, hey!
Now we''ve got problems
And I don''t think we can solve ''em
You made a really deep cut
And, baby, now we''ve got bad blood, hey!
''Cause, baby, now we''ve got bad blood
You know it used to be mad love
So take a look what you''ve done
''Cause, baby, now we''ve got bad blood, hey!
Now we''ve got problems
And I don''t think we can solve ''em
You made a really deep cut
And, baby, now we''ve got bad blood, hey!');
INSERT INTO "song" VALUES ('ส้มมารี','THAI','หรือฉันคิดไปเอง','zom-marie.jpeg','อยู่คนเดียวมานานหลายปี
ไม่มีใครเข้ามาสักที
แต่ชีวิตก็ยังเดินต่อไป
จนเธอเข้ามาอยู่ในหัวใจ
แต่งเรื่องราวเติมสิ่งที่หายไป
ให้ชีวิตมีความหมาย
แต่สุดท้ายแล้วเธอมาบอก (ฮ้า)
กับฉันว่าเธอแค่หยอก
ไม่มีอะไรเกินกว่าคนทั่วไป
ก็ขอให้หยุดไว้ (ฮ้า)
เป็นเพียงแค่คนคุ้นเคย
ที่ดูคล้ายคล้ายว่าเธอนั้นรัก
คงเป็นเพราะฉันคิดไปเองทั้งนั้น
เธอไม่เคยเอ่ย คำว่ารักกัน
มีแต่ฉันที่คิดไปฝ่ายเดียว
ที่อยู่กับฉันใช้เวลาด้วยกัน
นั่นเพียงฉันแค่คิดไปเองใช่ไหม
แล้วที่เธอกอด อุ่นไอที่ได้
บอกฉันทีว่าจริง หรือฉันคิดไปเอง
อยู่คนเดียวอย่างเคยก็ดี
ไม่น่าเอาใจไปให้ใครเขาย่ำยี
เจ็บคราวนี้จำจนตาย
อุตส่าห์เทใจว่าเธอนั้นใช่
เป็นคนสุดท้ายที่จะฝากไว้ทั้งใจ
ก็ได้แค่คล้ายเพียงเท่านั้น
แต่สุดท้ายแล้วเธอมาบอก (ฮ้า)
กับฉันว่าเธอแค่หยอก
ไม่มีอะไรเกินกว่าคนทั่วไป
ก็ขอให้หยุดไว้ (ฮ้า)
เป็นเพียงแค่คนคุ้นเคย โน่
ที่ดูคล้ายคล้ายว่าเธอนั้นรัก
คงเป็นเพราะฉันคิดไปเองทั้งนั้น
เธอไม่เคยเอ่ย คำว่ารักกัน
มีแต่ฉันที่คิดไปฝ่ายเดียว
ที่อยู่กับฉันใช้เวลาด้วยกัน
นั่นเพียงฉันแค่คิดไปเองใช่ไหม
แล้วที่เธอกอด อุ่นไอที่ได้ (ฮ้า)
บอกฉันทีว่าจริง หรือฉันคิดไปเอง
หรือแค่คิดไปเอง
ที่ดูคล้ายคล้ายว่าเธอนั้นรัก
คงเป็นเพราะฉันคิดไปเองทั้งนั้น
เธอไม่เคยเอ่ย คำว่ารักกัน
มีแต่ฉันที่คิดไปฝ่ายเดียว
ที่อยู่กับฉันใช้เวลาด้วยกัน
นั่นเพียงฉันแค่คิดไปเองใช่ไหม
แล้วที่เธอกอด จูบนั้นที่ได้ (ฮ้า)
บอกฉันทีว่าจริง หรือฉันคิดไปเอง
บอกฉันทีว่าจริง หรือฉันคิดไปเอง');
INSERT INTO "register" VALUES (100,'Sittichai','1234','naioak@gmail.com',1);
INSERT INTO "product" VALUES (1,'Nike Air Force 1','ส่วนหุ้มชั้นนอกแบบเย็บจากหนังที่ส่วนบนเพิ่มทั้งสไตล์ ความทนทาน และการรองรับแบบในตำนาน',4700,2,'p5');
INSERT INTO "product" VALUES (2,'Nike Brasilia JDI','เป้สะพายหลัง Nike Brasilia JDI มีที่ให้เก็บของอย่างเหลือเฟือทั้งกระเป๋าซิป ช่องเก็บขวดน้ำ และสายสะพายที่สบาย ทำให้กระเป๋าใบนี้ลุยไปกับการผจญภัยในชีวิตประจำวันได้ง่ายๆ',3500,3,'p4');
INSERT INTO "product" VALUES (3,'Nike Heritage','กระเป๋าสะพาย Nike Heritage ทนทาน มีพื้นที่เก็บของมาก พร้อมดีไซน์กว้างที่ใส่ของได้อย่างรวดเร็วเพื่อให้หยิบใช้ทุกสิ่งที่คุณพกพาได้อย่างง่ายดาย',1600,5,'p3');
INSERT INTO "product" VALUES (4,'กางเกง forum low','ไอเท็มแนวสปอร์ตที่ให้คุณบ่งบอกความเป็นตัวเองได้ยิ่งขึ้น เสื้อยืดสำหรับเด็กเล็กตัวนี้มาพร้อมโลโก้ Trefoil ขนาดใหญ่พิเศษ และสไตล์ดั้งเดิมของไอเท็มจาก adidas Originals ตัดเย็บจากผ้าฝ้ายที่ทำให้เสื้อตัวนี้มีสัมผัสที่นุ่มสบาย',1400,6,'p1');
INSERT INTO "product" VALUES (5,'Fila Chalyse Down Jacket','เสื้อแจ็คเก็ตบุนวมสีน้ำเงิน Chalyse จาก FILA โดดเด่นด้วยดีไซน์บุนวม ป้ายโลโก้ที่หน้าอก ซิปด้านหน้า แขนยาว และกระเป๋าดามด้านหน้า 2 ข้าง',1750,7,'p8');
INSERT INTO "product" VALUES (6,'Kyrie infinity EP','Kyrie Infinity EP มาในทรงคัสตอมฟิตลดแรงกระแทกและมีส่วนยึดเกาะยาวถึงด้านข้าง ทำให้ผู้เล่นเร่งและลดความเร็วได้ตามใจนึก และใช้ประโยชนจากพื้นที่ว่างที่สร้างขึ้นได้เต็มที่',6500,2,'p7');
INSERT INTO "product" VALUES (7,'Lebron 19','LeBron 19 ควบคุมพลังดังกล่าวด้วยทรงล็อคกระชับและระบบลดแรงกระแทกโฉมใหม่ชั้นบุด้านในแบบแนบกระชับเชื่อมถึงกันด้วยส่วนหุ้มชั้นนอกแบบกระชับรูปเท้า โดยที่เชือกรองเท้าสามารถร้อยผ่านทั่วทั้งส่วนเพื่อช่วยป้องกันไม่ให้เกิดการเคลื่อนไหวภายในรองเท้าปุ่มที่ฝังในลิ้นรองเท้าและรอบๆ ส่วนหุ้มข้อช่วยลดน้ำหนักรองเท้า',8700,4,'p6');
INSERT INTO "product" VALUES (8,'NikeCourt','หมวกเทนนิสปีกรอบ NikeCourt ให้ลุคลำลองใส่สบายในทุกวันด้วยรายละเอียดย้อนยุค เช่น อาร์ม NikeCourt หลากสีและรูปแบบลายทางที่แถบหมวก',1000,6,'p2');
INSERT INTO "product" VALUES (9,'กระเป๋าchanel','หนังแกะ มุกเทียม คริสตัล โลหะสีทอง โลหะสีเงิน และโลหะเคลือบรูทีเนียม',150000,1,'p9');
COMMIT;
