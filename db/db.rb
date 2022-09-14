require 'pg'

# def run_sql(sql, sql_params = [])
#     db = PG.connect(dbname: 'fantasy_heart_db')
#     results = db.exec_params(sql, sql_params)
#     db.close
#     results
# end


def run_sql(sql, sql_params = [])
    db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'fantasy_heart_db'})    
    results = db.exec_params(sql, sql_params)
    db.close
    results
end