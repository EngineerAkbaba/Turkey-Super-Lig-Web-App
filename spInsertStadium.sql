USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spInsertStadium]    Script Date: 22.12.2014 15:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spInsertStadium] @Adi nvarchar(50), @SeyirciKapasitesi int, @BulunduguSehir nvarchar(50), @StadyumTakimNo int
as
begin
	insert into STADYUM values(@Adi, @SeyirciKapasitesi, @BulunduguSehir, @StadyumTakimNo)
end
