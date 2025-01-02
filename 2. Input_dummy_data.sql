INSERT INTO Category (category, Helpdesk_email)
VALUES
	('regular', 'regular_helpdesk@unist.ac.kr'),
    ('premium', 'premium_helpdesk@unist.ac.kr'),
    ('new', 'new_helpdesk@unist.ac.kr');

INSERT INTO User (id, username, email, password, name, address, phone_number, category)
VALUES
    (1, 'Sangho', 'lsh@unist.ac.kr', '486va3r1gg', 'Sangho Lee', '306 Dorm, UNIST', '010-9303-6124', 'premium'),
    (2, 'Seunghoon', 'msh@unist.ac.kr', '564gxqqqa', 'Seunghoon Ma', '307 Dorm, UNIST', '010-4914-8630', 'premium'),
    (3, 'Youngjin', 'kyj@unist.ac.kr', '6452345gg', 'Youngjin Kown', '304 Dorm, UNIST', '010-2573-9453', 'premium'),
    (4, 'John', 'john@unist.ac.kr', 'g456435gg', 'John Wick', 'America', '123-2345-6643', 'regular'),
    (5, 'Harry', 'harry@gmail.com', '65454afgsdg', 'Harry Potter', 'U.K', '295-984-1915', 'regular'),
    (6, 'Jisung', 'jspark@naver.com', '6asdsa564', 'Jisung Park', 'Manchester', '123-2344-3213', 'premium'),
    (7, 'John2', 'jhn2@gmail.com', '3as5ewe5w', 'John Henessy', 'Massachusetts', '1-2322-1232', 'new'),
    (8, 'Muje', 'yhn@unist.ac.kr', 'we3r8t5rt8', 'Muje Jo', 'EonYang', '010-1679-3468', 'new'),
    (9, 'Charlie', 'cll@gmail.com', '23sdf5ddf5', 'Charlie', 'BeomSeo', '14567-3476-5', 'new'),
    (10, 'Cheolsoo', 'cs@naver.com', 'ads8s18hh2', 'Cheolsoo Kim', 'Seoul', '010-3435-8798', 'new'),
    (11, 'Minsoo', 'ms@naver.com', 'hjkj83fg5', 'Minsoo Kim', 'Siheung', '010-7675-3466', 'new'),
    (12, 'Donghyeon', 'dhy@naver.com', 'h8ty3t2t8', 'Donghyeon Seo', 'Daegu', '010-3656-7413', 'regular'),
    (13, 'Daeho', 'dhlee@naver.com', 'uyty98rt655', 'Daeho Lee', 'Pusan', '010-2365-7898', 'premium'),
    (14, 'Jooyeon', 'jy@unist.ac.kr', '3dfg58r5e', 'Jooyeon Park', 'Jeju', '010-5359-5541', 'new'),
    (15, 'Sam', 'ssm@gmail.com', 'dsf8352er', 'Sam Kim', 'NewYork', '1-214-1245', 'regular'),
    (16, 'Cha', 'cha@gmail.com', 'df56sfd6', 'Michael Cha', 'Boston', '1-1423-2334', 'regular'),
    (17, 'Perry', 'perry@gmail.com', 'jty6lo5ij4uh', 'Perry Metu', 'Newport', '1-2312-2354', 'premium'),
    (18, 'Hadi', 'hadi@gmail.com', 'hj68lhjk', 'Daniel Hadi', 'Portland', '1-234-5686', 'regular'),
    (19, 'Freddie', 'freddie@gmail.com', '66we12322', 'Freddie Wong', 'Seattle', '1-4567-568', 'regular'),
    (20, 'Alex', 'alex@gmail.com', 'fghgy132', 'Alex Cop', 'San Fransico', '1-346-56785', 'regular'),
    (21, 'Han', 'dhhan@naver.com', 'wer8!231', 'Donghyeon Hwang', 'San Hose', '123-345-2134', 'regular'),
    (22, 'Byeonghyeon', 'bhk@naver.com', '@#x321dfr', 'Byeonghyeon Kim', 'Arizona', '34-567-23', 'regular'),
    (23, 'Milot', 'milot@gmail.com', 'qwe123!@#', 'Milot Rashica', 'Norwich', '1242-5674-34', 'regular'),
    (24, 'David', 'david@gmail.com', '3as2d1w8', 'David Sainsbury', 'Cambridge', '3467-8745-34', 'regular'),
    (25, 'McAtee', 'mcat@gmail.com', 'a3w1qw6e', 'James John McAtee', 'Shaffied', '45-57634-34', 'regular'),
    (26, 'Crysencio', 'crscio@gmail.com', '12413g8crdff', 'Crysencio Summerville', 'Leeds', '356-689-544', 'regular'),
    (27, 'Sungyong', 'sungyong@naver.com', 'werw52s43', 'Sungyong Ki', 'Swansea', '41-45645-22', 'new'),
    (28, 'Heungmin', 'hmin@naver.com', 'qw34ds1f3', 'Heungmin Son', 'London', '41-75237-2', 'new'),
    (29, 'Simon', 'simon@gmail.com', 'er6hdgdds3', 'Simon Adingra', 'Brighton', '123-4578-6', 'new'),
    (30, 'Robert', 'robert@gmail.com', 'werew15w31', 'Robert William Robson', 'Newcastle', '9225-54-4534', 'new'),
    (31, 'Dongwon', 'dwji@naver.com', 'ds23fase3t25', 'Dongwon Ji', 'Sunderland', '78-5452-48', 'new'),
    (32, 'Jordan', 'jordan@gmail.com', 'd68t7drt', 'Jordan Rhodes', 'Blackpool', '45645-7865-48', 'new'),
    (33, 'Che', 'che@gmail.com', 'df3b21cf3b', 'Cha Adams', 'Southhampton', '543-4525-45', 'regular'),
    (34, 'Tommy', 'tomi@gmail.com', 'T3ifgh2', 'Tommy Conway', 'Bristol', '123-47845-421', 'new'),
    (35, 'Seungbin', 'sbk@naver.com', 'u9youyl1jk3', 'Seungbin Kim', 'Goyang', '010-4425-2472', 'regular'),
    (36, 'Baeksoo', 'bs@naver.com', 'x3ghdfx', 'Baeksoo Gwak', 'Choongju', '010-5547-2468', 'new'),
    (37, 'Jihyeok', 'jhkim@naver.com', 'mfx3g1h', 'Jihyeok Kim', 'Cheolwon', '010-3934-3275', 'new'),
    (38, 'Hyeonjun', 'hj@naver.com', 'gcnv3212', 'Hyeonjun Jeong', 'Gumi', '010-7877-4415', 'new'),
    (39, 'Jueun', 'je@unist.ac.kr', 'q3rw2e3zdg1', 'Jueun Jung', 'Ilsan', '010-8845-4571', 'regular'),
    (40, 'Mi', 'mi@naver.com', 'zdfg3zdf2', 'Mi Bae', 'Yeosu', '010-5335-5441', 'new'),
    (41, 'Jungin', 'ji@naver.com', 'df3h5d1x23h', 'Jungin Park', 'Haenam', '010-0000-1111', 'premium'),
    (42, 'Haein', 'hi@naver.com', 'dzg2dfxh1d23', 'Haien Park', 'Gangnam', '010-4441-1144', 'premium'),
    (43, 'Jeonghoo', 'jh@naver.com', 'zdsf2gd2', 'Jeonghoo Lee', 'Gocheok', '010-3321-0025', 'regular'),
    (44, 'Minseok', 'msp@naver.com', 't3ifgh2', 'Minseok Park', 'Inje', '010-1111-2222', 'new'),
    (45, 'Wonseok', 'ws@naver.com', 'ghjijklj1', 'Wonseok Cha', 'Yanggu', '010-3452-4545', 'regular'),
    (46, 'Jihyeon', 'jhhwang@unist.ac.kr', 'zb12bcvb12', 'Jihyeon Hwang', 'Chooncheon', '010-3537-3524', 'new'),
    (47, 'Dojin', 'dj@naver.com', '0bvm1cc23j', 'Dojim Kim', 'Yangju', '010-4545-2412', 'new'),
    (48, 'Sanghoon', 'Shk@naver.com', 'fgh23f1h', 'Sanghoon Kim', 'Namyangju', '010-5454-7878', 'regular'),
    (49, 'Sol', 'solm@naver.com', 'cgh2mn1bcv23', 'Sol MUn', 'Wonju', '010-5245-7856', 'new'),
    (50, 'Junghoon', 'junghoon.kim@unist.ac.kr', 'a5s4das5d', 'Junghoon Kim', 'Ulsan', '010-3345-4896', 'premium');

