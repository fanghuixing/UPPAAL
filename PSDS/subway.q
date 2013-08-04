//This file was generated from (Academic) UPPAAL 4.1.15 (rev. 5265), April 2013

/*

*/
simulate 1 [<=9000] {T1.cost+S1.cost+T2.cost+S2.cost+T3.cost+S3.cost}

/*

*/
E[time<=500;1000] (max:train.time)

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
simulate 1 [<=300] {train.x}

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
