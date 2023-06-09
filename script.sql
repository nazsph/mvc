USE [SchoolDatabase]
GO
SET IDENTITY_INSERT [dbo].[StudentTable] ON 

INSERT [dbo].[StudentTable] ([StudentID], [StudentName], [StudentLastName], [StudentPhoto], [StudentCity]) VALUES (1, N'naz', N'sph', NULL, N'ist')
INSERT [dbo].[StudentTable] ([StudentID], [StudentName], [StudentLastName], [StudentPhoto], [StudentCity]) VALUES (2, N'zeynep', N'tonkaz', NULL, N'ankara')
INSERT [dbo].[StudentTable] ([StudentID], [StudentName], [StudentLastName], [StudentPhoto], [StudentCity]) VALUES (3, N'şevval', N'kibar', NULL, N'izmir')
INSERT [dbo].[StudentTable] ([StudentID], [StudentName], [StudentLastName], [StudentPhoto], [StudentCity]) VALUES (4, N'buse', N'şakır', NULL, N'ist')
INSERT [dbo].[StudentTable] ([StudentID], [StudentName], [StudentLastName], [StudentPhoto], [StudentCity]) VALUES (5, N'bahar', N'sakar', NULL, N'ankara')
INSERT [dbo].[StudentTable] ([StudentID], [StudentName], [StudentLastName], [StudentPhoto], [StudentCity]) VALUES (6, N'burçak', N'karakaya', NULL, N'ist')
INSERT [dbo].[StudentTable] ([StudentID], [StudentName], [StudentLastName], [StudentPhoto], [StudentCity]) VALUES (8, N'sıla', N'başer', NULL, N'ankara')
INSERT [dbo].[StudentTable] ([StudentID], [StudentName], [StudentLastName], [StudentPhoto], [StudentCity]) VALUES (9, N'naz', N'sipahi', NULL, N'ist')
INSERT [dbo].[StudentTable] ([StudentID], [StudentName], [StudentLastName], [StudentPhoto], [StudentCity]) VALUES (10, NULL, NULL, NULL, N'izmir')
SET IDENTITY_INSERT [dbo].[StudentTable] OFF
GO
SET IDENTITY_INSERT [dbo].[LectureTable] ON 

INSERT [dbo].[LectureTable] ([LectureID], [LectureName]) VALUES (1, N'math')
INSERT [dbo].[LectureTable] ([LectureID], [LectureName]) VALUES (2, N'literature')
INSERT [dbo].[LectureTable] ([LectureID], [LectureName]) VALUES (3, N'music')
INSERT [dbo].[LectureTable] ([LectureID], [LectureName]) VALUES (4, N'art')
INSERT [dbo].[LectureTable] ([LectureID], [LectureName]) VALUES (5, N'biology')
INSERT [dbo].[LectureTable] ([LectureID], [LectureName]) VALUES (6, N'physic')
INSERT [dbo].[LectureTable] ([LectureID], [LectureName]) VALUES (7, N'chemistry')
SET IDENTITY_INSERT [dbo].[LectureTable] OFF
GO
SET IDENTITY_INSERT [dbo].[NotesTable] ON 

INSERT [dbo].[NotesTable] ([NoteID], [Student], [Lecture], [Exam1], [Exam2], [Exam3], [Average], [Situation]) VALUES (1, 1, 1, 80, 50, NULL, CAST(65.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[NotesTable] ([NoteID], [Student], [Lecture], [Exam1], [Exam2], [Exam3], [Average], [Situation]) VALUES (2, 2, 1, 85, 60, NULL, CAST(72.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[NotesTable] ([NoteID], [Student], [Lecture], [Exam1], [Exam2], [Exam3], [Average], [Situation]) VALUES (3, 3, 1, 96, 40, NULL, CAST(68.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[NotesTable] ([NoteID], [Student], [Lecture], [Exam1], [Exam2], [Exam3], [Average], [Situation]) VALUES (4, 4, 1, 100, 30, NULL, CAST(65.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[NotesTable] ([NoteID], [Student], [Lecture], [Exam1], [Exam2], [Exam3], [Average], [Situation]) VALUES (5, 5, 1, 87, 30, NULL, CAST(58.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[NotesTable] ([NoteID], [Student], [Lecture], [Exam1], [Exam2], [Exam3], [Average], [Situation]) VALUES (6, 1, 2, 55, 44, NULL, CAST(49.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[NotesTable] ([NoteID], [Student], [Lecture], [Exam1], [Exam2], [Exam3], [Average], [Situation]) VALUES (7, 2, 2, 66, 55, NULL, CAST(60.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[NotesTable] ([NoteID], [Student], [Lecture], [Exam1], [Exam2], [Exam3], [Average], [Situation]) VALUES (8, 3, 2, 77, 66, NULL, CAST(71.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[NotesTable] ([NoteID], [Student], [Lecture], [Exam1], [Exam2], [Exam3], [Average], [Situation]) VALUES (9, 4, 2, 88, 77, NULL, CAST(82.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[NotesTable] ([NoteID], [Student], [Lecture], [Exam1], [Exam2], [Exam3], [Average], [Situation]) VALUES (10, 5, 2, 99, 88, NULL, CAST(93.00 AS Decimal(5, 2)), 1)
SET IDENTITY_INSERT [dbo].[NotesTable] OFF
GO
