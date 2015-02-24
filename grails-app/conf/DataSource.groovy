
 dataSource {
 pooled = false
 dbCreate = "update" // one of 'create', 'create-drop','update'
 url = "jdbc:postgresql://localhost/compromisomx"
 driverClassName = "org.postgresql.Driver"
 username = "postgres"
 password = "roronoa123"
 // NOTE: both of these dialects have worked for me. But some people
 // recommend using the net.sf version and not the org.hibernate version.
 // dialect = org.hibernate.dialect.PostgreSQLDialect // honestly, not sure what
 dialect = net.sf.hibernate.dialect.PostgreSQLDialect // the difference is.
 }

hibernate {
	cache.use_second_level_cache = true
	cache.use_query_cache = false
	//    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
	cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
	singleSession = true // configure OSIV singleSession mode
	flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}

// environment specific settings
environments {
	development {
		dataSource {

			pooled = false
			dbCreate = "update" // one of 'create', 'create-drop','update'
			url = "jdbc:postgresql://localhost/compromisomx"
			driverClassName = "org.postgresql.Driver"
			username = "postgres"
			password = "roronoa123"

			dialect = net.sf.hibernate.dialect.PostgreSQLDialect
		}

	}
	production {
		dataSource {

			pooled = false
			dbCreate = "update" // one of 'create', 'create-drop','update'
			url = "jdbc:postgresql://localhost/compromisomx"
			driverClassName = "org.postgresql.Driver"
			username = "postgres"
			password = "roronoa123"

			dialect = net.sf.hibernate.dialect.PostgreSQLDialect
		}
	}
}


