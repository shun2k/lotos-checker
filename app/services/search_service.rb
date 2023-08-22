
class SearchService
  # サービス層で14回データベース検索する。 値は配列に入れる ActiveRecord::Base.connection.select_all(sql)で取得する

  def make_sql_six_hit(selected_numbers)
    @hit_data = []
    one, two, three, four, five, six, seven = selected_numbers
    sqls = [
      "SELECT * FROM loto7s WHERE first IS NOT NULL AND second = '#{two}' AND third = '#{three}' AND forth = '#{four}' AND fifth = '#{five}' AND sixth = '#{six}' AND seventh = '#{seven}'",
      "SELECT * FROM loto7s WHERE first IS NOT NULL AND second = '#{one}' AND third = '#{two}' AND forth = '#{three}' AND fifth = '#{four}' AND sixth = '#{five}' AND seventh = '#{six}'",
      "SELECT * FROM loto7s WHERE first = '#{one}' AND second IS NOT NULL AND third = '#{three}' AND forth = '#{four}' AND fifth = '#{five}' AND sixth = '#{six}' AND seventh = '#{seven}'",
      "SELECT * FROM loto7s WHERE first = '#{one}' AND second IS NOT NULL AND third = '#{two}' AND forth = '#{three}' AND fifth = '#{four}' AND sixth = '#{five}' AND seventh = '#{six}'",
      "SELECT * FROM loto7s WHERE first = '#{two}' AND second IS NOT NULL AND third = '#{three}' AND forth = '#{four}' AND fifth = '#{five}' AND sixth = '#{six}' AND seventh = '#{seven}'",
      "SELECT * FROM loto7s WHERE first = '#{one}' AND second = '#{two}' AND third IS NOT NULL AND forth = '#{four}' AND fifth = '#{five}' AND sixth = '#{six}' AND seventh = '#{seven}'",
      "SELECT * FROM loto7s WHERE first = '#{one}' AND second = '#{two}' AND third IS NOT NULL AND forth = '#{three}' AND fifth = '#{four}' AND sixth = '#{five}' AND seventh = '#{six}'",
      "SELECT * FROM loto7s WHERE first = '#{one}' AND second = '#{three}' AND third IS NOT NULL AND forth = '#{four}' AND fifth = '#{five}' AND sixth = '#{six}' AND seventh = '#{seven}'",
      "SELECT * FROM loto7s WHERE first = '#{one}' AND second = '#{two}' AND third = '#{three}' AND forth IS NOT NULL AND fifth = '#{five}' AND sixth = '#{six}' AND seventh = '#{seven}'",
      "SELECT * FROM loto7s WHERE first = '#{one}' AND second = '#{two}' AND third = '#{three}' AND forth IS NOT NULL AND fifth = '#{four}' AND sixth = '#{five}' AND seventh = '#{six}'",
      "SELECT * FROM loto7s WHERE first = '#{one}' AND second = '#{two}' AND third = '#{four}' AND forth IS NOT NULL AND fifth = '#{five}' AND sixth = '#{six}' AND seventh = '#{seven}'",
      "SELECT * FROM loto7s WHERE first = '#{one}' AND second = '#{two}' AND third = '#{three}' AND forth = '#{four}' AND fifth IS NOT NULL AND sixth = '#{six}' AND seventh = '#{seven}'",
      "SELECT * FROM loto7s WHERE first = '#{one}' AND second = '#{two}' AND third = '#{three}' AND forth = '#{four}' AND fifth IS NOT NULL AND sixth = '#{five}' AND seventh = '#{six}'",
      "SELECT * FROM loto7s WHERE first = '#{one}' AND second = '#{two}' AND third = '#{three}' AND forth = '#{five}' AND fifth IS NOT NULL AND sixth = '#{six}' AND seventh = '#{seven}'",
      "SELECT * FROM loto7s WHERE first = '#{one}' AND second = '#{two}' AND third = '#{three}' AND forth = '#{four}' AND fifth = '#{five}' AND sixth IS NOT NULL AND seventh = '#{seven}'",
      "SELECT * FROM loto7s WHERE first = '#{one}' AND second = '#{two}' AND third = '#{three}' AND forth = '#{four}' AND fifth = '#{five}' AND sixth IS NOT NULL AND seventh = '#{six}'",
      "SELECT * FROM loto7s WHERE first = '#{one}' AND second = '#{two}' AND third = '#{three}' AND forth = '#{four}' AND fifth = '#{six}' AND sixth IS NOT NULL AND seventh = '#{seven}'",
      "SELECT * FROM loto7s WHERE first = '#{one}' AND second = '#{two}' AND third = '#{three}' AND forth = '#{four}' AND fifth = '#{five}' AND sixth = '#{six}' AND seventh IS NOT NULL",
      "SELECT * FROM loto7s WHERE first = '#{one}' AND second = '#{two}' AND third = '#{three}' AND forth = '#{four}' AND fifth = '#{five}' AND sixth = '#{seven}' AND seventh IS NOT NULL"
    ]
    
    sqls.each do |sql|
      data = ActiveRecord::Base.connection.select_all(sql).to_a
      if !data.empty? 
        @hit_data.append(data)
      end
    end
    @hit_data.uniq  #重複のデータをなくす
  end

end