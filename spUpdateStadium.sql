USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateStadium]    Script Date: 22.12.2014 15:37:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spUpdateStadium] @Adi nvarchar(50), @SeyirciKapasitesi int, @BulunduguSehir nvarchar(50), @StadyumTakimNo int
as
	UPDATE STADYUM 
	SET [Adi] = @Adi, [SeyirciKapasitesi] = @SeyirciKapasitesi, [BulunduguSehir] = @BulunduguSehir, [StadyumTakimNo] = @StadyumTakimNo
	WHERE [Adi] = @Adi
