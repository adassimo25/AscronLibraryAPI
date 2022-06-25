﻿CREATE DATABASE LibraryDatabase
GO

USE [LibraryDatabase]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Authors](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[DateOfBirth] [datetime2](7) NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Books](
	[Id] [uniqueidentifier] NOT NULL,
	[CurrentStatusId] [uniqueidentifier] NULL,
	[Title] [nvarchar](max) NULL,
	[Language] [nvarchar](50) NULL,
	[PublicationDate] [datetime2](7) NULL,
	[Genre] [nvarchar](max) NULL,
	[PageNumber] [int] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BookAuthor](
	[BookId] [uniqueidentifier] NOT NULL,
	[AuthorId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BookAuthor]  WITH CHECK ADD FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([Id])
GO

ALTER TABLE [dbo].[BookAuthor]  WITH CHECK ADD FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[StatusHistory](
	[Id] [uniqueidentifier] NOT NULL,
	[BookId] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[Status] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[StatusHistory]  WITH CHECK ADD FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
GO


insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('988620ef-d7cd-4d66-b37e-927f369d0047', 'Staffard', 'Haselden', '2020-10-18 11:01:15');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('dab7110e-16a1-4681-a4be-a0608bbb19c3', null, 'Artinstall', null);
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('9c407ab2-b87b-4828-877f-458cdb0f841f', 'Hakim', 'Fishlee', '2021-05-10 23:33:35');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('36cc3cb2-c06a-495b-b45d-a7b0450b44dd', 'Victoria', 'Itzhaiek', '2021-02-14 10:26:46');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('0f9666eb-2d78-4324-900b-cf0c5f6e2ae1', 'Alana', 'Loudon', null);
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('05738d8d-9bbf-4545-a384-27e78afa77ef', 'Biron', 'De Coursey', '2020-09-27 15:40:22');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('21ad133e-8b6c-4e84-ba54-723b425ce08f', 'Jsandye', 'Osgerby', '2020-11-16 11:42:03');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('74bce940-edcf-411e-a217-7398cc611fcb', 'Bernadene', 'Harrow', '2020-09-17 23:57:38');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('8ff3e101-e756-4544-b789-aaadb282ebc5', 'Jedd', null, '2021-04-29 04:19:20');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('981b1e11-cdc5-482f-9f58-727b16234b00', null, 'Laurand', '2021-04-16 21:51:49');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('86372fcc-cda9-44cd-9cd3-b93462066d31', null, 'Trump', '2020-09-24 14:58:43');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('49cbbe7c-10e6-4e3b-a524-c11bd6842bff', 'Nev', 'Beneze', '2020-11-21 07:22:03');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('54dd8ffe-e12d-484c-baa3-eda36eb32428', null, 'Digan', '2020-06-23 03:13:09');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('f8542a6f-dfd7-4a68-b085-7b08c0493c85', 'Charlean', 'Shitliff', '2021-01-12 08:43:14');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('f77ac2d8-8b79-441f-9e56-1eb7f2c186fd', 'Carol-jean', 'Witherow', '2021-02-05 06:58:45');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('bc3e71a3-00a0-4bd3-b77e-8cf33e6197d6', 'Georas', 'Kettlesing', '2020-08-21 00:42:30');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('9ac3ba02-dae6-4e1e-8772-fbf33f922e44', 'Grantley', 'Rouby', '2021-01-15 02:34:08');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('b5dc48ad-0b9e-4da2-ad24-ab44c57a0641', 'Dirk', 'Skeats', '2020-12-27 17:54:39');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('db3406f6-e2cd-4258-89ae-6987e7880813', 'Aldus', 'Eastcourt', '2020-07-02 04:17:12');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('eaa0abb6-e472-4b1a-b01c-6ceb83518227', 'Alic', 'Dorran', null);
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('94173997-32b6-4031-9b73-f0c976b6d923', 'Catherine', 'Bebb', null);
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('fed78541-7a1f-40ee-9127-8ccd1870cc0b', null, 'Weale', '2020-07-29 13:16:17');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('dafc9210-76a1-4033-b720-c3df4f4d3cfa', 'May', 'Condy', '2020-09-16 22:05:39');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('03e3a68c-5ce9-4062-b0a0-575d97134bc2', 'Hilario', 'Roubert', '2021-03-05 04:57:28');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('d3d18f3d-e42d-4ee2-a089-862b750adf47', 'Bunny', 'Droghan', '2021-04-12 10:56:12');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('23800053-faf9-430e-9b71-660472daa172', 'Zed', 'Kesterton', '2020-10-05 16:04:48');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('3796a122-15ed-478f-9558-7d90332457f4', 'Chuck', null, null);
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('ce30fbb4-4e49-4fc1-99ac-004e9a8fa280', 'Kennith', 'Knightley', '2020-09-07 12:09:06');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('b66ac47c-7a99-4db1-bf15-25d4c32fd6e0', 'Cammy', 'Tunbridge', '2021-05-20 17:31:19');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('63f21ec7-6380-435e-b906-24b424b1912d', 'Merle', 'De Lascy', '2020-08-01 02:41:06');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('792b483e-df64-45c0-9207-c2048e717690', 'Reuben', 'Gower', '2021-03-05 18:27:57');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('b349e9d5-a2af-48eb-b633-0ce84c893068', 'Perice', 'Newnham', '2020-07-24 19:29:22');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('41715db8-162c-43b3-987b-ba9b710f306d', 'Costanza', 'Cabrales', '2020-10-12 09:53:20');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('28760d55-23c9-4caf-ac08-98815ba42883', 'Davida', 'Slimon', '2020-10-14 18:59:35');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('eb46b2f9-74c5-4c3e-a9e4-3071813a3543', null, 'Titcomb', '2020-09-20 15:12:32');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('30d58a1f-582c-42bb-923b-237e63714127', 'Ericka', 'Petruk', '2021-03-21 05:33:01');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('fab63290-10d6-446f-9ec1-76f6591338d3', 'Standford', 'Dixcee', '2020-10-02 00:15:48');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('2f351574-5785-4ae7-8bba-931c3d4811f6', 'Galvin', 'Stiffkins', '2020-11-23 12:28:16');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('99bb4884-acbd-4356-9034-f3a2f82262df', null, 'Klimecki', '2020-11-02 04:58:49');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('e39f88c9-8e90-4b2d-a79f-b46a6d2e6a83', 'Aharon', 'Setter', '2020-07-27 10:59:52');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('1ca418ff-9f61-4fca-94f0-d95dbec179f0', 'Mil', 'Rigmand', '2021-03-30 12:07:35');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('3bbd3eee-6511-4eee-b6e7-3f03ec3b9b57', 'Cherish', 'Lentsch', '2021-04-16 20:49:44');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('5d58d4f5-8834-4916-9668-3bf419fc3b17', 'Geri', 'Adie', '2020-10-24 14:30:02');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('66857678-490f-4299-827f-a28cfec50079', 'Alena', 'Kleehuhler', '2020-10-26 23:02:04');
insert into Authors (Id, FirstName, LastName, DateOfBirth) values ('d7432e4a-7c68-4c7d-be04-01b1becdbf1e', null, 'Wolfendale', null);

insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('202191d7-d4c5-41f1-8d3d-bab7dbcb45b0', '03f524ad-a68e-40b4-8248-5927eeddbf5c', 'Speak', 'Dzongkha', '2021-04-17 07:47:35', 'Politics', 489);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('3bd69a96-a34b-4b60-b32f-64fccad77d6f', '8d8673a8-daeb-4688-a14e-6f26d81571e6', 'Devil to Pay!, The', 'Swati', '2021-04-10 05:16:49', 'Food', 154);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('c5fbd04f-5a48-44ad-9eb6-b0f0c60ea793', 'e66c19cc-d6f4-4da8-b93b-552f2df5a93c', null, 'Moldovan', '2020-06-04 07:20:00', 'Politics', 482);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('2b7b71d6-80b8-424c-800b-bcf3fe16f820', '480dae29-7506-4ede-8049-aa1fee862ac4', 'Act of Violence', 'French', '2020-03-31 21:06:03', 'ScienceFiction', 421);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('aef11e2b-5c23-4fef-ade9-d4de6d549626', '04d4c700-a331-4b9f-99f6-9a1f4d90b360', 'Dust in the Wind (Lian lian feng chen)', 'Tamil', '2020-03-29 17:24:43', 'History', 133);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('4cb4d150-fc3b-4f8f-a476-1a327a2e0aef', '6c9a1702-41e1-47fc-8fdd-688dad3be386', 'Goldengirl', 'Finnish', '2020-06-11 23:29:14', 'Politics', 163);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('cb85a842-cd31-4af5-b57a-60583a3819c1', 'ea152d7e-fbfd-4ef0-9ccb-38067eb56e00', 'Glorious Technicolor', 'Somali', '2020-09-14 21:41:18', 'History', 402);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('cb86e0a0-076e-4de5-83de-b9cf3fd6c00c', '187f759f-2344-49f3-b644-117131ad8d2e', 'Sailor of the King', 'Thai', '2020-09-17 16:51:42', 'History', 225);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('67b848f5-607d-403f-8b52-b10b0b410c6a', '19d4110e-90ea-456b-9e4f-ad38786fc6ac', 'Breaking News (Daai si gin)', null, null, null, null);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('2ab5ecce-ff0a-41b8-b49d-5ba3de285c42', 'b6f7f5a1-5bf6-4f14-8649-5bc9b885e8fc', 'Hercules and the Amazon Women', 'French', '2020-11-08 04:50:53', 'ScienceFiction', 140);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('aa594291-c857-49bc-9432-298cbd3aa436', '25fafd71-3415-42a1-a418-8912e741607e', 'Christmas Carol, A (Scrooge)', 'Amharic', '2021-03-13 04:54:09', 'CrimeThriller', 132);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('02f30fd7-6365-4580-9284-7e55a5e1efad', '02b6c66b-afa1-4012-bb94-596d2eeb8ecd', 'Floods of Fear', 'Azeri', '2021-06-09 18:36:42', 'History', 210);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('bc8ab4f1-9774-4522-b081-489fa690d920', 'be6789bc-8de3-4987-9066-6038c18bd635', 'Craig Ferguson: Does This Need to Be Said?', 'Hungarian', '2021-04-22 07:43:53', 'ScienceFiction', 459);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('24aa41fb-9277-4524-99f9-22a27ad3c4c7', 'f7e6ffa3-ddc4-48b2-8e93-01a9cc0fbf54', 'Mister Buddwing', 'Haitian Creole', '2021-01-02 23:27:29', 'ScienceFiction', 236);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('8eeaabe7-f58d-4739-a9d2-3cbca3c0bee1', '28e11b74-dccf-4ace-9624-51b7efaa5718', 'Morgan Pålsson - världsreporter', 'English', '2020-04-15 00:42:48', 'CrimeThriller', 472);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('ff8e4658-9499-41b9-a695-c8a89be19002', '9f52e4b2-d5a5-400f-baca-a1d93b07024e', 'Some Girl(s)', 'Gagauz', '2021-05-26 23:17:22', 'CrimeThriller', 407);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('329e4612-21ee-46ba-adf2-7a8a3b0114d1', '1a674534-7d30-4d86-89c3-af636a729547', 'Terry Pratchett: Choosing to Die', 'Amharic', '2020-07-09 22:44:52', 'History', 472);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('dc365131-9d6e-4570-a743-6829ef5ffd58', '6b5bf578-b5ff-499f-b53b-6c12eead1fdf', 'Light Years Away', 'Latvian', '2021-02-12 09:57:54', 'ScienceFiction', 487);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('c020dc6c-2f74-4752-ac10-702cf0679541', '39dbf270-552a-4ddc-807f-90200fea3d08', null, 'Lao', '2020-07-12 23:15:02', 'ScienceFiction', 427);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('3f3ff8d5-b447-475f-a08c-039f5e838c3e', 'cde928a2-a8c6-4b1f-92fd-1c20783c23f7', 'Daddy (Tato)', null, null, null, null);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('c1743884-4076-4a08-a4b1-00e5c30fd191', '00405f65-50d0-4cf9-988d-12c32f2f4b1f', 'Leopard Man, The', 'Kazakh', '2020-08-23 14:25:13', 'Food', 445);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('82773316-4988-43cd-817d-b98354014b99', '99c34f70-e50e-40fc-8b2b-b2f6dc1c5691', null, 'Punjabi', '2020-07-15 11:07:39', 'Politics', 251);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('e337c6d5-47a7-4c47-b5e6-0e4f36b9cbad', '8a623c6f-7bd0-4824-9d92-4885de560524', 'Battleship Potemkin', 'Croatian', '2020-07-21 15:03:55', 'Politics', 266);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('9d996f16-8ba3-49c9-bf1a-7e90345dedc4', '5e0033b1-ba12-415e-a766-3e23b8b14d39', 'Arrested Development Documentary Project, The', 'Tsonga', '2020-07-27 03:35:15', 'Food', 131);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('0f252bca-59b2-4331-900a-d1070a7ae0fa', 'c3b8f078-f308-4615-98cc-1640745a7c11', 'Ulzana''s Raid', 'Aymara', '2021-03-25 14:03:54', 'History', 167);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('e73310f7-7bf7-406d-9c86-63609fa5f064', '8eab6ac3-b349-41fc-a23a-7332cd316bbf', 'Uncle Buck', 'Swedish', '2020-07-03 16:46:05', 'CrimeThriller', 134);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('c8f94498-a37f-4187-98c9-5070b008ee3f', 'cdc3bb7a-8a2e-405d-9dad-29bb9da10b96', 'Hardcore', 'New Zealand Sign Language', '2021-03-22 18:21:55', 'Politics', 453);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('60359540-1727-4bff-b6ab-5ce7fed7419e', 'fb9586ac-16ed-459e-9365-2857e0717c6f', 'Bohemian Eyes (Boheemi elää - Matti Pellonpää)', 'Tetum', '2020-05-18 06:21:02', 'CrimeThriller', 478);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('3d398f65-4bf3-425e-a9fe-7f713ac90f10', '5ac0f2d3-c49f-4230-b1c8-2bc2601e9ee1', 'Waiting for Happiness (Heremakono)', 'Dutch', '2021-04-29 01:30:07', 'CrimeThriller', 133);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('5191ef3f-7f7c-406f-925d-6d91eb9f7ab5', '40ae526b-189a-45fb-82e8-f2566d1b3800', 'Pajama Game, The', 'Malagasy', '2021-04-24 09:37:28', 'ScienceFiction', 241);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('3a76d07c-d8d0-4b4c-98f5-da44aeace31e', '753364dc-da9e-4d64-be7e-75fd0c2e7742', 'Without Bias (a.k.a. Len Bias)', null, null, null, null);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('e8b81de7-48f6-4796-8dc2-ce684b1f83bc', '6f3cd231-9435-408f-be1c-f0a465203502', 'Dancer Upstairs, The', 'Estonian', '2020-08-20 08:06:07', 'ScienceFiction', 393);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('ed9aefd9-ae18-4950-9366-40ffa9936d0a', 'eb44bb70-822f-49d1-89cf-9ff310fd156d', 'The Underneath', 'Tamil', '2020-10-13 13:19:52', 'Memoir', 183);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('a90799cc-c26a-4305-88d0-36fa6c16a52b', 'c8e18a9e-669e-478f-9bd1-c861ceeed41d', 'The Case of the Curious Bride', 'Yiddish', '2021-02-11 08:00:31', 'History', 186);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('ba68848c-538d-437d-81a2-58b9eae9e110', 'c3aa10ae-cddd-4a7c-8997-5a58031b02d8', 'Hungry Hill', 'Assamese', '2020-10-17 17:55:21', 'Politics', 241);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('b67a2f3f-d373-43ee-8153-76ed0f46bea8', 'fd93eb7b-bd32-483e-a843-7336d08ba1e1', '2LDK', 'Khmer', '2020-05-24 18:40:58', 'Food', 204);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('4f02a05c-5e0c-4d57-8a51-1a5f7a8e351d', 'cac91e4d-e93c-45f9-8973-169dd5145317', 'Down by Law', 'Gujarati', '2021-04-02 11:40:59', 'Politics', 309);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('aa23a80d-5bf2-4a5e-b931-a80ad670b4e8', 'bf05a3d8-5aa2-4f29-849f-ac829bd0cde2', 'Hotel Chevalier (Part 1 of ''The Darjeeling Limited'')', 'Dhivehi', '2021-04-22 23:06:45', 'Politics', 180);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('d89e5021-9e45-467a-ad54-fe7c6bf6f0eb', '34452753-b0ed-433d-abe1-d53444322877', 'Playmobil: The Secret of Pirate Island', 'Japanese', '2020-11-24 23:23:58', 'CrimeThriller', 190);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('0c0a6dab-c42a-4aba-a9f0-f38960b1e257', '85258b4e-c61f-4234-bd59-eeff1a4d02ef', 'Robin Hood: Prince of Thieves', 'Malagasy', '2021-01-21 01:15:01', 'Politics', 400);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('b827c276-0fa3-49cd-b9e3-c84a0b78ffb7', 'bd8e7041-2f74-46a4-bd82-f24fc7247f73', 'The Man in Possession', 'Tamil', '2021-04-15 01:24:13', 'History', 180);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('1b16ba20-ce16-4506-99c7-bcaaca0cef23', '8a9856de-b225-47dd-bae5-e1d034b11f51', 'Chiedimi se sono felice', 'Korean', '2021-03-31 12:04:23', 'History', 331);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('31632933-ab58-4051-9809-096395010a1e', '481cc614-31cb-47f6-91a3-d793f2067fde', 'Phyllis and Harold', 'Kurdish', '2020-08-15 09:53:07', 'History', 265);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('d71bc366-e676-4f25-be82-f24d69114273', '9906acf5-f13d-41ec-a11d-b85e39aad29b', 'Stephen Tobolowsky''s Birthday Party', 'Kashmiri', '2020-08-08 01:10:50', 'Food', 134);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('78c677f9-6d25-4d2d-a9b3-633c8f088b56', '8dd1108c-b5f1-4cde-8246-b5ec030969bd', 'More Than a Game', 'Azeri', '2020-09-13 15:17:10', 'History', 185);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('acd334f1-5750-4134-b473-9bcc6542ac01', '2d8ffeff-6615-4a9d-af84-98d1dac9ed0a', 'The Longest Week', 'Finnish', '2020-12-17 03:44:14', 'Food', 485);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('d2a9fb16-162b-4bb6-8efb-1dd1109d0369', '3ff888bb-7b55-4b18-91a0-a8f469da302e', 'Concursante', 'Italian', '2020-08-05 02:52:13', 'CrimeThriller', 296);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('a835af1a-9646-4b74-8f2a-f35d6a697209', '66cdd525-626b-4047-83b1-910a7fffeb6e', 'Ali Baba Goes to Town', 'Hebrew', '2021-02-20 15:12:08', 'ScienceFiction', 476);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('148904fa-2db4-4795-979e-c11a192f15ba', 'f378a647-2d3a-4c22-ac31-5631fde434bf', 'Odd Man Out', 'Burmese', '2020-06-26 19:51:51', 'Memoir', 180);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('96facc7a-1477-474e-a4fb-577d875f2356', '23c2ddb0-5186-4587-8742-a55314481fb1', 'Fortune, The', 'Portuguese', '2020-03-27 13:19:11', 'ScienceFiction', 403);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('150adc68-a3f7-4ca8-b7fb-8f8eda8d2f31', '15a03d1d-f480-442e-b91b-46a2c9fee9b4', null, 'Telugu', '2021-04-05 11:08:46', 'Food', 362);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('1ce1ccaa-4283-44be-a52a-448f36b6c844', '17b7e541-4dc9-4cd6-ab90-b0d5a6cfddae', 'Absolute Giganten', 'Italian', '2020-04-26 14:41:42', 'ScienceFiction', 425);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('3c0accf6-dda8-42c6-9153-913887a11e97', 'ad460719-79e6-47ba-9ee6-1cc149bdff30', 'All Dogs Go to Heaven', 'Indonesian', '2021-04-30 16:25:17', 'CrimeThriller', 489);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('645e2e10-b3a0-4cad-b1b1-41316c156666', '3a6197c6-15c2-4f2a-bd7a-1eace0127466', 'Confessor, The (a.k.a. The Good Shepherd)', 'Tsonga', '2020-11-29 02:42:22', 'Politics', 205);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('e9fc147a-46aa-4765-9c25-c73559390d3f', '24281ed7-a3c6-4c57-8bc5-e8af46da9436', null, 'Gujarati', '2020-09-03 07:06:39', 'Memoir', 319);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('3e0b6559-1d96-4b59-85e0-7fbd97a542f5', 'b3c293a4-88c2-4275-a3d9-7439a429c137', 'Feast', 'Armenian', '2021-06-07 00:59:31', 'Memoir', 478);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('f72a4617-3cc4-44aa-a67f-f4e91e914fc3', '20dd64e9-11b8-4c43-8366-c26251b8cc1f', 'Animal Kingdom', 'Danish', '2021-01-16 19:19:35', 'CrimeThriller', 364);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('e699adc8-1544-417d-a829-eca9c0119f9d', 'bdb0501b-545a-4746-bc50-2f4fa7ee35a0', 'Silence of the Sea, The (Le silence de la mer)', 'Lithuanian', '2021-01-07 07:20:42', 'Politics', 306);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('6c695030-712b-45b2-938c-56c2aaea5e7a', 'fb59dae7-cd8c-4a95-b8fe-7296d3b91119', 'Miser, The (L''avare)', 'Hiri Motu', '2020-06-19 20:36:00', 'Politics', 223);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('2ce6a22f-3048-40d8-bc9e-22ec9d42496a', '0f1a30e8-20e2-4245-9584-74dfff74d75d', 'Candidate, The (Kandidaten)', 'Hebrew', '2020-11-21 20:54:13', 'ScienceFiction', 476);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('8d472cde-a7c5-491a-a4a6-e07927810da9', '7385c937-6ab1-4331-bdc8-7e7b62478e41', 'Wrong Turn at Tahoe', 'Swahili', '2020-04-10 17:35:17', 'Memoir', 408);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('3e377d94-37c9-402c-bab4-946d4ef3f120', 'cc6530ce-4c7d-48a3-931d-cac549266ca6', 'Last Man on Earth, The (Ultimo uomo della Terra, L'')', 'Hebrew', '2020-08-22 01:57:53', 'History', 197);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('70fab926-91e2-4759-a88b-a98508ef00c0', '0b23c4f4-09d5-43ce-b3fe-4a9a44285887', 'Christmas Carol, A', 'Greek', '2020-06-13 13:33:28', 'Memoir', 451);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('56baa7d0-9bfd-4dd5-8d17-0d17d28a0b01', '51c0c766-1b03-45cf-b02a-5f5d15d753d8', 'For Your Eyes Only', 'Arabic', '2020-03-22 21:28:38', 'History', 255);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('a62e00f4-943e-4b87-b107-19e59ab89acb', '23d5b39e-0537-42ef-bd8f-e4f3f1281b60', null, 'Dhivehi', '2021-02-14 18:22:22', 'Memoir', 345);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('07686493-c8d3-4b91-bca0-afa9ce89efd5', '7a5f2ca4-a55c-4b53-a8a9-71365d79fd09', 'Oak, The (Balanta)', 'Kyrgyz', '2020-12-03 14:49:28', 'CrimeThriller', 496);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('5ecdd3d9-0a39-4822-a6e5-fa8e284cd9c2', 'ef2a8896-7c3f-4e0c-9c8e-7cbe025e2e13', 'Beck - Öga för öga', 'Khmer', '2020-11-12 02:26:45', 'CrimeThriller', 315);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('3898f0c9-a974-41bd-9528-4ac532950f7b', '8928fa93-d098-4424-96cf-3ddca8b16c07', 'Ghajini', 'Latvian', '2020-10-02 06:19:58', 'ScienceFiction', 350);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('7b9735c0-69f5-4273-b3de-8d254c952e24', 'f9c4829f-4a19-42d5-a3ff-4468cb113088', 'The Bloodstained Butterfly', 'Nepali', '2020-10-15 16:46:56', 'History', 194);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('81293b9a-07bc-4991-bd5f-5d423d6f39c3', '6a162cde-0f78-4c3a-9515-d6a905c1877a', 'Nobody Lives Forever', 'Czech', '2021-02-23 03:29:55', 'CrimeThriller', 195);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('91a30b84-bd9e-4166-9f4a-4dcc3454e6a0', '5fc1eca9-6219-4be9-8d46-c77240b4a77b', 'Villain, The', 'Hindi', '2020-04-02 12:05:37', 'Food', 466);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('a157be66-3dd9-49c5-9c7d-e00ad042fde3', 'fe7225a9-e94d-4b01-b24d-ba776f4073d2', '2 Days in Paris', 'Kyrgyz', '2020-06-23 11:27:15', 'CrimeThriller', 312);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('03107ad3-e4a3-4827-9af0-bc35e77761e0', '1d96ba30-b4d6-4159-a882-9e79291633ff', 'Substitute, The (Vikaren)', 'Nepali', '2020-12-04 19:34:56', 'Memoir', 278);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('c9d7e0dd-32eb-4b73-b4d2-607701e366ce', '9e810287-1aef-432e-ad9b-4f7306a45511', 'Hamlet Goes Business (Hamlet liikemaailmassa)', 'Nepali', '2020-05-17 03:26:15', 'CrimeThriller', 210);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('8e8e7582-5333-4faa-843b-2d5d50156db9', 'b5562831-7489-41ec-adf7-ca9c6e6f5877', 'Distant Drums', null, null, null, null);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('6860bc43-845a-486e-b72f-14f5fbdbdc1f', '48289044-f5a0-462b-88e4-21c5af58faa2', 'Lord of the Rings: The Two Towers, The', 'Afrikaans', '2020-04-21 16:35:24', 'Politics', 453);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('d35904b2-b1cb-4303-8685-2f81f13d8466', '30fa43ca-6f29-45cb-8566-c8ea1782fd50', 'Nadja', 'Telugu', '2020-04-11 02:40:42', 'Politics', 354);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('a574cccb-658a-4138-8042-161c3a3f7248', 'd2d40f0e-a2a0-43f4-8232-d3af903a007d', 'Mystery Street', 'Irish Gaelic', '2020-10-18 09:08:39', 'Politics', 261);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('78d1cc5d-01bf-40c6-8e60-bba322cacd40', '22701337-3d5c-43b5-83db-e453a45ac0bd', 'Shakedown', 'Armenian', '2020-03-25 07:33:12', 'History', 135);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('519269e9-cfd7-4d33-b16c-1962963e4084', '62ac553c-5194-4368-8611-5a6f6a1280cc', 'Eva', 'Kannada', '2020-05-23 12:15:02', 'ScienceFiction', 495);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('924921d8-7499-453b-a3cf-50ded609f355', '8201e55d-039d-438c-82f4-81a06569ef72', 'Science of Sleep, The (La science des rêves)', 'Malay', '2020-08-26 19:32:51', 'CrimeThriller', 380);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('7e5d1044-7ca0-4996-9e14-549113ba656a', '6a7c06c4-3b19-41a7-a62c-091e8f988870', 'Simple-Minded Murder, The (Enfaldige mördaren, Den)', 'Luxembourgish', '2021-05-29 09:05:50', 'CrimeThriller', 472);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('fe27ec7f-8952-4905-93c1-c956659880a3', 'ac523eb9-0cee-46ed-becc-6b130f914a4f', 'Upside Down: The Creation Records Story', 'Montenegrin', '2020-12-17 00:53:49', 'Memoir', 205);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('332458df-47c8-45e6-a0d3-0525fd45d72b', '19a8344e-9d86-4b75-bf44-59f69b064a88', 'Night Train To Lisbon', 'Tswana', '2021-01-29 00:06:40', 'History', 273);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('a40468cb-ce64-49e1-b18f-edd90bec1c17', 'e87f0f4c-cb0c-4e6f-8e0d-0b38a37c4d10', 'In Your Hands', 'New Zealand Sign Language', '2020-07-09 20:43:45', 'CrimeThriller', 254);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('31b87961-2c05-439c-ac81-70a6cf4aa3d5', '55716660-2994-4576-8685-155be471d59a', 'Fury, The', 'German', '2021-01-28 15:35:06', 'Memoir', 488);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('e95c253e-11d3-49f4-bb6f-8026f4ab3eec', '6f173fb6-ff4b-41fe-a66c-ef496bd3e19c', 'G.I. Joe: Retaliation', 'Tswana', '2021-06-01 01:16:48', 'Politics', 482);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('9674ed1e-f695-4fb8-962d-8a1a20f76d3f', 'ece51ac2-120f-4ac4-bfd0-ce101c3d8bc1', 'A Matador''s Mistress', 'Thai', '2020-12-28 08:17:41', 'Memoir', 337);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('61f3e98e-f8f5-46d8-b17a-c638978d9c8b', 'a7b9ee80-d039-40bb-8775-7d33bc2be9f6', 'Dog Tags', 'Aymara', '2020-04-21 10:43:57', 'CrimeThriller', 474);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('38c7c1c9-c15f-4de4-a1fb-a9c32100d677', 'b25016a6-7254-4e25-a7b6-1308d59faf6f', 'I Am Divine', 'Spanish', '2020-04-08 17:09:28', 'ScienceFiction', 488);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('411067f6-180a-4dd8-a1f9-cb871eb1862e', 'aa28a138-962c-4c1d-9004-7c29f0f5e9bd', 'Savage Messiah', 'Zulu', '2020-07-29 03:43:51', 'History', 295);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('1cee93f5-2c32-45b1-81c9-7acf96b1d37f', '785f4590-d3b8-4c51-9f11-30fb452e00eb', 'Winter War (Talvisota)', 'Armenian', '2021-04-27 14:18:01', 'CrimeThriller', 308);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('3e1297ef-2175-424a-a10b-9df384e6ff42', 'f66fffe1-06e5-45dd-a9bb-83b51da8e6ee', 'Amelia', 'Thai', '2020-09-10 01:08:43', 'Food', 393);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('19d43a07-b788-4dc5-a1ac-4a86200b5503', 'fbd206d5-d761-4306-a6bb-78f06856981f', 'Calling, The', 'Finnish', '2020-12-31 21:39:39', 'ScienceFiction', 148);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('fa282337-7a86-49c0-9b06-b0f6ee9f95d8', '3c52a6e2-3129-41b6-934f-63d8e4f2485e', 'Alex and Emma', 'Norwegian', '2020-08-09 00:53:07', 'CrimeThriller', 390);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('9a072bf9-f904-4f25-99b8-d8eb1a95835a', '3fdb10b7-edf3-45f6-933e-dd31c54b0529', 'Hedgehog in the Fog', 'Kazakh', '2020-06-29 03:56:50', 'ScienceFiction', 412);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('6e97da89-ee1c-4055-a173-7971daf11745', '0c22a705-85a1-4690-8103-0f25ec8320b9', 'Dressed to Kill', 'Bislama', '2021-02-12 22:44:36', 'Memoir', 227);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('6c5a38ff-069b-4a10-aa61-3847650d8b30', '07780344-18f7-4d79-9277-358586318c44', 'Dillinger', 'Bislama', '2020-08-26 13:13:25', 'Memoir', 358);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('3706a711-8eca-4fa8-994a-c456c85ff079', 'a0107941-4ffb-46dc-9fec-a27380854b8c', 'Charms for the Easy Life', 'English', '2021-01-16 23:14:03', 'ScienceFiction', 259);
insert into Books (Id, CurrentStatusId, Title, [Language], PublicationDate, Genre, PageNumber) values ('264c3ae3-5873-43df-9d02-af6e6b62983f', 'd26cbb3d-a2be-4259-8a13-58b745824c86', 'Naked Edge, The', 'West Frisian', '2021-02-23 06:56:19', 'Politics', 162);
GO

INSERT INTO StatusHistory 
SELECT CurrentStatusId, Id, GETDATE(), 'InStock' FROM Books

insert into BookAuthor (BookId, AuthorId) values ('264c3ae3-5873-43df-9d02-af6e6b62983f', 'f8542a6f-dfd7-4a68-b085-7b08c0493c85')
insert into BookAuthor (BookId, AuthorId) values ('6e97da89-ee1c-4055-a173-7971daf11745', 'f77ac2d8-8b79-441f-9e56-1eb7f2c186fd')
insert into BookAuthor (BookId, AuthorId) values ('3e1297ef-2175-424a-a10b-9df384e6ff42', 'bc3e71a3-00a0-4bd3-b77e-8cf33e6197d6')
insert into BookAuthor (BookId, AuthorId) values ('fe27ec7f-8952-4905-93c1-c956659880a3', '9ac3ba02-dae6-4e1e-8772-fbf33f922e44')
insert into BookAuthor (BookId, AuthorId) values ('3898f0c9-a974-41bd-9528-4ac532950f7b', 'b5dc48ad-0b9e-4da2-ad24-ab44c57a0641')
insert into BookAuthor (BookId, AuthorId) values ('4f02a05c-5e0c-4d57-8a51-1a5f7a8e351d', 'f77ac2d8-8b79-441f-9e56-1eb7f2c186fd')
insert into BookAuthor (BookId, AuthorId) values ('aa23a80d-5bf2-4a5e-b931-a80ad670b4e8', 'b5dc48ad-0b9e-4da2-ad24-ab44c57a0641')
insert into BookAuthor (BookId, AuthorId) values ('2b7b71d6-80b8-424c-800b-bcf3fe16f820', 'f77ac2d8-8b79-441f-9e56-1eb7f2c186fd')