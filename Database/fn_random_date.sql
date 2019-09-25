CREATE FUNCTION random_date (@mindays int, @maxdays int) 
   RETURNS VARCHAR(255)
AS BEGIN
   DECLARE @rv date
   SET @rv = (SELECT GetDate() 
                   - rnd * (@maxdays-@mindays)
                   - @mindays
                FROM rand_helper)
   RETURN @rv
END
GO