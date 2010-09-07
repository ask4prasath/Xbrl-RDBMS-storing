require 'set'
class LoadController < ApplicationController

   def initialize()
    config = OpenStruct.new
    config.host = ENV['MYSQL_HOST'] || 'localhost'
    config.port = ENV['MYSQL_PORT'] || '3306'
    config.user = ENV['MYSQL_USER'] || 'root'
    config.pass = ENV['MYSQL_PASS'] || ''
    config.sock = ENV['MYSQL_SOCK']
    config.flag = ENV['MYSQL_FLAG']
    config.database = ENV['MYSQL_DATABASE'] || 'second_range_development'
    @host = config.host
    @user = config.user
    @pass = config.pass
    @db   = config.database
    @port = config.port.to_i
    @sock = config.sock
    @flag = config.flag.to_i
   end



  def index

  end

  def submit
     before_time = Time.now
     @value = {:search1 => [params[:search][:name1], params[:search][:query1], params[:search][:value1]],
               :search2 => [params[:search][:name2], params[:search][:query2], params[:search][:value1]],
               :search3 => [params[:search][:name3], params[:search][:query3], params[:search][:value1]]}
     a = []
     @a_value = {}
     b = []
     @b_value = {}
     c = []
     @c_value = {}
     @m = Mysql.real_connect(@host, @user, @pass, @db, @port, @sock, @flag)
     @m.query("select * from #{params[:search][:name1]} where value #{params[:search][:query1]} #{params[:search][:value1]}").each do |f|
            a << f[1]
            @a_value.store(f[1], [f[2]])  if (not @a_value.has_key?(f[1]))
            @a_value[f[1]] << f[2] if (@a_value.has_key?(f[1]))

             end
     @m.query("select * from #{params[:search][:name2]} where value #{params[:search][:query2]} #{params[:search][:value2]}").each do |f|
            b << f[1]
            @b_value.store(f[1], [f[2]])  if (not @b_value.has_key?(f[1]))
            @b_value[f[1]] << f[2] if (@b_value.has_key?(f[1]))
            end
     @m.query("select * from #{params[:search][:name3]} where value #{params[:search][:query3]} #{params[:search][:value3]}").each do |f|
            c << f[1]
            @c_value.store(f[1], [f[2]])  if (not @c_value.has_key?(f[1]))
            @c_value[f[1]] << f[2] if (@c_value.has_key?(f[1]))
             end
     @companies = ((a+b+c)-((a-b)+(b-a)+(c-a)+(a-c)+(b-c)+(c-b))).uniq
     @companies_name = Company.find(:all, :conditions => {:id => @companies})
     @execution_time = Time.now - before_time
      @a = a.uniq
      @b = b.uniq
      @c = c.uniq
  end
end


def count_size(num)
  if num.size > 6 then
     first = num.slice(0, 1)
     total_size = num.size
     size = num.size
     c = []
     (0..size).each do
       if num.slice(size-1, size) == "0" then
       c << num.slice(0, size-1)
       num = num.slice(0, size-1)
       size = size-1
       end
     end
    if c.empty? then
    return first + "." + "#{num.slice(1, num.size) }e+#{total_size-1}"
    else
      return first + "." + "#{c.last.slice(1, c.last.size) }e+#{total_size-1}"
  end

  else
     num
  end

end


