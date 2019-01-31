USE [SuperLig]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteStadium]    Script Date: 22.12.2014 15:31:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spDeleteStadium] @Adi nvarchar(50)
as
begin
delete from STADYUM 
where Adi = @Adi
end