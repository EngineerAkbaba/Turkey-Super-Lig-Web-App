USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteDirector]    Script Date: 21.12.2014 21:06:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[spDeleteDirector] @Adi nvarchar(50), @Soyadi nvarchar(50)
as
begin
delete from TEKNIK_DIREKTOR 
where Adi = @Adi AND Soyadi=@Soyadi
end