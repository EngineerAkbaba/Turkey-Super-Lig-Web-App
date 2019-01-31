USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spSelectStadium]    Script Date: 22.12.2014 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spSelectStadium]  @Adi nvarchar(50)
as
select * from STADYUM where Adi = @Adi