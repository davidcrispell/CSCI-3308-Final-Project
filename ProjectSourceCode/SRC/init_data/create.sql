-- Initial schema for workout logging

CREATE TABLE workoutlogs (
  id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  date DATE NOT NULL,
  workoutduration SMALLINT NOT NULL,
  exercise_categories VARCHAR(100) NOT NULL
);

CREATE TABLE cardiologs (
  id INT PRIMARY KEY,
  workoutlog_id INT NOT NULL,
  distance FLOAT NOT NULL,
  duration SMALLINT NOT NULL,
  FOREIGN KEY (workoutlog_id) REFERENCES workoutlogs(id)
);

CREATE TABLE weightliftinglogs (
  id INT PRIMARY KEY,
  workoutlog_id INT NOT NULL,
  exercise_name VARCHAR(100) NOT NULL,
  sets SMALLINT NOT NULL,
  reps SMALLINT NOT NULL,
  weight FLOAT NOT NULL,
  FOREIGN KEY (workoutlog_id) REFERENCES workoutlogs(id)
);
