USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteReferee]    Script Date: 20.12.2014 21:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[spDeleteReferee] @LisansNo int, @Adi nvarchar(50), @Soyadi nvarchar(50)
as
begin
delete from HAKEM 
where LisansNo=@LisansNo OR Soyadi=@Soyadi
end