require 'pg'
# require 'ccc.sql'

# class SqlRunner
#
#   def self.run(sql, values = [])
#     begin
#       db = PG.connect({dbname: "ccc", host: "localhost"})
#       db.prepare("query", sql)
#       result = db.exec_prepared("query", values)
#     ensure
#       db.close() if db != nil
#     end
#     return result
#   end
#
# end
# #
#
class SqlRunner

  def self.run( sql, values = [] )
    begin
      db = PG.connect({ dbname: 'ccc', host: 'localhost' })
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end

end
