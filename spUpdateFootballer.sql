USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateReferee]    Script Date: 21.12.2014 00:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spUpdateFootballer] @LisansNo int, @Adi nvarchar(50), @Soyadi nvarchar(50), @DogumYeri nvarchar(50), @DogumTarihi date, @FutbolcuTakimNo int, @SozlesmeBaslangicTarihi date, @SozlesmeBitisTarihi date
as
	UPDATE [FUTBOLCU] 
	SET [LisansNo] = @LisansNo, [Adi] = @Adi, [Soyadi] = @Soyadi, [DogumYeri] = @DogumYeri, [DogumTarihi] = @DogumTarihi, [FutbolcuTakimNo] = @FutbolcuTakimNo, [SozlesmeBaslangicTarihi] = @SozlesmeBaslangicTarihi, [SozlesmeBitisTarihi] = @SozlesmeBitisTarihi
	WHERE [LisansNo] = @LisansNo
