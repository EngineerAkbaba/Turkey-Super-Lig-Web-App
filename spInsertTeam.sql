USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spInsertDirector]    Script Date: 21.12.2014 22:34:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spInsertTeam] @TakimAdi nvarchar(50), @KurulusTarihi date, @TakimRengi nvarchar(50), @SampiyonlukSayisi int
as
begin
	insert into TAKIM values(@TakimAdi, @KurulusTarihi, @TakimRengi, @SampiyonlukSayisi)
end
