CREATE TABLE todo (
id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
details VARCHAR(8000) NULL,
priority INTEGER NOT NULL DEFAULT '1',
created_at TIMESTAMP NOT NULL,
completed_at TIMESTAMP NULL
);

INSERT INTO todo (title, details, priority, created_at) VALUES ('order usb cable', 'just do it', 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO todo (title, details, priority, created_at) VALUES ('update calendar', 'Meetup did not have events on their calendar', 2, CURRENT_TIMESTAMP);
INSERT INTO todo (title, details, priority, created_at) VALUES ('clean room', 'Laundry and wipe down', 2, CURRENT_TIMESTAMP);
INSERT INTO todo (title, details, priority, created_at) VALUES ('Grocery shop', 'Whats for dinner?', 2, CURRENT_TIMESTAMP);
INSERT INTO todo (title, details, priority, created_at) VALUES ('Get truck running', 'Test pump, install in tank, mount tank', 2, CURRENT_TIMESTAMP);
INSERT INTO todo (title, details, priority, created_at) VALUES ('Work on weekly project', 'write some code!', 2, CURRENT_TIMESTAMP);


select * from todo where completed_at is null;
select * from todo where priority > 1;
update todo set completed_at = current_timestamp where id = 3;
delete from todo where completed_at IS NOT NULL;