INSERT INTO Bank (Bank_Code, Bank)
VALUES
    ('651-65416-5212213', 'Shinhan'),
    ('1651651-23135-441', 'Kyeongnam'),
    ('456165-89455495', 'Woori'),
    ('145-45645-4-546', 'Kukmin'),
    ('199-51655-54654', 'Shinhan'),
    ('123-123456-66697', 'Woori'),
    ('77-4554-321', 'Nonghyeop'),
    ('756-756575-876', 'Shinhan');

INSERT INTO CreditCard (number, ExpireDate, Bank_Code, User_id)
VALUES
    ('6190-8073-7123-0345', '2027-08-21', '123-123456-66697', 1),
    ('2777-3895-5536-4162', '2026-12-11', '145-45645-4-546', 2),
    ('8279-0070-0899-9303', '2024-12-25', '1651651-23135-441', 2),
    ('1257-2549-3513-8149', '2028-06-15', '756-756575-876', 2),
    ('0426-0852-7089-3455', '2024-10-03', '77-4554-321', 3),
    ('6114-9525-0986-5392', '2028-04-06', '756-756575-876', 3),
    ('2829-4855-0969-5708', '2028-12-25', '123-123456-66697', 5),
    ('1617-0522-6666-5682', '2027-12-14', '145-45645-4-546', 7),
    ('5807-5770-0689-5779', '2024-12-15', '756-756575-876', 7),
    ('2165-0345-3185-0905', '2027-09-02', '651-65416-5212213', 8),
    ('1223-5111-8135-5785', '2024-10-18', '199-51655-54654', 8),
    ('4822-7689-7313-2171', '2028-09-15', '199-51655-54654', 10),
    ('9280-5684-6642-4995', '2028-09-04', '756-756575-876', 11),
    ('0792-0157-5997-8418', '2028-10-19', '456165-89455495', 11),
    ('4228-9183-9296-4079', '2028-02-11', '651-65416-5212213', 11),
    ('2055-0339-5627-2071', '2028-05-11', '199-51655-54654', 13),
    ('4652-7591-2903-4214', '2027-02-27', '123-123456-66697', 14),
    ('5091-4424-8744-2391', '2024-05-12', '651-65416-5212213', 15),
    ('7102-5515-7197-3502', '2025-12-16', '123-123456-66697', 16),
    ('8045-4328-7119-5580', '2027-09-23', '123-123456-66697', 17),
    ('8396-6639-0224-4119', '2027-02-09', '756-756575-876', 17),
    ('0039-6357-2602-7201', '2024-12-27', '1651651-23135-441', 18),
    ('1925-0689-6273-4842', '2025-03-16', '456165-89455495', 19),
    ('7506-7972-5879-0073', '2026-10-06', '199-51655-54654', 19),
    ('4669-8193-1260-8298', '2027-05-02', '456165-89455495', 20),
    ('1943-0479-5538-4806', '2025-02-03', '651-65416-5212213', 20),
    ('3587-1000-1114-3117', '2028-07-13', '145-45645-4-546', 21),
    ('7916-9926-2610-8945', '2025-10-26', '77-4554-321', 21),
    ('8402-6343-2187-3869', '2026-07-18', '651-65416-5212213', 22),
    ('1742-9295-4844-3858', '2024-08-09', '123-123456-66697', 22),
    ('6655-4068-5840-4857', '2025-04-10', '1651651-23135-441', 22),
    ('0219-0633-8098-2882', '2027-02-13', '756-756575-876', 22),
    ('0624-1840-3927-5993', '2027-03-05', '1651651-23135-441', 22),
    ('9416-6493-0418-3345', '2028-03-22', '1651651-23135-441', 23),
    ('9580-1919-7480-5940', '2024-08-13', '145-45645-4-546', 24),
    ('2674-7651-4822-7525', '2024-07-22', '199-51655-54654', 24),
    ('1908-1782-0676-4981', '2024-10-03', '456165-89455495', 26),
    ('4615-4842-8062-8598', '2028-07-07', '199-51655-54654', 26),
    ('2314-0398-6624-3616', '2028-04-21', '756-756575-876', 27),
    ('0138-0112-2069-3525', '2028-08-16', '145-45645-4-546', 27),
    ('8123-3838-2810-2117', '2025-04-10', '456165-89455495', 28),
    ('7328-0761-2714-5172', '2026-02-20', '456165-89455495', 29),
    ('6676-9282-3245-5343', '2028-10-04', '199-51655-54654', 29),
    ('7662-2411-6530-3736', '2027-04-26', '456165-89455495', 30),
    ('1890-9948-0850-6676', '2025-08-04', '756-756575-876', 31),
    ('3199-8511-4713-8583', '2026-03-09', '145-45645-4-546', 31),
    ('3190-7868-3507-0821', '2025-08-28', '1651651-23135-441', 31),
    ('5757-5921-9192-3708', '2028-04-08', '77-4554-321', 32),
    ('5951-2345-2471-2424', '2027-10-21', '1651651-23135-441', 32),
    ('3487-4862-7180-9448', '2024-12-10', '145-45645-4-546', 33),
    ('5194-9121-8454-4171', '2027-12-21', '123-123456-66697', 33),
    ('5371-9230-9176-6015', '2028-10-20', '145-45645-4-546', 33),
    ('7770-0437-9866-6194', '2026-10-04', '145-45645-4-546', 34),
    ('4268-6306-9469-9951', '2025-06-23', '456165-89455495', 35),
    ('0332-4149-3039-7290', '2025-07-28', '651-65416-5212213', 35),
    ('1073-4212-7479-4531', '2025-11-18', '123-123456-66697', 36),
    ('3942-3177-0249-3409', '2027-02-28', '199-51655-54654', 36),
    ('0472-8385-8824-4176', '2024-08-08', '77-4554-321', 37),
    ('5858-2599-3543-4474', '2025-02-08', '1651651-23135-441', 38),
    ('5456-2653-1919-8700', '2024-06-20', '756-756575-876', 38),
    ('9130-2618-9647-2707', '2027-07-04', '123-123456-66697', 38),
    ('2832-5518-8904-3464', '2025-06-21', '456165-89455495', 39),
    ('2837-7299-6300-3305', '2026-06-09', '199-51655-54654', 39),
    ('4857-4200-1008-1854', '2028-05-25', '77-4554-321', 40),
    ('2850-1611-2561-7956', '2027-03-24', '77-4554-321', 41),
    ('6162-9856-2012-4022', '2027-11-11', '77-4554-321', 41),
    ('6997-5000-9922-4315', '2024-08-20', '123-123456-66697', 42),
    ('9364-3345-1533-2372', '2024-08-16', '123-123456-66697', 44),
    ('5082-8980-3383-4109', '2025-03-14', '77-4554-321', 44),
    ('6409-0302-7504-2706', '2027-02-02', '1651651-23135-441', 44),
    ('3383-6257-2013-1924', '2028-03-16', '1651651-23135-441', 44),
    ('9641-9976-5371-2318', '2025-04-15', '651-65416-5212213', 45),
    ('7939-1312-4878-3345', '2027-09-19', '651-65416-5212213', 45),
    ('4350-6461-1338-9393', '2024-01-22', '1651651-23135-441', 45),
    ('5299-6333-6382-7192', '2028-06-02', '1651651-23135-441', 47),
    ('8183-2800-0741-2161', '2025-10-16', '456165-89455495', 48),
    ('2882-6424-7557-0688', '2027-08-01', '77-4554-321', 48),
    ('9141-4626-6780-5263', '2028-07-05', '1651651-23135-441', 48),
    ('8093-7937-9978-2877', '2025-09-10', '1651651-23135-441', 48),
    ('4578-3679-0439-0896', '2025-03-28', '145-45645-4-546', 50);

