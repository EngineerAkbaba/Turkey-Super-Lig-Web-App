USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateDirector]    Script Date: 21.12.2014 22:46:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spUpdateTeam] @TakimAdi nvarchar(50), @KurulusTarihi date, @TakimRengi nvarchar(50), @SampiyonlukSayisi int
as
	UPDATE TAKIM 
	SET [TakimAdi] = @TakimAdi, [KurulusTarihi] = @KurulusTarihi, [TakimRengi] = @TakimRengi, [SampiyonlukSayisi] = @SampiyonlukSayisi
	WHERE [TakimAdi] = @TakimAdi
