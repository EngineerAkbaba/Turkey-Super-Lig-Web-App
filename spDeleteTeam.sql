USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteDirector]    Script Date: 21.12.2014 22:41:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spDeleteTeam] @TakimAdi nvarchar(50)
as
begin
delete from TAKIM 
where TakimAdi = @TakimAdi
end