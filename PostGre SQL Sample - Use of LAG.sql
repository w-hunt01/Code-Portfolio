-- In this sample, a table is created and values are inserted using PostGre SQL. 
-- In line 250, a scenario to modify the data is described. 

DROP TABLE IF EXISTS People;
CREATE TABLE People (
	Person_ID INT, 
	Nomen VARCHAR(25), 
	Height_inches DECIMAL(8,2)
);

INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('1','Sophia','65.5');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('2','Kelly','64.3');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('3','Dee','73.75');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('4','Fabian','69.85');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('5','Arlen','65.84');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('6','Micheal','68.22');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('7','Sung','68.33');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('8','Annette','68.43');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('9','Norah','59.88');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('10','Aura','61.05');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('11','Margherita','61.5');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('12','Terry','69.95');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('13','Genia','65.61');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('14','Lane','69.38');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('15','Dewey','69.77');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('16','Arron','66.43');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('17','Lino','67.91');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('18','Enedina','66.35');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('19','Kathy','61.53');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('20','Glory','64.28');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('21','Dirk','70.17');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('22','Shelba','65.41');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('23','Lacy','70.56');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('24','Milo','70.5');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('25','Augustus','67.77');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('26','Tari','61.26');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('27','Coleman','69.59');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('28','Cecilia','65.75');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('29','Regan','63.03');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('30','Rosita','62.83');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('31','Tomeka','68.22');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('32','Chung','68.34');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('33','Kelsi','61');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('34','Christeen','61.07');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('35','Arden','68.76');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('36','Gustavo','68.68');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('37','Arturo','67.67');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('38','Tyson','66.84');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('39','Yong','65.79');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('40','Marcelle','68.85');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('41','Ray','71.13');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('42','Hortencia','62.88');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('43','Jessia','65.68');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('44','Erick','72.59');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('45','Carmon','61.58');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('46','Queen','62.74');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('47','Larry','72.11');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('48','Stewart','66.55');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('49','Quincy','68.24');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('50','Yulanda','67.76');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('51','Odilia','66.34');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('52','Karleen','66.28');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('53','Wilfred','68.96');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('54','Darrel','67.83');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('55','Irwin','69.38');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('56','Archie','69.56');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('57','Kena','63.71');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('58','Regina','67.29');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('60','Paul','67.26');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('61','Audria','63.17');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('62','Melia','66.74');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('63','Emilie','64.62');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('64','Lawrence','67.11');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('65','Leigh','68.05');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('66','Machelle','70.37');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('67','Lamont','73.2');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('68','Jaquelyn','57.34');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('69','Manuel','70.38');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('70','Dallas','68.38');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('71','Jerry','72.48');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('72','Odell','64.77');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('73','Cherie','62.88');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('74','Yan','66.66');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('75','Leticia','62.69');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('76','Toney','66.88');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('77','Francis','71.13');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('78','Stephan','68.53');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('79','Buster','68.47');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('80','Jack','71.18');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('81','Birgit','63.04');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('82','Luis','65.53');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('83','Moon','63.61');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('84','Hopkins','65.9');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('85','Donne','65.54');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('86','Marvel','66.86');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('87','Cervantes','70.59');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('88','LeBrun','67.98');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('89','Rho','64.02');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('90','Hannibal','70.77');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('91','Scipio','67.1');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('92','Joyce','67.46');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('93','Guest','69.39');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('94','West','67.11');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('95','Yeats','71.56');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('96','Keats','67.94');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('97','Blake','67.81');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('98','Kidd','67.01');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('99','Marlowe','67.39');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('100','Dalloway','60.04');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('101','Bennet','60.58');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('102','Austin','65.6');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('103','Johnson','69.44');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('104','Wordsworth','67.66');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('105','Wadsworth','57.79');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('106','St.Vincent-Milay','64.97');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('107','Behn','65.21');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('108','Bronte','61.75');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('109','Khan','64.66');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('110','Mukherjee','71.07');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('111','LeCarre','65.92');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('112','Hughes','70.58');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('113','Wright','68.78');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('114','Equiano','72.39');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('115','Wheatley','73.71');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('116','Morrison','64.2');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('117','Angelou','70.04');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('119','Radcliffe','65.49');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('120','Wolstonecraft','60.93');
INSERT INTO People (Person_ID, Nomen, Height_inches)
VALUES ('121','Tolstoy','70.67');

-- Scenario: create calculations to return how much taller one person is to the next person. 
SELECT person_id,
	Nomen,
	height_inches,
	LAG(Nomen, 1) OVER (ORDER BY height_inches) AS is_taller_than, 
	height_inches - LAG(height_inches, 1) OVER (ORDER BY height_inches) AS by_this_many_inches
FROM People
ORDER BY height_inches DESC;