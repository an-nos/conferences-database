ALTER TABLE dbo.Employees ADD CONSTRAINT LikeEmail CHECK (Email LIKE'%_@%._%')
ALTER TABLE dbo.DayPrices ADD CONSTRAINT SDiscount CHECK (StudentDiscount>=0 AND StudentDiscount<=1)
ALTER TABLE dbo.Days ADD CONSTRAINT PositiveParticipants CHECK (MaxParticipants > 0)
ALTER TABLE dbo.Days ADD CONSTRAINT PositiveDays CHECK (DayNumber > 0)
ALTER TABLE dbo.Workshops ADD CONSTRAINT PositiveParticipants2 CHECK (MaxParticipants > 0)
ALTER TABLE dbo.Workshops ADD CONSTRAINT NotNegativePrice CHECK (Price >= 0)
ALTER TABLE dbo.Payments ADD CONSTRAINT NotNegativeTotal CHECK (Total >= 0)
ALTER TABLE dbo.ConferenceBookings ADD CONSTRAINT CheckStatus CHECK (Status = -1 OR Status = 0 OR Status = 1)
ALTER TABLE dbo.DayBookings ADD CONSTRAINT CheckStatusDB CHECK (Status = -1 OR Status = 0 OR Status = 1)
ALTER TABLE dbo.DayBookings ADD CONSTRAINT PositiveParticipantsDB CHECK (NumberOfParticipants > 0)
ALTER TABLE dbo.DayBookings ADD CONSTRAINT NotNegativeStudents CHECK (NumberOfStudents >= 0)
ALTER TABLE dbo.WorkshopBookings ADD CONSTRAINT CheckStatusWB CHECK (Status = -1 OR Status = 0 OR Status = 1)
ALTER TABLE dbo.WorkshopBookings ADD CONSTRAINT PositiveParticipantsWB CHECK (NumberOfParticipants > 0)