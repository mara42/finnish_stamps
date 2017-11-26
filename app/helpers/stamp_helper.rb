module StampHelper
        def stamps_printed_per_year
            date_and_counts_arrays = Stamp.pluck(:release_date, :amount_printed)
            years_and_counts_array = date_and_counts_arrays.map { |date, count| [date.year,count]}
            years_and_counts_hash = years_and_counts_array.group_by(&:first).map { |k, a| [k,a.map(&:last)]} 
            # total_printed_in_years = years_and_counts_hash.map {|date, counts| [DateTime.new(date), counts.sum] }.sort
            total_printed_in_years = years_and_counts_hash.map {|date, counts| [date, counts.sum] }.sort
        end
end