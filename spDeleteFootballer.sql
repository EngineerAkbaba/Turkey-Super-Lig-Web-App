USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteReferee]    Script Date: 21.12.2014 00:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spDeleteFootballer] @LisansNo int, @Adi nvarchar(50), @Soyadi nvarchar(50)
as
begin
delete from FUTBOLCU 
where LisansNo=@LisansNo OR Soyadi=@Soyadi
end