USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spSelectDirector]    Script Date: 25.12.2014 10:26:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spSelectUser]  @Mail nvarchar(50), @UserPassword nvarchar(50)
as
select * from USER_ADMIN where Mail = @Mail AND UserPassword=@UserPassword