INSERT INTO Invoice (number, status, date, Order_id)
VALUES
    ('INV001', 'issued', '2023-01-26', 1),
    ('INV002', 'paid', '2023-03-16', 2),
    ('INV003', 'paid', '2023-09-11', 3),
    ('INV004', 'paid', '2023-08-11', 4),
    ('INV005', 'issued', '2023-11-10', 5),
    ('INV006', 'issued', '2023-09-20', 6),
    ('INV007', 'paid', '2023-10-17', 7),
    ('INV008', 'paid', '2023-11-08', 8),
    ('INV009', 'paid', '2023-05-18', 9),
    ('INV010', 'paid', '2023-07-21', 10),
    ('INV011', 'paid', '2023-10-10', 11),
    ('INV012', 'issued', '2023-02-07', 12),
    ('INV013', 'issued', '2023-03-03', 13),
    ('INV014', 'issued', '2023-01-15', 14),
    ('INV015', 'paid', '2023-03-21', 15),
    ('INV016', 'paid', '2023-08-07', 16),
    ('INV018', 'issued', '2023-12-11', 18),
    ('INV019', 'paid', '2023-04-14', 19),
    ('INV020', 'paid', '2023-04-23', 20),
    ('INV022', 'issued', '2023-01-28', 22),
    ('INV024', 'paid', '2023-09-09', 24),
    ('INV026', 'paid', '2023-03-04', 26),
    ('INV027', 'paid', '2023-03-06', 27),
    ('INV028', 'issued', '2023-03-21', 28),
    ('INV029', 'issued', '2023-04-24', 29),
    ('INV031', 'paid', '2023-07-16', 31),
    ('INV032', 'paid', '2023-08-03', 32),
    ('INV034', 'paid', '2023-07-24', 34),
    ('INV036', 'paid', '2023-02-25', 36),
    ('INV041', 'paid', '2023-02-28', 41),
    ('INV043', 'paid', '2023-09-09', 43),
    ('INV044', 'paid', '2023-06-04', 44),
    ('INV045', 'issued', '2023-07-24', 45),
    ('INV046', 'paid', '2023-05-26', 46),
    ('INV051', 'paid', '2023-07-24', 51),
    ('INV053', 'paid', '2023-03-10', 53),
    ('INV054', 'paid', '2023-09-28', 54),
    ('INV055', 'issued', '2023-12-05', 55),
    ('INV056', 'paid', '2023-01-12', 56),
    ('INV058', 'issued', '2023-07-05', 58),
    ('INV060', 'paid', '2023-10-09', 60),
    ('INV063', 'paid', '2023-06-12', 63),
    ('INV064', 'issued', '2023-09-05', 64),
    ('INV066', 'issued', '2023-09-25', 66),
    ('INV067', 'paid', '2023-04-23', 67),
    ('INV068', 'paid', '2023-12-02', 68),
    ('INV069', 'paid', '2023-09-14', 69),
    ('INV070', 'paid', '2023-02-17', 70);
    
INSERT INTO `Order` (id, date, status, User_id, Invoice_number)
VALUES
    (1, '2023-01-26', 'completed', 1, 'INV001'),
    (2, '2023-03-16', 'completed', 1, 'INV002'),
    (3, '2023-09-11', 'completed', 2, 'INV003'),
    (4, '2023-08-11', 'completed', 3, 'INV004'),
    (5, '2023-11-10', 'completed', 3, 'INV005'),
    (6, '2023-09-20', 'completed', 4, 'INV006'),
    (7, '2023-10-17', 'completed', 4, 'INV007'),
    (8, '2023-11-08', 'completed', 4, 'INV008'),
    (9, '2023-05-18', 'completed', 5, 'INV009'),
    (10, '2023-07-21', 'completed', 5, 'INV010'),
    (11, '2023-10-10', 'completed', 6, 'INV011'),
    (12, '2023-02-07', 'completed', 7, 'INV012'),
    (13, '2023-03-03', 'processing', 7, 'INV013'),
    (14, '2023-01-15', 'completed', 8, 'INV014'),
    (15, '2023-03-21', 'completed', 8, 'INV015'),
    (16, '2023-08-07', 'completed', 8, 'INV016'),
    (17, '2023-11-07', 'processing', 8, NULL),
    (18, '2023-12-11', 'completed', 9, 'INV018'),
    (19, '2023-04-14', 'completed', 10, 'INV019'),
    (20, '2023-04-23', 'completed', 10, 'INV020'),
    (21, '2023-07-09', 'processing', 10, NULL),
    (22, '2023-01-28', 'completed', 11, 'INV022'),
    (23, '2023-04-25', 'processing', 11, NULL),
    (24, '2023-09-09', 'completed', 11, 'INV024'),
    (25, '2023-02-01', 'processing', 12, NULL),
    (26, '2023-03-04', 'completed', 12, 'INV026'),
    (27, '2023-03-06', 'completed', 12, 'INV027'),
    (28, '2023-03-21', 'completed', 12, 'INV028'),
    (29, '2023-04-24', 'completed', 12, 'INV029'),
    (30, '2023-07-07', 'processing', 12, NULL),
    (31, '2023-07-16', 'completed', 12, 'INV031'),
    (32, '2023-08-03', 'completed', 12, 'INV032'),
    (33, '2023-02-17', 'cancelled', 13, NULL),
    (34, '2023-07-24', 'completed', 13, 'INV034'),
    (35, '2023-08-16', 'processing', 13, NULL),
    (36, '2023-02-25', 'completed', 16, 'INV036'),
    (37, '2023-04-23', 'processing', 16, NULL),
    (38, '2023-12-12', 'processing', 17, NULL),
    (39, '2023-06-17', 'cancelled', 18, NULL),
    (40, '2023-12-06', 'processing', 18, NULL),
    (41, '2023-02-28', 'completed', 19, 'INV041'),
    (42, '2023-07-12', 'processing', 19, NULL),
    (43, '2023-09-09', 'completed', 19, 'INV043'),
    (44, '2023-06-04', 'completed', 20, 'INV044'),
    (45, '2023-07-24', 'completed', 20, 'INV045'),
    (46, '2023-05-26', 'completed', 21, 'INV046'),
    (47, '2023-03-04', 'processing', 22, NULL),
    (48, '2023-05-24', 'processing', 22, NULL),
    (49, '2023-07-23', 'processing', 22, NULL),
    (50, '2023-07-21', 'processing', 23, NULL),
    (51, '2023-07-24', 'completed', 23, 'INV051'),
    (52, '2023-12-08', 'processing', 23, NULL),
    (53, '2023-03-10', 'completed', 24, 'INV053'),
    (54, '2023-09-28', 'completed', 24, 'INV054'),
    (55, '2023-12-05', 'completed', 24, 'INV055'),
    (56, '2023-01-12', 'completed', 25, 'INV056'),
    (57, '2023-02-19', 'processing', 25, NULL),
    (58, '2023-07-05', 'completed', 25, 'INV058'),
    (59, '2023-07-12', 'processing', 25, NULL),
    (60, '2023-10-09', 'completed', 25, 'INV060'),
    (61, '2023-12-03', 'cancelled', 25, NULL),
    (62, '2023-12-13', 'cancelled', 25, NULL),
    (63, '2023-06-12', 'completed', 26, 'INV063'),
    (64, '2023-09-05', 'completed', 26, 'INV064'),
    (65, '2023-03-13', 'processing', 27, NULL),
    (66, '2023-09-25', 'completed', 27, 'INV066'),
    (67, '2023-04-23', 'completed', 28, 'INV067'),
    (68, '2023-12-02', 'completed', 28, 'INV068'),
    (69, '2023-09-14', 'completed', 29, 'INV069'),
    (70, '2023-02-17', 'completed', 30, 'INV070');
    
