/*  ORACLE DATABASE */

CREATE TABLE PROJECTS
(PROJECTID VARCHAR(4),
STEP INTEGER,
STATUS CHAR(1));

INSERT INTO PROJECTS  VALUES('P100', 0, 'C');
INSERT INTO PROJECTS  VALUES('P100', 1, 'W');
INSERT INTO PROJECTS  VALUES('P100', 2, 'W');
INSERT INTO PROJECTS  VALUES('P201', 0, 'C');
INSERT INTO PROJECTS  VALUES('P201', 1, 'C');
INSERT INTO PROJECTS  VALUES('P333', 0, 'W');
INSERT INTO PROJECTS  VALUES('P333', 1, 'W');
INSERT INTO PROJECTS  VALUES('P333', 2, 'W');
INSERT INTO PROJECTS  VALUES('P333', 3, 'W');


SELECT DISTINCT(P.PROJECTID) FROM PROJECTS P, PROJECTS N
WHERE P.PROJECTID = N.PROJECTID AND P.STEP=0 AND N.STEP=1 AND P.STATUS = 'C' AND N.STATUS= 'W'
ORDER BY PROJECTID;