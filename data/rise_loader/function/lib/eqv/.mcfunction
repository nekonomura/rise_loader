#引数
#{"type1":"block/entity/storage","target1":"x y z/TargetSelecter/namespace","pass1":"test.test.test","type2":"block/entity/storage","target2":"x y z/TargetSelecter/namespace","pass2":"test.test.test"}
$execute store success storage rise_loader: lib.eqv.retrun int 1 run data modify $(type1) $(target1) $(pass1) set from $(type2) $(target2) $(pass2)
execute if data storage rise_loader: lib.eqv.retrun