alter table user add column irank int default -1 after prank;
alter table user add column inrank int default -1 after irank;
alter table user add column iprank int default -1 after inrank;
alter table user add column itrank int default -1 after iprank;
alter table user add column genreid int default -1 after `genre`;
alter table user add column fanpower int default -1 after fans;
alter table user add column fanpower_lst int default -1 after fans_lst;
alter table user alter column getp set default "";
alter table user alter column graph set default "";
alter table user alter column color set default "";
alter table user alter column irank set default 888888888;


alter table user alter column genre set default "";
alter table user alter column `rank` set default "";
alter table user alter column followers set default -1;
alter table user alter column level set default -1;