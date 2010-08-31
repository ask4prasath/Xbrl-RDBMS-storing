require '/home/bitstat1/test/semanticweb/range_search/lib/db/spec/spec_helper.rb'

@btree=DB::Core::BPluss::Tree.new(3)

IncGrossProfit.all.each do |f|
 if f.value != nil then
 @gf2.insert(f.value, f.id)
end
end

