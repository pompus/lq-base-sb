--liquibase formatted sql

--changeset ssaha:create schema SAMPLE_SCHEMA
create schema if not exists SAMPLE_SCHEMA;
SET SCHEMA SAMPLE_SCHEMA;

--changeset ssaha:drop TABLE SAMPLE_TAB
drop table if exists SAMPLE_TAB;

--changeset ssaha:CREATE TABLE SAMPLE_TAB
CREATE TABLE SAMPLE_TAB ( 
   id INT primary key, 
   title VARCHAR(50) NOT NULL, 
   author VARCHAR(20) NOT NULL, 
   submission_date DATE, 
);
--rollback drop table if exists SAMPLE_TAB;

--changeset ssaha:drop seq_SAMPLE_TAB
drop sequence if exists seq_SAMPLE_TAB;

--changeset ssaha:create seq_SAMPLE_TAB
create sequence seq_SAMPLE_TAB;

--changeset ssaha:drop author_x
drop INDEX if exists author_x;

--changeset ssaha:create INDEX author_x
CREATE INDEX author_x ON SAMPLE_TAB(author);
SET SCHEMA PUBLIC;