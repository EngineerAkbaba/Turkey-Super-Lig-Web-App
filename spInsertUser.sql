USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spInsertReferee]    Script Date: 25.12.2014 10:21:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spInsertUser] @UserName nvarchar(50), @UserSurname nvarchar(50), @Mail nvarchar(50), @Password nvarchar(50), @IsAdmin bit
as
begin
	insert into USER_ADMIN values(@UserName, @UserSurname, @Mail, @Password, @IsAdmin);
end
