USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spSelectReferee]    Script Date: 20.12.2014 23:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[spSelectReferee]  @LisansNo int, @Adi nvarchar(50), @Soyadi nvarchar(50)
as
select * from HAKEM where LisansNo=@LisansNo OR Soyadi=@Soyadi