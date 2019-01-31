USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateReferee]    Script Date: 20.12.2014 19:29:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[spUpdateReferee] @LisansNo int, @LisansAdi nvarchar(50), @Adi nvarchar(50), @Soyadi nvarchar(50), @DogumTarihi date, @Bolge nvarchar(50)
as
	UPDATE [HAKEM] 
	SET [LisansNo] = @LisansNo, [LisansAdi] = @LisansAdi, [Adi] = @Adi, [Soyadi] = @SoyAdi, [DogumTarihi] = @DogumTarihi, [Bolge] = @Bolge
	WHERE [LisansNo] = @LisansNo
