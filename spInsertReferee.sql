USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spInsertReferee]    Script Date: 12.12.2014 13:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[spInsertReferee] @LisansNo int, @LisansAdi nvarchar(50), @HakemAdi nvarchar(50), @HakemSoyadi nvarchar(50), @DogumTarihi date, @Bolge nvarchar(50)
as
begin
	insert into HAKEM values(@LisansNo, @LisansAdi, @HakemAdi, @HakemSoyadi, @DogumTarihi, @Bolge);
end

