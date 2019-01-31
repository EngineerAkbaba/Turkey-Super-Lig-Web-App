USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spInsertReferee]    Script Date: 21.12.2014 00:19:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spInsertFootballer] @LisansNo int, @Adi nvarchar(50), @Soyadi nvarchar(50), @DogumYeri nvarchar(50), @DogumTarihi date, @FutbolcuTakimNo int, @SozlesmeBaslangýcTarihi date, @SozlesmeBitisTarihi date
as
begin
	insert into FUTBOLCU values(@LisansNo, @Adi, @Soyadi, @DogumYeri, @DogumTarihi, @FutbolcuTakimNo, @SozlesmeBaslangýcTarihi, @SozlesmeBitisTarihi);
end
