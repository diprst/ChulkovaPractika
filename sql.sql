USE [TurAgenstvoo]
GO
/****** Object:  Table [dbo].[Air_Ticket]    Script Date: 06.12.2024 12:12:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Air_Ticket](
	[id_air_ticket] [int] IDENTITY(1,1) NOT NULL,
	[departure_date] [date] NULL,
	[arrival_date] [date] NULL,
	[from_city] [varchar](max) NULL,
	[to_city] [varchar](max) NULL,
	[class_of_service] [varchar](max) NULL,
	[price] [float] NULL,
	[airline] [varchar](max) NULL,
	[aircraft_type] [varchar](max) NULL,
 CONSTRAINT [PK_Air_Ticket] PRIMARY KEY CLUSTERED 
(
	[id_air_ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 06.12.2024 12:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[id_client] [int] IDENTITY(1,1) NOT NULL,
	[Fio] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[phone_number] [nvarchar](max) NULL,
	[history] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel_Name]    Script Date: 06.12.2024 12:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel_Name](
	[id_hotel_room] [int] IDENTITY(1,1) NOT NULL,
	[hotel_name] [varchar](max) NULL,
	[location_rating] [varchar](max) NULL,
	[room_type] [varchar](max) NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_Hotel_Name] PRIMARY KEY CLUSTERED 
(
	[id_hotel_room] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 06.12.2024 12:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[id_payment] [int] IDENTITY(1,1) NOT NULL,
	[payment_method] [varchar](max) NULL,
	[transation_status] [varchar](max) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[id_payment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 06.12.2024 12:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[id_reservation] [int] IDENTITY(1,1) NOT NULL,
	[id_client] [int] NULL,
	[order_composition] [varchar](max) NULL,
	[reservation_status] [varchar](max) NULL,
	[price] [float] NULL,
	[id_air_ticket] [int] NULL,
	[id_tour] [int] NULL,
	[id_payment] [int] NULL,
	[id_hotel_room] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id_reservation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 06.12.2024 12:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[id_tour] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[price] [float] NULL,
	[available_places] [int] NULL,
	[tour_id] [int] NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[id_tour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Air_Ticket] ON 

INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (1, CAST(N'2023-10-10' AS Date), CAST(N'2023-10-11' AS Date), N'Москва ', N'Санкт-Петербург', N'эконом', 3500, N'Шереметьево', N'Airbus A320')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (2, CAST(N'2022-10-05' AS Date), CAST(N'2022-10-05' AS Date), N'Новосибирск ', N'Красноярск', N'бизнес', 25000, N'S7 airlines', N'Boeing 737-800')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (3, CAST(N'2022-10-10' AS Date), CAST(N'2022-10-10' AS Date), N'Екатеринбург', N'Сочи', N'эконом', 4500, N'Уральские авиалинии', N'Airbus A321')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (4, CAST(N'2022-10-15' AS Date), CAST(N'2022-10-15' AS Date), N'Казань ', N'Симферопль', N'премиум-эконом', 7000, N'Россия', N'Boeing 777-300')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (5, CAST(N'2022-10-20' AS Date), CAST(N'2022-10-20' AS Date), N'Самара ', N'Нижний Новгород ', N'эконом', 2500, N'ЮТэйр', N'Boeing 777-500')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (6, CAST(N'2022-10-25' AS Date), CAST(N'2022-10-25' AS Date), N'Ростов-на-Дону', N'Краснодар', N'бизнес', 9000, N'Победа', N'Boeing 737 MAX')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (7, CAST(N'2022-10-30' AS Date), CAST(N'2022-10-30' AS Date), N'Уфа', N'Иркутск', N'эконом', 5500, N'Ямал', N'CRJ200')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (8, CAST(N'2022-11-04' AS Date), CAST(N'2022-11-04' AS Date), N'Омск', N'Тюмень ', N'эконом', 4000, N'НордСтар', N'Embraer E190')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (9, CAST(N'2022-11-09' AS Date), CAST(N'2022-11-09' AS Date), N'Чулябинск', N'Мурманск', N'бизнес', 15000, N'Red Wings', N'Ty-204')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (10, CAST(N'2022-11-14' AS Date), CAST(N'2022-11-14' AS Date), N'Пермь ', N'Сургут', N'эконом', 6000, N'Нордавиа', N'Ан-148')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (11, CAST(N'2022-11-19' AS Date), CAST(N'2022-11-19' AS Date), N'Воронеж ', N'Волгоград', N'эконом', 3700, N'Азимут', N'Superjet 100')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (12, CAST(N'2022-11-24' AS Date), CAST(N'2022-11-24' AS Date), N'Саратов ', N'Астрахань ', N'премиум-эконом', 7500, N'Ижавиа', N'Як-42')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (13, CAST(N'2022-11-29' AS Date), CAST(N'2022-11-29' AS Date), N'Томск ', N'Магадан', N'бизнес', 18000, N'Алроса', N'Boeing 757-200')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (14, CAST(N'2022-12-04' AS Date), CAST(N'2022-12-04' AS Date), N'Архангельск ', N'Минеральные воды ', N'эконом', 4800, N'Северсталь', N'Bombardier Q400')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (15, CAST(N'2022-12-09' AS Date), CAST(N'2022-12-09' AS Date), N'Нижневаторск', N'Петропавловск-Камчатский', N'бизнес', 22000, N'Владивасток Авиа', N'Ил-96')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (16, CAST(N'2022-12-14' AS Date), CAST(N'2022-12-14' AS Date), N'Южно-Сахалинск', N'Благовещенск', N'эконом ', 6500, N'Аврора', N'ATR 72')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (17, CAST(N'2022-12-19' AS Date), CAST(N'2022-12-19' AS Date), N'Барнаул ', N'Норильск', N'бизнес', 16000, N'Газпромавиа', N'Ан-74')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (18, CAST(N'2022-12-24' AS Date), CAST(N'2022-12-24' AS Date), N'Калиниград ', N'Пков ', N'эконом', 2900, N'РусЛайн', N'DHC-8')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (19, CAST(N'2022-12-29' AS Date), CAST(N'2022-12-29' AS Date), N'Махачкала ', N'Грозный', N'эконом', 2100, N'Дагестанские авиалинии', N'Ту-154')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (20, CAST(N'2023-01-03' AS Date), CAST(N'2023-01-03' AS Date), N'Пенза', N'Саранск', N'эконом', 2700, N'Комавиатранс', N'Ан-24')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (21, CAST(N'2023-01-08' AS Date), CAST(N'2023-01-08' AS Date), N'Ставрополь', N'Чита', N'бизнес', 13000, N'Сибирь', N'Boeing 767-300')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (22, CAST(N'2023-01-13' AS Date), CAST(N'2023-01-13' AS Date), N'Ижевск', N'Ульяновск', N'эконом', 3300, N'Оренбуржье', N'Як-40')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (23, CAST(N'2023-01-23' AS Date), CAST(N'2023-01-23' AS Date), N'Курск', N'Брянск', N'эконом', 2800, N'Белавиа', N'Embraer ERJ-145')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (24, CAST(N'2023-01-28' AS Date), CAST(N'2023-01-28' AS Date), N'Хабаровск', N'Владивосток', N'бизнес', 17000, N'Якутия', N'Boeing 747-400')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (25, CAST(N'2023-02-02' AS Date), CAST(N'2023-02-02' AS Date), N'Сыктывкар', N'Нарьян-Мар', N'эконом', 3900, N'Полярные авиалинии', N'Ан-38')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (26, CAST(N'2024-12-02' AS Date), CAST(N'2024-12-03' AS Date), N'1313', N'13131', N'1', 1, N'1', N'1')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (27, CAST(N'2024-12-06' AS Date), CAST(N'2024-12-06' AS Date), N'москва', N'питер', N'первый', 12000, N'Аэрофлот', N'Boeign')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (28, CAST(N'2024-12-06' AS Date), CAST(N'2024-12-06' AS Date), N'hgm,gh', N'ghmghm', N'ghmghm', 3414, N'thth', N'fjfjt')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (29, CAST(N'2024-12-20' AS Date), CAST(N'2024-12-20' AS Date), N'hdrhd', N'dhdrh', N'rhhrdh', 12, N'dsg', N'dgr')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (30, CAST(N'2024-12-10' AS Date), CAST(N'2024-12-10' AS Date), N'ili', N'ili', N'l', 3, N'y', N'y')
INSERT [dbo].[Air_Ticket] ([id_air_ticket], [departure_date], [arrival_date], [from_city], [to_city], [class_of_service], [price], [airline], [aircraft_type]) VALUES (31, CAST(N'2024-12-21' AS Date), CAST(N'2024-12-25' AS Date), N'новосибирск', N'москва', N'первый', 12000, N'Аэрофлот', N'boeing')
SET IDENTITY_INSERT [dbo].[Air_Ticket] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (1, N'Иванов Иван Петрович ', N' ivanov@mail.ru', N'8900-123-45-67', N'Москва, Санкт-Петербург ', N'p@ssw0rd123')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (2, N'Петров Петр Александрович', N' petrov@yandex.ru', N'8911-234-56-78', N' Сочи, Казань  ', N'qwerty1234')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (3, N'Сидоров Сергей Владимирович', N'sidorov@gmail.com ', N'8921-345-67-89', N'Екатеринбург, Нижний Новгород', N'12345678')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (4, N'Козлов Алексей Николаевич ', N'kozlov@rambler.ru ', N'8912-456-78-90', N'Владивосток, Хабаровск  ', N'password987')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (5, N'Орлов Андрей Михайлович', N'orlov@yahoo.com', N'8913-567-81-09', N'Новосибирск, Красноярск   ', N'mysecurepassword')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (6, N'Морозова Анна Владимировна', N' morozova@hotmail.com ', N'8914-678-91-02', N'Симферополь, Севастополь  ', N'secret321')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (7, N'Васильева Вера Александровна', N'vasilieva@list.ru', N'8915-789-12-03', N'Ростов-на-Дону, Краснодар ', N' lovelypas$word')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (8, N'Николоева Нина Сергеевна', N'nikolaeva@outlook.com ', N'8916-891-23-04', N'Калининград, Мурманск ', N'1q2w3e4r')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (9, N'Семёнова Светлана Игоревна', N' semenova@inbox.ru  ', N'8917-901-34-05', N'Уфа, Самара', N' ilovep@ssw0rd')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (10, N'Федорова Фаина Викторовна', N'feodorova@protonmail.com ', N'8918-012-45-06', N'Челябинск, Омск  ', N'qwerty5678')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (11, N'Григорьева Галина Юрьевна', N'gregorieva@icloud.com ', N'8919-123-46-07', N'Пермь, Тюмень   ', N'thesecurepass1')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (12, N'Дмитреева Дарья Андреевна ', N'dmitrieva@gmx.de  ', N'8920-134-57-08', N'Иркутск, Якутск  ', N'321pass123')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (13, N'Егорова Елена Николаевна ', N'egorova@aol.com ', N'8910-145-68-19', N'Саратов, Волгоград  ', N'mypassword456')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (14, N'Жукова Жанна Борисовна ', N'zhukova@yopmail.com ', N'8909-156-79-20', N'Псков, Великий Новгород ', N' pass123secure')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (15, N'Захарова Зоя Алексеевна ', N'zaharova@zoho.com   ', N'8908-167-80-31', N'Воронеж, Курск   ', N'qwertasdfg')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (16, N'Исаева Инга Вячеславовна', N'isaeva@tutanota.com  ', N'8907-178-92-32', N'Архангельск, Вологда    ', N'5678secure')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (17, N'Константинов Константин Васильевич', N'konstantinov@hushmail.com', N'8906-189-93-43', N'Томск, Кемерово', N' simpli$ity2')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (18, N'Лебедев Лев Сергеевич ', N'lebedev@yandex.ru ', N'8905-190-94-54', N'Барнаул, Новокузнецк  ', N'secure&am')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (19, N'Михайлов Михаил Игоревич', N'mikhailov@rambler.ru ', N'8904-191-95-65', N'Благовещенск, Чита ', N' passw0rd098')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (20, N'Николаев Николай Анатольевич', N'nikolaev@gmail.com ', N'8903-192-96-76', N'Южно-Сахалинск, Магадан          ', N'mypass456')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (21, N'Павлов Павел Евгеньевич', N'pavlov@yandex.ru', N'8902-193-97-87', N'Сургут, Нижневартовск   ', N'super123pass')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (22, N'Романов Роман Эдуардович', N'romanov@rambler.ru ', N'8901-194-98-98', N'Ханты-Мансийск, Салехард ', N'passsweg123')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (23, N'Сергеев Сергей Валерьевич ', N'sergeev@yandex.ru', N'8923-195-99-00', N'Горно-Алтайск, Кызыл  ', N' pass$2022')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (24, N'Тимофее Тимур Алексеевич', N'timofeev@rambler.ru ', N'8924-196-10-11', N'Петропавловск-Камчатский, Анадырь', N'secuRe4321')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (25, N'Федяева Ольга Сергеевна', N'fedyaeva@gmail.com', N'8922-199-45-89', N'Новосибирк, Карелия ', N' pass2023!')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (26, NULL, N'test1', NULL, NULL, N'test1')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (27, NULL, N'1', NULL, NULL, N'1')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (28, N'тест', N'asasas', N'11111', NULL, N'11111')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (29, NULL, N'Van4853@gmail', NULL, NULL, N'12345')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (30, N'', N'', N'', NULL, N'')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (31, NULL, N'134124', NULL, NULL, N'413434')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (32, N'Семёнов Игорь Алексеевич', N'Sem65@gmail.com', N'8900-147-24-56', NULL, N'1234567')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (33, N'Чулкова Дарья Романовна', N'Chulkova06@gmail.com', N'8965-754-45-45', NULL, N'123456789')
INSERT [dbo].[Client] ([id_client], [Fio], [email], [phone_number], [history], [password]) VALUES (34, NULL, N'1й', NULL, NULL, N'12')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Hotel_Name] ON 

INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (1, N'Гранд Отель', N'9.1', N'Люкс', 14000)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (2, N'Марриот', N'8.6', N'Стандартный номер', 8500)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (3, N'Ритц-Карлтон', N'9.5', N'Президентский люкс', 24000)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (4, N'Хилтон', N'8.8', N'Полулюкс', 11000)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (5, N'Шератон', N'8.4', N'Семейный номер', 9500)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (6, N'ИнтерКонтиненталь', N'9.3', N'Делюкс', 12500)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (7, N'Фур сезона', N'9.7', N'Люкс', 17500)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (8, N'Редиссон Блу', N'8.5', N'Стандартный номер ', 7800)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (9, N'Коринтия', N'9.0', N'Полулюкс', 10500)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (10, N'Ренессанс', N'8.7', N'Делюкс', 9800)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (11, N'Вестин', N'8.9', N'Люкс', 13500)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (12, N'Хайятт Ридженси', N'9.2', N'Президентский люкс', 19500)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (13, N'Ле Меридиен', N'8.3', N'Стандартный номер', 7200)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (14, N'Стейт Хаус', N'8.2', N'Семейный номер', 6900)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (15, N'Парк Инн', N'7.9', N'Стандартный номер ', 6200)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (16, N'Кемпински', N'9.4', N'Люкс', 15500)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (17, N'Рояль Резиденс', N'8.0', N'Полулюкс', 8200)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (18, N'Голден Палас', N'8.1', N'Делюкс', 7400)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (19, N'Империал', N'7.8', N'Страндартный номер', 5800)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (20, N'Элит ', N'7.7', N'Семейный номер ', 5600)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (21, N'Классик', N'7.6', N'Полулюкс', 6700)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (22, N'Виктория', N'7.5', N'Делюкс', 6400)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (23, N'Маджесик', N'7.4', N'Люкс', 9200)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (24, N'Премьер ', N'7.3', N'Стандартный номер', 5300)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (25, N'Аэростар', N'9.1', N'Люкс', 9000)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (26, N'131', N'1313', N'131', 1)
INSERT [dbo].[Hotel_Name] ([id_hotel_room], [hotel_name], [location_rating], [room_type], [price]) VALUES (27, N'', N'', N'', 3413443)
SET IDENTITY_INSERT [dbo].[Hotel_Name] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([id_payment], [payment_method], [transation_status]) VALUES (1, N'кредитная карта', N'успешно')
INSERT [dbo].[Payment] ([id_payment], [payment_method], [transation_status]) VALUES (2, N'PayPal', N'ожидает')
INSERT [dbo].[Payment] ([id_payment], [payment_method], [transation_status]) VALUES (3, N'наличные ', N'отказано')
INSERT [dbo].[Payment] ([id_payment], [payment_method], [transation_status]) VALUES (4, N'дебетовая карта ', N'успешно ')
INSERT [dbo].[Payment] ([id_payment], [payment_method], [transation_status]) VALUES (5, N'банковский первод', N'возврат редств ')
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Reservation] ON 

INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (1, 1, N'тур', N'подтвержден ', 22500, 1, 1, 1, 1)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (2, 2, N'гостинца', N'подтвержден ', 35500, 2, 2, 2, 2)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (3, 3, N'авиабилет', N'ожидает подтверждения ', 30200, 3, 3, 3, 2)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (4, 4, N'авиабилет ', N'отменен ', 26000, 4, 4, 4, 2)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (5, 5, N'тур ', N'отменен ', 13000, 5, 5, 5, 3)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (6, 6, N'тур  ', N'подтвержден ', 40200, 2, 6, 1, 3)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (7, 7, N'гостиница', N'ожидает подтверждения ', 21000, 7, 7, 1, 3)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (8, 8, N'авиабилет ', N'ожидает подтверждения', 23500, 6, 8, 2, 5)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (9, 9, N'гостиница', N'подтвержден ', 45000, 8, 9, 3, 6)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (10, 10, N'гостиница', N'подтвержден ', 36000, 9, 10, 4, 7)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (11, 11, N'тур ', N'отменен ', 33500, 10, 11, 5, 5)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (12, 12, N'тур', N'отменен', 30700, 11, 12, 1, 9)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (13, 13, N'гостиница', N'отменен', 30000, 12, 13, 2, 2)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (14, 14, N'авиабилет ', N'ожидает подтверждения', 49500, 13, 14, 3, 11)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (15, 15, N'авиабилет', N'ожидает подтверждения', 44800, 14, 15, 3, 13)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (16, 16, N'гостиница', N'ожидает подтверждения', 44000, 15, 16, 4, 19)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (17, 17, N'гостиница', N'подтвержден ', 36500, 16, 17, 4, 18)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (18, 18, N'гостиница', N'подтвержден ', 35000, 17, 18, 5, 22)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (19, 19, N'тур ', N'отменен', 40500, 17, 19, 1, 11)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (20, 20, N'гостиница', N'отменен', 28600, 19, 20, 1, 23)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (21, 21, N'авиабилет', N'подтвержден', 19700, 18, 21, 2, 24)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (22, 22, N'тур ', N'подтвержден', 25200, 20, 22, 2, 25)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (23, 23, N'тур', N'ожидает подтверждения', 32500, 21, 23, 3, 4)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (24, 24, N'гостиница', N'подтвержден', 33300, 22, 24, 4, 16)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (25, 25, N'авиабилет', N'подтвержден', 26500, 23, 25, 5, 17)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (26, 32, N'1313', N'13131', 1, 1, 1, 1, 1)
INSERT [dbo].[Reservation] ([id_reservation], [id_client], [order_composition], [reservation_status], [price], [id_air_ticket], [id_tour], [id_payment], [id_hotel_room]) VALUES (27, 33, N'тур', N'отменен', 12000, 31, 2, 1, 1)
SET IDENTITY_INSERT [dbo].[Reservation] OFF
GO
SET IDENTITY_INSERT [dbo].[Tour] ON 

INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (1, N'Волшебство Золотого кольца ', N'Путешествие по древним городам России', 5000, 10, 1, CAST(N'2022-02-02' AS Date), CAST(N'2022-02-09' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (2, N'Тайны древней Москвы', N'Экскурсия по историческим местам столицы', 2000, 15, 2, CAST(N'2022-03-16' AS Date), CAST(N'2022-03-09' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (3, N'По следам великих императоров', N'Посещение дворцов и резеденций русских императоров ', 1700, 8, 3, CAST(N'2022-04-27' AS Date), CAST(N'2022-05-04' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (4, N'Загадки Байкала', N'Исследуем самое глубокое озеро мира', 8000, 12, 4, CAST(N'2022-06-08' AS Date), CAST(N'2022-06-15' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (5, N'Путешествие к сердцу Сибири', N'Экспедиция по живописным уголкам сибиркой тайги ', 1000, 6, 5, CAST(N'2022-07-20' AS Date), CAST(N'2022-07-27' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (6, N'Вкус Италии: гастрономический тур ', N'Дегустация лучших блюд итальянской кухни', 1200, 5, 6, CAST(N'2022-08-31' AS Date), CAST(N'2022-09-07' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (7, N'Париж - город любви', N'Романтическое путешествие по Парижу', 1500, 7, 7, CAST(N'2022-10-12' AS Date), CAST(N'2022-10-19' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (8, N'Скандинавские фьорды: природа и легенды ', N'Позновательный круиз по Норвегии', 9000, 9, 8, CAST(N'2022-11-13' AS Date), CAST(N'2022-11-30' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (9, N'Магия Востока: Турция и её сокровища ', N'Откройте для себя удивительные места Турции', 6000, 14, 9, CAST(N'2022-12-30' AS Date), CAST(N'2023-01-06' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (10, N'Великие пирамиды Египта', N'Погрузитесь в историю Древнего Египта ', 10000, 11, 10, CAST(N'2023-02-08' AS Date), CAST(N'2023-02-15' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (11, N'Круиз по Средиземноморью', N'Путешествуйте по самым красивым берегам Средиземного моря', 18000, 4, 11, CAST(N'2023-03-22' AS Date), CAST(N'2023-03-29' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (12, N'Швейцария: альпийские вершины и озера ', N'Восхитительный отдых среди швейцарских Альп', 13000, 13, 12, CAST(N'2023-04-26' AS Date), CAST(N'2023-05-03' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (13, N'Япония: страна восходящего солнца', N'Познакомтесь с культурой и традициями Япониии', 14000, 3, 13, CAST(N'2023-06-07' AS Date), CAST(N'2023-06-14' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (14, N'Индия: колорит и традиции ', N'Увлекательное погружение в индийскую культуру ', 7500, 16, 14, CAST(N'2023-07-19' AS Date), CAST(N'2023-07-26' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (15, N'Австралия: путешествие по континенту', N'Иследование разнообразных ландшафтов Австралии', 16000, 2, 15, CAST(N'2023-08-30' AS Date), CAST(N'2023-09-06' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (16, N'Канада: от океана до океана', N'Пересечение канада  востока на запод ', 11000, 17, 16, CAST(N'2023-10-04' AS Date), CAST(N'2023-10-10' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (17, N'Африканское сафари: встреча с дикой природой  ', N'Приключения в сердце африканского континента ', 19000, 18, 17, CAST(N'2023-02-16' AS Date), CAST(N'2023-02-23' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (18, N'Китай: великая стена и древние города ', N'История Китая через посещения его главных достопремичательностей  ', 9500, 19, 18, CAST(N'2022-03-30' AS Date), CAST(N'2022-04-06' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (19, N'Марокко: ароматы и краски пустыни', N'Впечатляющее путешествие по марокканским пустыням ', 10500, 20, 19, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-18' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (20, N'Бразилия: карнавалы и водопады ', N'Участие в бразильском карнавале и посещение водопадов ', 12500, 12, 20, CAST(N'2022-06-22' AS Date), CAST(N'2022-06-29' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (21, N'Греция: аутичные руины острова', N'Открытие древних цивилизаций Греции', 11500, 22, 21, CAST(N'2022-08-03' AS Date), CAST(N'2022-08-10' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (22, N'Исландия: ледники и гейзеры ', N'Путешествие по уникальным природным объектам Исладнии', 13500, 23, 22, CAST(N'2022-09-14' AS Date), CAST(N'2022-09-21' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (23, N'Вьетнам: экзотика Юго-Восточной Азии', N'Окунитесь в атмосферу Вьетнама', 8500, 24, 23, CAST(N'2022-10-26' AS Date), CAST(N'2022-11-02' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (24, N'Новая Зеландия: природа и приключения ', N'Активный отдых в новой Зеландии ', 14500, 25, 24, CAST(N'2022-12-07' AS Date), CAST(N'2022-12-14' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (25, N'Норвегия: северное сияние и ледяные отели ', N'Наблюдение за северным сиянием и проживание в уникальном отеле', 15500, 26, 25, CAST(N'2023-01-18' AS Date), CAST(N'2022-01-25' AS Date))
INSERT [dbo].[Tour] ([id_tour], [title], [description], [price], [available_places], [tour_id], [start_date], [end_date]) VALUES (26, N'test1', N'test', 1, 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tour] OFF
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Air_Ticket] FOREIGN KEY([id_air_ticket])
REFERENCES [dbo].[Air_Ticket] ([id_air_ticket])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Air_Ticket]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Client] FOREIGN KEY([id_client])
REFERENCES [dbo].[Client] ([id_client])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Client]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Hotel_Name] FOREIGN KEY([id_hotel_room])
REFERENCES [dbo].[Hotel_Name] ([id_hotel_room])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Hotel_Name]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Payment] FOREIGN KEY([id_payment])
REFERENCES [dbo].[Payment] ([id_payment])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Payment]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Tour] FOREIGN KEY([id_tour])
REFERENCES [dbo].[Tour] ([id_tour])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Tour]
GO
