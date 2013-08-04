//This file was generated from (Academic) UPPAAL 4.1.4 (rev. 4740), February 2011

/*

*/
control: A[] (not Monitor.Error) and (AbstractTrain.stop or not (AbstractTrainDoor.shut or AbstractTrainDoor.open or AbstractTrainDoor.part)) and (not ((not AbstractScreenDoor.open) and Controller.trainDoorClosed))  and not (AbstractTrain.leave and not AbstractTrainDoor.closed and not AbstractScreenDoor.closed)