INSERT INTO Method (method, transaction_fee)
VALUES
    ('credit_card', 10),
    ('paypal', 5),
    ('apple_pay', 10),
    ('samsung_pay', 10);
    
INSERT INTO Payment (id, date, amount, method, Invoice_number, CreditCard_Number)
VALUES
    (1, '2023-03-16', 20000, 'credit_card', 'INV002', '0332-4149-3039-7290'),
    (2, '2023-09-11', 80000, 'credit_card', 'INV003', '9280-5684-6642-4995'),
    (3, '2023-08-11', 60000, 'apple_pay', 'INV004', '5371-9230-9176-6015'),
    (4, '2023-10-17', 90000, 'credit_card', 'INV007', '2165-0345-3185-0905'),
    (5, '2023-11-08', 70000, 'paypal', 'INV008', '1943-0479-5538-4806'),
    (6, '2023-05-18', 40000, 'samsung_pay', 'INV009', '5194-9121-8454-4171'),
    (7, '2023-07-21', 20000, 'apple_pay', 'INV010', '2850-1611-2561-7956'),
    (8, '2023-10-10', 50000, 'apple_pay', 'INV011', '3383-6257-2013-1924'),
    (9, '2023-03-21', 30000, 'credit_card', 'INV015', '2055-0339-5627-2071'),
    (10, '2023-08-07', 60000, 'apple_pay', 'INV016', '0426-0852-7089-3455'),
    (11, '2023-04-14', 80000, 'samsung_pay', 'INV019', '2837-7299-6300-3305'),
    (12, '2023-04-23', 90000, 'credit_card', 'INV020', '6190-8073-7123-0345'),
    (13, '2023-09-09', 80000, 'credit_card', 'INV024', '5807-5770-0689-5779'),
    (14, '2023-03-04', 50000, 'samsung_pay', 'INV026', '0792-0157-5997-8418'),
    (15, '2023-03-06', 50000, 'credit_card', 'INV027', '5371-9230-9176-6015'),
    (16, '2023-07-16', 50000, 'paypal', 'INV031', '3190-7868-3507-0821'),
    (17, '2023-08-03', 50000, 'apple_pay', 'INV032', '8279-0070-0899-9303'),
    (18, '2023-07-24', 40000, 'paypal', 'INV034', '0472-8385-8824-4176'),
    (19, '2023-02-25', 60000, 'credit_card', 'INV036', '3942-3177-0249-3409'),
    (20, '2023-02-28', 130000, 'paypal', 'INV041', '2314-0398-6624-3616'),
    (21, '2023-09-09', 40000, 'apple_pay', 'INV043', '2882-6424-7557-0688'),
    (22, '2023-06-04', 50000, 'samsung_pay', 'INV044', '0792-0157-5997-8418'),
    (23, '2023-05-26', 40000, 'paypal', 'INV046', '7328-0761-2714-5172'),
    (24, '2023-07-24', 50000, 'apple_pay', 'INV051', '8402-6343-2187-3869'),
    (25, '2023-03-10', 30000, 'credit_card', 'INV053', '9280-5684-6642-4995'),
    (26, '2023-09-28', 130000, 'apple_pay', 'INV054', '5757-5921-9192-3708'),
    (27, '2023-01-12', 20000, 'paypal', 'INV056', '3199-8511-4713-8583'),
    (28, '2023-10-09', 20000, 'apple_pay', 'INV060', '7916-9926-2610-8945'),
    (29, '2023-06-12', 10000, 'apple_pay', 'INV063', '8045-4328-7119-5580'),
    (30, '2023-04-23', 30000, 'samsung_pay', 'INV067', '5456-2653-1919-8700'),
    (31, '2023-12-02', 40000, 'credit_card', 'INV068', '5091-4424-8744-2391'),
    (32, '2023-09-14', 50000, 'paypal', 'INV069', '8123-3838-2810-2117'),
    (33, '2023-02-17', 190000, 'apple_pay', 'INV070', '5456-2653-1919-8700');


INSERT INTO Shipment (id, Tracking_Number, date)
VALUES
    (1, '514-2400695', '2023-09-11'),
    (2, '813-0482162', '2023-09-11'),
    (3, '614-9470514', '2023-11-10'),
    (4, '524-2897155', '2023-11-08'),
    (5, '426-2606034', '2023-11-08'),
    (6, '178-6379052', '2023-10-10'),
    (7, '3622-967384', '2023-03-21'),
    (8, '8926-315741', '2023-11-07'),
    (9, '0191-253760', '2023-12-11'),
    (10, '712-4813784', '2023-04-23'),
    (11, '4570-172132', '2023-07-09'),
    (12, '286-4642108', '2023-09-09'),
    (13, '4503-240912', '2023-09-09'),
    (14, '9915-100841', '2023-03-06'),
    (15, '802-5094997', '2023-07-07'),
    (16, '8618-409206', '2023-08-03'),
    (17, '2339-629208', '2023-08-16'),
    (18, '788-3429016', '2023-04-23'),
    (19, '596-3057036', '2023-12-12'),
    (20, '398-4826327', '2023-12-06'),
    (21, '333-2937608', '2023-07-12'),
    (22, '987-0793253', '2023-09-09'),
    (23, '4670-134860', '2023-07-24'),
    (24, '7108-820205', '2023-05-26'),
    (25, '120-3221113', '2023-07-24'),
    (26, '460-4855933', '2023-12-08'),
    (27, '0687-819363', '2023-09-28');

