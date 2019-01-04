CREATE INDEX idx_building(location or place)_address ON building(location or place) USING GIST ( address );
CREATE INDEX idx_employee_current address ON employee USING GIST ( current address );
CREATE INDEX idx_employee_date of birth ON employee USING GIST ( date of birth );
CREATE INDEX idx_office_building ON office USING GIST ( building );
CREATE INDEX idx_project_project area ON project USING GIST ( project area );
CREATE INDEX idx_project area_city ON project area USING GIST ( city );
CREATE INDEX idx_project area_geom ON project area USING GIST ( geom );
CREATE INDEX idx_survey plan_subarea ON survey plan USING GIST ( subarea );
