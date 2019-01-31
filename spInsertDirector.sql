USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spInsertDirector]    Script Date: 21.12.2014 17:24:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[spInsertDirector] @Adi nvarchar(50), @Soyadi nvarchar(50), @DogumYeri nvarchar(50), @DogumTarihi date, @DirectorTakimNo int, @SozlesmeBaslangicTarihi date, @SozlesmeBitisTarihi date
as
begin
	insert into TEKNIK_DIREKTOR values(@Adi, @Soyadi, @DogumYeri, @DogumTarihi, @DirectorTakimNo, @SozlesmeBaslangicTarihi, @SozlesmeBitisTarihi)
end