INSERT INTO Shop (id, name)
VALUES
    (1, 'Daiso'),
    (2, 'E-mart'),
    (3, 'Costco'),
    (4, 'Hi-mart'),
    (5, 'Top-mart'),
    (6, 'GS25'),
    (7, 'SevenEleven'),
    (8, 'CU'),
    (9, 'Hanaro-mart'),
    (10, 'Trader Joe''s'),
    (11, 'Walmart'),
    (12, 'Target'),
    (13, 'Publix'),
    (14, 'Kroger'),
    (15, 'Aldi'),
    (16, 'Samsung'),
    (17, 'Apple'),
    (18, 'MorningGlory'),
    (19, 'ParisBaguette'),
    (20, 'TouslesJours'),
    (21, 'KyoboBookstore'),
    (22, 'Aladin'),
    (23, 'YoungpoongBookstore'),
    (24, 'Artbox'),
    (25, 'Mini-Stop'),
    (26, 'E-mart24'),
    (27, 'Nike'),
    (28, 'FILA'),
    (29, 'FredPerry'),
    (30, 'adidas');

INSERT INTO Restricted_shop (id)
VALUES
    (4),
    (16),
    (17),
    (18),
    (21),
    (22),
    (23),
    (27),
    (28),
    (29),
    (30);
    
INSERT INTO Product_type (id, description, parent_id)
VALUES
    (1, 'electronics', NULL),
    (2, 'laptop', 1),
    (3, 'smartphone', 1),
    (4, 'tabletPC', 1),
    (5, 'groceries', NULL),
    (6, 'fresh-food', 5),
    (7, 'processed-food', 5),
    (8, 'favorite-food', 5),
    (9, 'drink', NULL),
    (10, 'soda', 9),
    (11, 'juice', 9),
    (12, 'alcohol', 9),
    (13, 'clothes', NULL),
    (14, 'shoes', 13),
    (15, 'pants', 13),
    (16, 'shirt', 13),
    (17, 'skirt', 13),
    (18, 'books', NULL),
    (19, 'tobacco', 8),
    (20, 'beer', 12),
    (21, 'office-supplies', NULL),
    (22, 'home-appliances', NULL);


