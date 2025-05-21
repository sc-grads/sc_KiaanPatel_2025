--Views help reduce security risks so people don't have direct access to the tables, they can just play around with the views
select V.name, S.text from sys.syscomments as S
inner join sys.views as V
on S.id = V.object_id

