
cd serve-files/base_app
cd grouponeservieone
serve -l 1234 &
cd ..
cd grouptwoserviceone
serve -l 2345 &
cd ..
cd groupthreeserviceone
serve -l 3456 &
cd ..
cd ..