INSERT INTO Product (id, name, color, size, price, description, Shop_id, Product_type_id)
VALUES
    (1, 'GalaxyBook3Ultra', 'Silver', 16, 2400, 'High-performance laptop', 16, 2),
    (2, 'Notebook9Pen', 'Silver', 13, 1400, 'Laptop with s-pen', 16, 2),
    (3, 'MacBookAir', 'White', 13, 1300, 'Laptop using M2', 17, 2),
    (4, 'GalaxyS23', 'Cream', 6, 1100, 'Samsung''s smartphone', 16, 3),
    (5, 'iPhone15', 'Black', 6, 800, 'Apple''s smartphone', 17, 3),
    (6, 'iPadmini', 'Black', 8, 600, 'Apple''s tablet pc', 17, 4),
    (7, 'cereal', 'Blue', 16, 5, 'a cereal', 2, 7),
    (8, 'cereal', 'Blue', 16, 5, 'a cereal', 5, 7),
    (9, 'cereal', 'Blue', 16, 5, 'a cereal', 10, 7),
    (10, 'cereal', 'Blue', 16, 5, 'a cereal', 11, 7),
    (11, 'cereal', 'Blue', 16, 5, 'a cereal', 26, 7),
    (12, 'apple', 'Red', 4, 1, 'an apple', 2, 6),
    (13, 'apple', 'Red', 4, 1, 'an apple', 3, 6),
    (14, 'apple', 'Red', 4, 1, 'an apple', 5, 6),
    (15, 'apple', 'Red', 4, 1, 'an apple', 9, 6),
    (16, 'apple', 'Red', 4, 1, 'an apple', 10, 6),
    (17, 'apple', 'Red', 4, 1, 'an apple', 11, 6),
    (18, 'Heineken', 'Green', 7, 2, 'a beer', 2, 20),
    (19, 'Heineken', 'Green', 7, 2, 'a beer', 3, 20),
    (20, 'Heineken', 'Green', 7, 2, 'a beer', 5, 20),
    (21, 'Heineken', 'Green', 7, 2, 'a beer', 6, 20),
    (22, 'Heineken', 'Green', 7, 2, 'a beer', 7, 20),
    (23, 'Heineken', 'Green', 7, 2, 'a beer', 8, 20),
    (24, 'Heineken', 'Green', 7, 2, 'a beer', 9, 20),
    (25, 'Heineken', 'Green', 7, 2, 'a beer', 25, 20),
    (26, 'Heineken', 'Green', 7, 2, 'a beer', 26, 20),
    (27, 'Marlboro', 'Red', 5, 5, 'a tobacco', 6, 19),
    (28, 'Marlboro', 'Red', 5, 5, 'a tobacco', 7, 19),
    (29, 'Marlboro', 'Red', 5, 5, 'a tobacco', 8, 19),
    (30, 'Marlboro', 'Red', 5, 5, 'a tobacco', 25, 19),
    (31, 'Marlboro', 'Red', 5, 5, 'a tobacco', 26, 19),
    (32, 'gum', 'Yellow', 2, 1, 'a gum', 1, 8),
    (33, 'gum', 'Yellow', 2, 1, 'a gum', 2, 8),
    (34, 'gum', 'Yellow', 2, 1, 'a gum', 3, 8),
    (35, 'gum', 'Yellow', 2, 1, 'a gum', 5, 8),
    (36, 'gum', 'Yellow', 2, 1, 'a gum', 6, 8),
    (37, 'gum', 'Yellow', 2, 1, 'a gum', 7, 8),
    (38, 'gum', 'Yellow', 2, 1, 'a gum', 8, 8),
    (39, 'gum', 'Yellow', 2, 1, 'a gum', 9, 8),
    (40, 'gum', 'Yellow', 2, 1, 'a gum', 10, 8),
    (41, 'gum', 'Yellow', 2, 1, 'a gum', 11, 8),
    (42, 'gum', 'Yellow', 2, 1, 'a gum', 25, 8),
    (43, 'gum', 'Yellow', 2, 1, 'a gum', 26, 8),
    (44, 'ScotchTape', 'Red', 3, 4, 'an office supply', 1, 21),
    (45, 'ScotchTape', 'Red', 3, 4, 'an office supply', 18, 21),
    (46, 'Maxim', 'Yellow', 4, 10, 'a coffee', 1, 8),
    (47, 'Maxim', 'Yellow', 4, 10, 'a coffee', 2, 8),
    (48, 'Maxim', 'Yellow', 4, 10, 'a coffee', 5, 8),
    (49, 'Maxim', 'Yellow', 4, 10, 'a coffee', 6, 8),
    (50, 'Maxim', 'Yellow', 4, 10, 'a coffee', 7, 8),
    (51, 'Maxim', 'Yellow', 4, 10, 'a coffee', 8, 8),
    (52, 'Maxim', 'Yellow', 4, 10, 'a coffee', 9, 8),
    (53, 'Maxim', 'Yellow', 4, 10, 'a coffee', 25, 8),
    (54, 'Maxim', 'Yellow', 4, 10, 'a coffee', 26, 8),
    (55, 'DIOS', 'Silver', 87, 2273, 'a refrigerator by LG', 4, 22),
    (56, 'ObjetCollection', 'Gold', 84, 1848, 'a styler by LG', 4, 22),
    (57, 'Guns, Germs, and Steel', 'White', 14, 20, 'a book by Jared Diamond', 21, 18),
    (58, 'Guns, Germs, and Steel', 'White', 14, 20, 'a book by Jared Diamond', 22, 18),
    (59, 'Guns, Germs, and Steel', 'White', 14, 20, 'a book by Jared Diamond', 23, 18),
    (60, 'eclipse', 'Blue', 2, 3, 'a candy', 1, 8),
    (61, 'eclipse', 'Blue', 2, 3, 'a candy', 2, 8),
    (62, 'eclipse', 'Blue', 2, 3, 'a candy', 3, 8),
    (63, 'eclipse', 'Blue', 2, 3, 'a candy', 5, 8),
    (64, 'eclipse', 'Blue', 2, 3, 'a candy', 6, 8),
    (65, 'eclipse', 'Blue', 2, 3, 'a candy', 7, 8),
    (66, 'eclipse', 'Blue', 2, 3, 'a candy', 8, 8),
    (67, 'eclipse', 'Blue', 2, 3, 'a candy', 9, 8),
    (68, 'eclipse', 'Blue', 2, 3, 'a candy', 10, 8),
    (69, 'eclipse', 'Blue', 2, 3, 'a candy', 11, 8),
    (70, 'eclipse', 'Blue', 2, 3, 'a candy', 25, 8),
    (71, 'eclipse', 'Blue', 2, 3, 'a candy', 26, 8),
    (72, 'Samdasoo', 'Transparent', 6, 1, 'a water', 1, 9),
    (73, 'Samdasoo', 'Transparent', 6, 1, 'a water', 2, 9),
    (74, 'Samdasoo', 'Transparent', 6, 1, 'a water', 5, 9),
    (75, 'Samdasoo', 'Transparent', 6, 1, 'a water', 6, 9),
    (76, 'Samdasoo', 'Transparent', 6, 1, 'a water', 7, 9),
    (77, 'Samdasoo', 'Transparent', 6, 1, 'a water', 8, 9),
    (78, 'Samdasoo', 'Transparent', 6, 1, 'a water', 9, 9),
    (79, 'Samdasoo', 'Transparent', 6, 1, 'a water', 25, 9),
    (80, 'Samdasoo', 'Transparent', 6, 1, 'a water', 26, 9),
    (81, 'JetStream', 'White', 3, 2, 'a pen', 1, 21),
    (82, 'JetStream', 'White', 3, 2, 'a pen', 18, 21),
    (83, 'B722 leather', 'White', 10, 143, 'shoes by FredPerry', 29, 14),
    (84, 'Air force', 'White', 10, 105, 'shoes by Nike', 27, 14),
    (85, 'Pepsi', 'Blue', 6, 2, 'a coke', 1, 10),
    (86, 'Pepsi', 'Blue', 6, 2, 'a coke', 2, 10),
    (87, 'Pepsi', 'Blue', 6, 2, 'a coke', 3, 10),
    (88, 'Pepsi', 'Blue', 6, 2, 'a coke', 5, 10),
    (89, 'Pepsi', 'Blue', 6, 2, 'a coke', 6, 10),
    (90, 'Pepsi', 'Blue', 6, 2, 'a coke', 7, 10),
    (91, 'Pepsi', 'Blue', 6, 2, 'a coke', 8, 10),
    (92, 'Pepsi', 'Blue', 6, 2, 'a coke', 9, 10),
    (93, 'Pepsi', 'Blue', 6, 2, 'a coke', 10, 10),
    (94, 'Pepsi', 'Blue', 6, 2, 'a coke', 11, 10),
    (95, 'Pepsi', 'Blue', 6, 2, 'a coke', 25, 10),
    (96, 'Pepsi', 'Blue', 6, 2, 'a coke', 26, 10),
    (97, 'Dr.Pepper', 'Red', 6, 2, 'a soda', 1, 10),
    (98, 'Dr.Pepper', 'Red', 6, 2, 'a soda', 2, 10),
    (99, 'Dr.Pepper', 'Red', 6, 2, 'a soda', 3, 10),
    (100, 'Dr.Pepper', 'Red', 6, 2, 'a soda', 5, 10),
    (101, 'Dr.Pepper', 'Red', 6, 2, 'a soda', 6, 10),
    (102, 'Dr.Pepper', 'Red', 6, 2, 'a soda', 7, 10),
    (103, 'Dr.Pepper', 'Red', 6, 2, 'a soda', 8, 10),
    (104, 'Dr.Pepper', 'Red', 6, 2, 'a soda', 9, 10),
    (105, 'Dr.Pepper', 'Red', 6, 2, 'a soda', 10, 10),
    (106, 'Dr.Pepper', 'Red', 6, 2, 'a soda', 11, 10),
    (107, 'Dr.Pepper', 'Red', 6, 2, 'a soda', 25, 10),
    (108, 'Dr.Pepper', 'Red', 6, 2, 'a soda', 26, 10),
    (109, 'C1', 'Green', 7, 5, 'a soju', 2, 12),
    (110, 'C1', 'Green', 7, 5, 'a soju', 5, 12),
    (111, 'C1', 'Green', 7, 5, 'a soju', 6, 12),
    (112, 'C1', 'Green', 7, 5, 'a soju', 7, 12),
    (113, 'C1', 'Green', 7, 5, 'a soju', 8, 12),
    (114, 'C1', 'Green', 7, 5, 'a soju', 9, 12),
    (115, 'C1', 'Green', 7, 5, 'a soju', 25, 12),
    (116, 'C1', 'Green', 7, 5, 'a soju', 26, 12),
    (117, 'Chamiseul', 'Green', 7, 5, 'a soju', 2, 12),
    (118, 'Chamiseul', 'Green', 7, 5, 'a soju', 5, 12),
    (119, 'Chamiseul', 'Green', 7, 5, 'a soju', 6, 12),
    (120, 'Chamiseul', 'Green', 7, 5, 'a soju', 7, 12),
    (121, 'Chamiseul', 'Green', 7, 5, 'a soju', 8, 12),
    (122, 'Chamiseul', 'Green', 7, 5, 'a soju', 9, 12),
    (123, 'Chamiseul', 'Green', 7, 5, 'a soju', 25, 12),
    (124, 'Chamiseul', 'Green', 7, 5, 'a soju', 26, 12),
    (125, 'COSMOS', 'Black', 14, 20, 'a book by Carl Sagan', 21, 18),
    (126, 'COSMOS', 'Black', 14, 20, 'a book by Carl Sagan', 22, 18),
    (127, 'COSMOS', 'Black', 14, 20, 'a book by Carl Sagan', 23, 18),
    (128, 'Post-it', 'Yellow', 4, 3, 'a sticky note', 1, 21),
    (129, 'Post-it', 'Yellow', 4, 3, 'a sticky note', 18, 21),
    (130, 'Baguette', 'Brown', 12, 10, 'a bread', 19, 7),
    (131, 'Baguette', 'Brown', 12, 10, 'a bread', 20, 7);

