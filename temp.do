transcript off
onerror abort
echo "------- START OF SCRIPT -------"
restart -force
noview *
view signals
view wave
add wave *
view list
configure list -delta collapse
add list *
# ====== start of stimulus section ======

force  resetN  0 , 1 100 ns
force  clk 0 , 1  50 ns -r 100 ns
force din 0
run 200 ns
force din 1
run 400 ns
force din 0
run 300 ns

# ======= end of stimulus section =======
echo "------- END OF SCRIPT -------"
echo "The time now is $now [string trim $resolution 01]"
