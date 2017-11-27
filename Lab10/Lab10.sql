/* Ariele Silva
   Database Management
   Prof. Labouseur
   26 November 2017
   Lab 10 */
   
/* 1 */
create or replace function PreReqsFor(courseNum int, resultsset REFCURSOR) returns refcursor as 
$$
declare
   courseNum int := $1;
   resultset REFCURSOR := $2;
begin
   open resultset for 
      select Prerequisites.preReqNum
      from Prerequisites
      where Prerequisites.courseNum = $1;
   return resultset;
end;
$$ 
language plpgsql;


select PreReqsFor(220, 'results');
Fetch all from results;

/* 2 */
create or replace function IsPreReqsFor(preReqNum int, resultsset REFCURSOR) returns refcursor as 
$$
declare
   courseNum int := $1;
   resultset REFCURSOR := $2;
begin
   open resultset for 
      select Prerequisites.courseNum
      from Prerequisites
      where Prerequisites.preReqNum = $1;
   return resultset;
end;
$$ 
language plpgsql;


select PreReqsFor(499, 'results');
Fetch all from results;

/* Optional Challenge */