INSERT INTO OrderItem (Seq_id, Order_id, unit_price, quantity, status, Shipment_id, Product_id)
VALUES
    (1, 1, 3, 2, 'processing', NULL, 108),
    (2, 2, 1, 2, 'ready_to_ship', NULL, 105),
    (3, 3, 5, 3, 'processing', NULL, 120),
    (4, 3, 4, 5, 'shipped', 1, 109),
    (5, 4, 5, 1, 'ready_to_ship', NULL, 29),
    (6, 4, 5, 3, 'ready_to_ship', NULL, 120),
    (7, 4, 4, 2, 'ready_to_ship', NULL, 66),
    (8, 5, 5, 2, 'out_of_stock', NULL, 30),
    (9, 6, 21, 4, 'out_of_stock', NULL, 57),
    (10, 7, 5, 1, 'ready_to_ship', NULL, 9),
    (11, 7, 5, 5, 'ready_to_ship', NULL, 119),
    (12, 7, 2, 3, 'ready_to_ship', NULL, 100),
    (13, 8, 2, 2, 'out_of_stock', NULL, 60),
    (14, 8, 3, 4, 'ready_to_ship', NULL, 24),
    (15, 8, 2, 1, 'ready_to_ship', NULL, 76),
    (16, 9, 2, 4, 'ready_to_ship', NULL, 19),
    (17, 10, 3, 2, 'shipped', 2, 101),
    (18, 11, 3, 5, 'shipped', 3, 20),
    (19, 12, 3, 1, 'processing', NULL, 24),
    (20, 13, 5, 4, 'processing', NULL, 121),
    (21, 14, 4, 5, 'processing', NULL, 25),
    (22, 15, 5, 2, 'shipped', 4, 123),
    (23, 15, 2, 1, 'ready_to_ship', NULL, 86),
    (24, 16, 4, 2, 'ready_to_ship', NULL, 22),
    (25, 16, 3, 4, 'shipped', 5, 20),
    (26, 17, 1100, 1, 'processing', NULL, 4),
    (27, 17, 3, 1, 'processing', NULL, 96),
    (28, 17, 2, 1, 'processing', NULL, 104),
    (29, 17, 4, 5, 'processing', NULL, 70),
    (30, 18, 3, 2, 'processing', NULL, 24),
    (31, 19, 2, 5, 'ready_to_ship', NULL, 79),
    (32, 19, 3, 3, 'shipped', 6, 90),
    (33, 20, 2273, 2, 'ready_to_ship', NULL, 55),
    (34, 20, 10, 1, 'shipped', 7, 53),
    (35, 20, 15, 1, 'shipped', 8, 58),
    (36, 20, 1, 2, 'shipped', 9, 15),
    (37, 20, 3, 3, 'shipped', 10, 102),
    (38, 21, 5, 2, 'processing', NULL, 119),
    (39, 21, 3, 1, 'processing', NULL, 102),
    (40, 21, 5, 1, 'processing', NULL, 9),
    (41, 22, 2, 1, 'processing', NULL, 60),
    (42, 23, 1, 3, 'processing', NULL, 99),
    (43, 24, 3, 4, 'out_of_stock', NULL, 101),
    (44, 24, 4, 4, 'ready_to_ship', NULL, 71),
    (45, 25, 3, 5, 'processing', NULL, 129),
    (46, 26, 1, 5, 'ready_to_ship', NULL, 106),
    (47, 27, 2, 5, 'shipped', 11, 92),
    (48, 28, 1100, 5, 'processing', NULL, 4),
    (49, 29, 1, 1, 'processing', NULL, 78),
    (50, 30, 4, 2, 'processing', NULL, 66),
    (51, 31, 3, 5, 'ready_to_ship', NULL, 69),
    (52, 32, 4, 5, 'ready_to_ship', NULL, 117),
    (53, 33, 5, 1, 'processing', NULL, 123),
    (54, 33, 5, 1, 'processing', NULL, 111),
    (55, 33, 5, 2, 'processing', NULL, 124),
    (56, 34, 2, 4, 'out_of_stock', NULL, 36),
    (57, 35, 21, 1, 'processing', NULL, 125),
    (58, 36, 3, 1, 'shipped', 12, 95),
    (59, 36, 2, 3, 'shipped', 13, 38),
    (60, 36, 4, 2, 'ready_to_ship', NULL, 26),
    (61, 37, 4, 3, 'processing', NULL, 8),
    (62, 38, 1, 5, 'processing', NULL, 74),
    (63, 38, 5, 3, 'processing', NULL, 124),
    (64, 39, 8, 2, 'processing', NULL, 48),
    (65, 40, 21, 1, 'processing', NULL, 127),
    (66, 41, 1, 2, 'shipped', 14, 106),
    (67, 41, 4, 4, 'ready_to_ship', NULL, 71),
    (68, 41, 2, 5, 'shipped', 15, 37),
    (69, 41, 2, 1, 'shipped', 16, 76),
    (70, 41, 4, 1, 'shipped', 17, 64),
    (71, 42, 5, 2, 'processing', NULL, 31),
    (72, 42, 1, 2, 'processing', NULL, 94),
    (73, 43, 2, 4, 'ready_to_ship', NULL, 98),
    (74, 44, 10, 5, 'shipped', 18, 131),
    (75, 45, 4, 2, 'processing', NULL, 45),
    (76, 46, 4, 1, 'ready_to_ship', NULL, 26),
    (77, 46, 2, 2, 'shipped', 19, 98),
    (78, 46, 1, 3, 'out_of_stock', NULL, 94),
    (79, 46, 2, 1, 'ready_to_ship', NULL, 88),
    (80, 47, 3, 3, 'processing', NULL, 68),
    (81, 48, 4, 2, 'processing', NULL, 25),
    (82, 49, 3, 1, 'processing', NULL, 90),
    (83, 50, 3, 1, 'processing', NULL, 96),
    (84, 51, 1, 5, 'ready_to_ship', NULL, 15),
    (85, 52, 1100, 5, 'processing', NULL, 4),
    (86, 52, 3, 2, 'processing', NULL, 96),
    (87, 52, 2, 3, 'processing', NULL, 98),
    (88, 53, 4, 3, 'shipped', 20, 118),
    (89, 54, 3, 1, 'ready_to_ship', NULL, 18),
    (90, 54, 3, 4, 'out_of_stock', NULL, 63),
    (91, 54, 2, 5, 'shipped', 21, 92),
    (92, 54, 1, 1, 'shipped', 22, 87),
    (93, 54, 1, 2, 'shipped', 22, 93),
    (94, 55, 2, 3, 'processing', NULL, 75),
    (95, 56, 3, 2, 'ready_to_ship', NULL, 96),
    (96, 57, 4, 3, 'processing', NULL, 7),
    (97, 58, 2, 5, 'processing', NULL, 43),
    (98, 59, 3, 1, 'processing', NULL, 96),
    (99, 59, 1100, 5, 'processing', NULL, 4),
    (100, 60, 4, 2, 'ready_to_ship', NULL, 26),
    (101, 61, 5, 1, 'processing', NULL, 10),
    (102, 62, 5, 4, 'processing', NULL, 116),
    (103, 63, 1, 1, 'shipped', 23, 15),
    (104, 64, 5, 3, 'processing', NULL, 28),
    (105, 65, 5, 1, 'processing', NULL, 116),
    (106, 66, 5, 3, 'out_of_stock', NULL, 113),
    (107, 67, 2, 3, 'shipped', 24, 98),
    (108, 68, 1100, 4, 'shipped', 25, 4),
    (109, 69, 3, 5, 'ready_to_ship', NULL, 129),
    (110, 70, 4, 4, 'shipped', NULL, 23),
    (111, 70, 3, 5, 'ready_to_ship', NULL, 108),
    (112, 70, 1100, 2, 'shipped', 26, 4),
    (113, 70, 3, 3, 'shipped', 27, 96),
    (114, 70, 4, 5, 'ready_to_ship', NULL, 70);


