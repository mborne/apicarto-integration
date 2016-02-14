
TODO

* Voir si les résultats de cette requête correspondent à des incohérences geofla 

```
DROP VIEW IF EXISTS commune ;
CREATE VIEW commune AS 
	SELECT dep||com as insee, cc.*, gc.geometry FROM cog.commune cc 
		LEFT JOIN geofla.commune gc ON gc.code_com = cc.com AND gc.code_dept = cc.dep ;

SELECT * FROM commune WHERE geometry IS NULL AND actual = '1';
```

