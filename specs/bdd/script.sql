------------------------------------------------------------
--        Script Postgre 
------------------------------------------------------------



------------------------------------------------------------
-- Table: room
------------------------------------------------------------
CREATE TABLE public.room(
	RoomID     SERIAL NOT NULL ,
	Name       VARCHAR (50) NOT NULL ,
	Width      FLOAT  NOT NULL ,
	Height     FLOAT  NOT NULL ,
	DateUsed   DATE  NOT NULL  ,
	CONSTRAINT room_PK PRIMARY KEY (RoomID)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: Rectangle
------------------------------------------------------------
CREATE TABLE public.Rectangle(
	RectID   SERIAL NOT NULL ,
	X        FLOAT  NOT NULL ,
	Y        FLOAT  NOT NULL ,
	Width    FLOAT  NOT NULL ,
	Height   FLOAT  NOT NULL ,
	Angle    FLOAT  NOT NULL ,
	RoomID   INT    ,
	CONSTRAINT Rectangle_PK PRIMARY KEY (RectID)

	,CONSTRAINT Rectangle_room_FK FOREIGN KEY (RoomID) REFERENCES public.room(RoomID)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: robot
------------------------------------------------------------
CREATE TABLE public.robot(
	RobotID                   SERIAL NOT NULL ,
	Name                      VARCHAR (50) NOT NULL ,
	NumberOfReadings          INT  NOT NULL ,
	DistanceSensorFuzziness   FLOAT  NOT NULL ,
	AngleSensorFuzziness      FLOAT  NOT NULL ,
	DistanceMovedFuzziness    FLOAT  NOT NULL ,
	AngleRotatedFuzziness     FLOAT  NOT NULL ,
	DateUsed                  DATE  NOT NULL  ,
	CONSTRAINT robot_PK PRIMARY KEY (RobotID)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: scenario
------------------------------------------------------------
CREATE TABLE public.scenario(
	ScenarioID         SERIAL NOT NULL ,
	Name               VARCHAR (50) NOT NULL ,
	SquareSize         INT  NOT NULL ,
	CartographerGrid   VARCHAR (2000)  NOT NULL ,
	RobotPosX          FLOAT  NOT NULL ,
	RobotPosY          FLOAT  NOT NULL ,
	RobotAngle         FLOAT  NOT NULL ,
	DateUsed           DATE  NOT NULL ,
	RoomID             INT   ,
	RobotID            INT    ,
	CONSTRAINT scenario_PK PRIMARY KEY (ScenarioID)

	,CONSTRAINT scenario_room_FK FOREIGN KEY (RoomID) REFERENCES public.room(RoomID)
	,CONSTRAINT scenario_robot0_FK FOREIGN KEY (RobotID) REFERENCES public.robot(RobotID)
)WITHOUT OIDS;