INSERT INTO Photo (Product_id, photo_id, photo)
VALUES
    (1, 1, 'book3_front_side.jpg'),
    (1, 2, 'book3_back_side.jpg'),
    (2, 1, 'pen_front_side.jpg'),
    (2, 2, 'pen_back_side.jpg'),
    (3, 1, 'air_front_side.jpg'),
    (3, 2, 'air_back_side.jpg'),
    (4, 1, 's23_front_side.jpg'),
    (4, 2, 's23_back_side.jpg'),
    (5, 1, 'iPhone15_front.jpg'),
    (5, 2, 'iPhone15_back.jpg'),
    (6, 1, 'mini_front.jpg'),
    (6, 2, 'mini_back.jpg'),
    (7, 1, 'cereal.jpg'),
    (8, 1, 'cereal.jpg'),
    (9, 1, 'cereal.jpg'),
    (10, 1, 'cereal.jpg'),
    (11, 1, 'cereal.jpg'),
    (12, 1, 'apple.jpg'),
    (13, 1, 'apple.jpg'),
    (14, 1, 'apple.jpg'),
    (15, 1, 'apple.jpg'),
    (16, 1, 'apple.jpg'),
    (17, 1, 'apple.jpg'),
    (18, 1, 'Heineken.jpg'),
    (19, 1, 'Heineken.jpg'),
    (20, 1, 'Heineken.jpg'),
    (21, 1, 'Heineken.jpg'),
    (22, 1, 'Heineken.jpg'),
    (23, 1, 'Heineken.jpg'),
    (24, 1, 'Heineken.jpg'),
    (25, 1, 'Heineken.jpg'),
    (26, 1, 'Heineken.jpg'),
    (27, 1, 'Marlboro.jpg'),
    (28, 1, 'Marlboro.jpg'),
    (29, 1, 'Marlboro.jpg'),
    (30, 1, 'Marlboro.jpg'),
    (31, 1, 'Marlboro.jpg'),
    (32, 1, 'gum.jpg'),
    (32, 2, 'gum.jpg'),
    (33, 1, 'gum.jpg'),
    (34, 1, 'gum.jpg'),
    (35, 1, 'gum.jpg'),
    (36, 1, 'gum.jpg'),
    (37, 1, 'gum.jpg'),
    (38, 1, 'gum.jpg'),
    (39, 1, 'gum.jpg'),
    (40, 1, 'gum.jpg'),
    (41, 1, 'gum.jpg'),
    (42, 1, 'gum.jpg'),
    (43, 1, 'gum.jpg'),
    (44, 1, 'ScotchTape.jpg'),
    (45, 1, 'ScotchTape.jpg'),
    (46, 1, 'Maxim.jpg'),
    (47, 1, 'Maxim.jpg'),
    (48, 1, 'Maxim.jpg'),
    (49, 1, 'Maxim.jpg'),
    (50, 1, 'Maxim.jpg'),
    (51, 1, 'Maxim.jpg'),
    (52, 1, 'Maxim.jpg'),
    (53, 1, 'Maxim.jpg'),
    (54, 1, 'Maxim.jpg'),
    (55, 1, 'DIOS_front.jpg'),
    (55, 2, 'DIOS_back.jpg'),
    (55, 3, 'DIOS_inside.jpg'),
    (56, 1, 'Objet_front.jpg'),
    (56, 2, 'Objet_back.jpg'),
    (56, 3, 'Objet_inside.jpg'),
    (57, 1, 'GGS_front.jpg'),
    (57, 2, 'GGS_index.jpg'),
    (58, 1, 'GGS_front.jpg'),
    (58, 2, 'GGS_index.jpg'),
    (59, 1, 'GGS_front.jpg'),
    (59, 2, 'GGS_index.jpg'),
    (60, 1, 'eclipse.jpg'),
    (61, 1, 'eclipse.jpg'),
    (62, 1, 'eclipse.jpg'),
    (63, 1, 'eclipse.jpg'),
    (64, 1, 'eclipse.jpg'),
    (65, 1, 'eclipse.jpg'),
    (66, 1, 'eclipse.jpg'),
    (67, 1, 'eclipse.jpg'),
    (68, 1, 'eclipse.jpg'),
    (69, 1, 'eclipse.jpg'),
    (70, 1, 'eclipse.jpg'),
    (71, 1, 'eclipse.jpg'),
    (72, 1, 'samdasoo.jpg'),
    (73, 1, 'samdasoo.jpg'),
    (74, 1, 'samdasoo.jpg'),
    (75, 1, 'samdasoo.jpg'),
    (76, 1, 'samdasoo.jpg'),
    (77, 1, 'samdasoo.jpg'),
    (78, 1, 'samdasoo.jpg'),
    (79, 1, 'samdasoo.jpg'),
    (80, 1, 'samdasoo.jpg'),
    (81, 1, 'jetstream.jpg'),
    (82, 1, 'jetstream.jpg'),
    (83, 1, 'B722_top.jpg'),
    (83, 2, 'B722_left.jpg'),
    (84, 1, 'airforce_top.jpg'),
    (84, 2, 'airforce_left.jpg'),
    (85, 1, 'pepsi.jpg'),
    (86, 1, 'pepsi.jpg'),
    (87, 1, 'pepsi.jpg'),
    (88, 1, 'pepsi.jpg'),
    (89, 1, 'pepsi.jpg'),
    (90, 1, 'pepsi.jpg'),
    (91, 1, 'pepsi.jpg'),
    (92, 1, 'pepsi.jpg'),
    (93, 1, 'pepsi.jpg'),
    (94, 1, 'pepsi.jpg'),
    (95, 1, 'pepsi.jpg'),
    (96, 1, 'pepsi.jpg'),
    (97, 1, 'drpep.jpg'),
    (98, 1, 'drpep.jpg'),
    (99, 1, 'drpep.jpg'),
    (100, 1, 'drpep.jpg'),
    (101, 1, 'drpep.jpg'),
    (102, 1, 'drpep.jpg'),
    (103, 1, 'drpep.jpg'),
    (104, 1, 'drpep.jpg'),
    (105, 1, 'drpep.jpg'),
    (106, 1, 'drpep.jpg'),
    (107, 1, 'drpep.jpg'),
    (108, 1, 'drpep.jpg'),
    (109, 1, 'c1.jpg'),
    (110, 1, 'c1.jpg'),
    (111, 1, 'c1.jpg'),
    (112, 1, 'c1.jpg'),
    (113, 1, 'c1.jpg'),
    (114, 1, 'c1.jpg'),
    (115, 1, 'c1.jpg'),
    (116, 1, 'c1.jpg'),
    (117, 1, 'chamiseul.jpg'),
    (118, 1, 'chamiseul.jpg'),
    (119, 1, 'chamiseul.jpg'),
    (120, 1, 'chamiseul.jpg'),
    (121, 1, 'chamiseul.jpg'),
    (122, 1, 'chamiseul.jpg'),
    (123, 1, 'chamiseul.jpg'),
    (124, 1, 'chamiseul.jpg'),
    (125, 1, 'cosmos_front.jpg'),
    (125, 2, 'cosmos_index.jpg'),
    (126, 1, 'cosmos_front.jpg'),
    (126, 2, 'cosmos_index.jpg'),
    (127, 1, 'cosmos_front.jpg'),
    (127, 2, 'cosmos_index.jpg'),
    (128, 1, 'postit.jpg'),
    (129, 1, 'postit.jpg'),
    (130, 1, 'baguette.jpg'),
    (131, 1, 'baguette.jpg');

INSERT INTO CanSell (Restricted_shop_id, Product_type_id)
VALUES
    (4, 1),
    (4, 22),
    (16, 1),
    (16, 22),
    (17, 1),
    (18, 21),
    (21, 18),
    (22, 18),
    (23, 18),
    (27, 13),
    (28, 13),
    (29, 13),
    (30, 13);
    
    