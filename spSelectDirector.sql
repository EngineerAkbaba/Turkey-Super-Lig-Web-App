USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spSelectFootballer]    Script Date: 21.12.2014 17:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spSelectDirector]  @Adi nvarchar(50), @Soyadi nvarchar(50)
as
select * from TEKNIK_DIREKTOR where Adi = @Adi AND Soyadi=@Soyadi