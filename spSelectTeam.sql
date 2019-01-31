USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spSelectDirector]    Script Date: 21.12.2014 22:43:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spSelectTeam]  @TakimAdi nvarchar(50)
as
select * from TAKIM where TakimAdi = @TakimAdi