CREATE TABLE codelist_contract type (
     oid                  integer  DEFAULT NEXTVAL('codelist_contract type_oid_seq')                   NOT NULL,
     value                varchar(50)          NOT NULL
);

CREATE TABLE codelist_type of employee (
     oid                  integer  DEFAULT NEXTVAL('codelist_type of employee_oid_seq')                   NOT NULL,
     value                varchar(50)          NOT NULL
);

CREATE TABLE codelist_type of investment opportunities (
     oid                  integer  DEFAULT NEXTVAL('codelist_type of investment opportunities_oid_seq')                   NOT NULL,
     value                varchar(50)          NOT NULL
);

CREATE TABLE codelist_type of marketing (
     oid                  integer  DEFAULT NEXTVAL('codelist_type of marketing_oid_seq')                   NOT NULL,
     value                varchar(50)          NOT NULL
);




CREATE TABLE department (
     oid                  integer  DEFAULT NEXTVAL('department_oid_seq')                   NOT NULL,
     department number    int    NOT NULL,
     date of start manage department timestamp NOT NULL,
     department name      varchar(100)         NOT NULL,
     manager              varchar(100)         NOT NULL
);


CREATE TABLE office (
     oid                  integer  DEFAULT NEXTVAL('office_oid_seq')                   NOT NULL,
     office number        int        NOT NULL,
     building(location or place)_oid integer NOT NULL,
     department_oid       integer       NOT NULL,
     building             geometry(POLYGON,28992)
);


CREATE TABLE building(location or place) (
     oid                  integer  DEFAULT NEXTVAL('building(location or place)_oid_seq')                   NOT NULL,
     staff capacity       int       NOT NULL,
     address              geometry(POINT,28992),
     contain company's headquarter boolean NOT NULL
);


CREATE TABLE project (
     oid                  integer  DEFAULT NEXTVAL('project_oid_seq')                   NOT NULL,
     scope/type of marketing integer NOT NULL,
     project name         varchar(100)         NOT NULL,
     office_oid           integer           NOT NULL,
     project number       int       NOT NULL,
     project area         geometry(POLYGON,28992)
);


CREATE TABLE project area (
     oid                  integer  DEFAULT NEXTVAL('project area_oid_seq')                   NOT NULL,
     project number       int       NOT NULL,
     rights               varchar(100)         NOT NULL,
     geom                 geometry(POLYGON,28992),
     building(location or place)_oid integer NOT NULL,
     commercial price     real     NOT NULL,
     survey plan_oid      integer      NOT NULL,
     country              varchar(100)         NOT NULL,
     property for lease of purchase varchar(100)         NOT NULL,
     project area_oid     integer     NOT NULL,
     project_oid          integer          NOT NULL,
     owner                varchar(100)         NOT NULL,
     city                 geometry(LINESTRING,28992)
);

CREATE TABLE survey plan (
     oid                  integer  DEFAULT NEXTVAL('survey plan_oid_seq')                   NOT NULL,
     type of investment opportunities integer NOT NULL,
     subarea              geometry(POLYGON,28992),
     two contiguous areas are surveyed at the same time boolean DEFAULT False  NOT NULL,
     best investment oppritunities for each project area varchar(100)         NOT NULL
);






CREATE TABLE employee (
     oid                  integer  DEFAULT NEXTVAL('employee_oid_seq')                   NOT NULL,
     salary               real               NOT NULL,
     type of employee     integer     NOT NULL,
     number of hours per week in each project real NOT NULL,
     current address      geometry(POINT,28992),
     gender               int               NOT NULL,
     date of birth        geometry(POINT,28992),
     permanent address    int    NOT NULL,
     age                  varchar(100)         NOT NULL,
     department_oid       integer       NOT NULL,
     direct supervisor_oid integer NOT NULL,
     social/fiscal number int NOT NULL,
     name                 varchar(100)         NOT NULL
);


CREATE TABLE project_work in_employee (
     employee_oid         integer         NOT NULL,
     project_oid          integer          NOT NULL
);


CREATE TABLE dependent of employee (
     oid                  integer  DEFAULT NEXTVAL('dependent of employee_oid_seq')                   NOT NULL,
     gender               varchar(100)         NOT NULL,
     date of birth        timestamp        NOT NULL,
     first name           varchar(100)         NOT NULL,
     relationship         varchar(100)         NOT NULL
);

CREATE TABLE employee_has_dependent of employee (
     dependent of employee_oid integer NOT NULL,
     employee_oid         integer         NOT NULL
);




CREATE TABLE engineer (
     oid                  integer  DEFAULT NEXTVAL('engineer_oid_seq')                   NOT NULL,
     employee_oid         integer         NOT NULL,
     position             varchar(100)         NOT NULL
);


CREATE TABLE researcher (
     oid                  integer  DEFAULT NEXTVAL('researcher_oid_seq')                   NOT NULL,
     employee_oid         integer         NOT NULL,
     degree               varchar(100)         NOT NULL
);

CREATE TABLE assisstant (
     oid                  integer  DEFAULT NEXTVAL('assisstant_oid_seq')                   NOT NULL,
     contract type        integer        NOT NULL,
     employee_oid         integer         NOT NULL
);

CREATE TABLE technician (
     oid                  integer  DEFAULT NEXTVAL('technician_oid_seq')                   NOT NULL,
     employee_oid         integer         NOT NULL,
     specialities or skills varchar(100)         NOT NULL
);

