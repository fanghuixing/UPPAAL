//This file was generated from (Academic) UPPAAL 4.1.15 (rev. 5265), April 2013

/*

*/
simulate 1 [<=3000] {Station4ASD1.open,2+Station1ASD1.open}

/*

*/
simulate 1 [<=3000] {Station1ASD1.open,1.2+Station1BSD1.open,2.4+Station2ASD1.open,3.6+Station2BSD1.open,4.8+Station3ASD1.open,6+Station3BSD1.open,7.2+Station4ASD1.open,8.4+Station4BSD1.open}

/*

*/
simulate 1 [<=1000] {Tr1.STOP, 1.5+Station1BSD1.open,3+Tr1TD1.open}

/*

*/
Pr[<=3000] (<> Tr1.x==Tr2.x and Tr1.dir==Tr2.dir and Tr1.x>0)

/*

*/
simulate 1 [<=5000] {x[0],x[1],x[2],x[3]}

/*
the max time of train1 stop at a station
*/
E[time<=3000;50] (max:C1.time)

/*

*/
E[time<=300;1000] (max:T1.cost)

/*
time<=300 means the time of one normal run of a train.
*/
Pr[time<=300](<>T1.cost>=4)

/*

*/
simulate 1 [<=3000] {T1.cost}

/*

*/
Pr[<=300] (<> T1.Error)

/*

*/
simulate 1 [<=3000] {train.stop, 1.5+train.leave,3+S1.open,4.5+T1.open,6+S2.open,7.5+T2.open,9+S3.open,10.5+T3.open}

/*

*/
simulate 1 [<=550] {train_door.closed, 2+train_door.open, 4+train_door.shut, 6+train_door.part, screen_door.closed, 2+screen_door.open, 4+screen_door.shut, 6+screen_door.part}

/*

*/
simulate 1 [<=1000] {Tr1.v}

/*

*/
simulate 1 [<=2000] {train.leave}

/*

*/
simulate 1 [<=2000] {train.INIT}

/*

*/
simulate 1 [<=2000]{train_door.y1, screen_door.y2}

/*

*/
Pr[<=1000](<> Monitor.TimeOut)

/*

*/
Pr[<=2000](<> Controller.Error)
