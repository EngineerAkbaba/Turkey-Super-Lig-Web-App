USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateDirector]    Script Date: 21.12.2014 22:46:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[spUpdateDirector] @Adi nvarchar(50), @Soyadi nvarchar(50), @DogumYeri nvarchar(50), @DogumTarihi date, @SozlesmeBaslangicTarihi date, @SozlesmeBitisTarihi date
as
	UPDATE [TEKNIK_DIREKTOR] 
	SET [Adi] = @Adi, [Soyadi] = @Soyadi, [DogumYeri] = @DogumYeri, [DogumTarihi] = @DogumTarihi, [SozlesmeBaslangicTarihi] = @SozlesmeBaslangicTarihi, [SozlesmeBitisTarihi] = @SozlesmeBitisTarihi
	WHERE [Adi] = @Adi AND [Soyadi] = @Soyadi
