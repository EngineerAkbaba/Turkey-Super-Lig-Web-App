USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spSelectFootballer]    Script Date: 21.12.2014 00:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[spSelectFootballer]  @LisansNo int, @Adi nvarchar(50), @Soyadi nvarchar(50)
as
select * from FUTBOLCU where LisansNo=@LisansNo OR Soyadi=@Soyadi