-- hardware
INSERT INTO hard VALUES (101,1,'hardware1','d001','d001','tyoutatu_test1','bikou_test1',200,'d001','d001','123.123.123.123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0);
INSERT INTO hard VALUES (102,1,'hardware2','d001','d001','tyoutatu_test1','bikou_test1',200,'d001','d001','123.123.123.123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0);
INSERT INTO hard VALUES (103,1,'hardware3','d001','d001','tyoutatu_test1','bikou_test1',200,'d001','d001','123.123.123.123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0);
INSERT INTO hard VALUES (104,1,'hardware4','d001','d001','tyoutatu_test1','bikou_test1',200,'d001','d001','123.123.123.123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0);
INSERT INTO hard VALUES (105,1,'hardware5','d001','d001','tyoutatu_test1','bikou_test1',200,'d001','d001','123.123.123.123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0);

-- lack
INSERT INTO pc_placement_lack_header VALUES (1, 1, '0000【全社】', 200, 50, 20, 5, 'teest1');
INSERT INTO pc_placement_lack_header VALUES (2, 2, '01【全社/総務部】', 200, 46, 21, 5, 'teest2');
INSERT INTO pc_placement_lack_header VALUES (3, 3, '01:0110【全社/総務部/総務課】', 200, 57, 22, 5, 'teest3');
INSERT INTO pc_placement_lack_header VALUES (4, 4, '01:0120【全社/総務部/人事課】', 200, 58, 23, 5, 'teest4');
INSERT INTO pc_placement_lack_header VALUES (5, 1, '0000【全社】', 200, 59, 24, 5, 'teest4');

INSERT INTO pc_placement_lack_detail VALUES (1, 1, 0, 1, 105, 'hardware5', 1, '0000【全社】', '123.123.123.123', NULL, 200, 'test', 2, '01【全社/総務部】', '', '', 198, 'thor');

-- surplus
INSERT INTO pc_placement_surplus_detail VALUES (1, NULL, 1, 0, 0, 101, 'hardware1', 1, '0000【全社】', '123.123.123.123', NULL, 200, 'd001', NULL, NULL, NULL, NULL, NULL, 'thor');
INSERT INTO pc_placement_surplus_detail VALUES (2, NULL, 1, 0, 0, 102, 'hardware2', 1, '0000【全社】', '123.123.123.123', NULL, 200, 'd001', NULL, NULL, NULL, NULL, NULL, NULL);

-- move

INSERT INTO pc_placement_move_detail VALUES (1, 1, 1, 'move3', 103, 'hardware3', 1, '0000【全社】', '123.123.123.123', NULL, 200, 'test', 2, '01【全社/総務部】', '', '', 196, 'thor');
INSERT INTO pc_placement_move_detail VALUES (2, 1, 1, 'move4', 104, 'hardware4', 1, '0000【全社】', '123.123.123.123', NULL, 200, 'test', 2, '01【全社/総務部】', '', '', 197, 'thor');
INSERT INTO pc_placement_move_detail VALUES (3, 1, 1, 'move5', 105, 'hardware5', 1, '0000【全社】', '123.123.123.123', NULL, 200, 'test', 2, '01【全社/総務部】', '', '', 198, 'thor');

INSERT INTO pc_placement_surplus_header VALUES (1, 1, '0000【全社】', 20, 10, 10, 5);
INSERT INTO pc_placement_surplus_header VALUES (2, 1, '0000【全社】', 30, 5, 10, 0);
INSERT INTO pc_placement_surplus_header VALUES (3, 1, '0000【全社】', 50, 55, 150, 0);
