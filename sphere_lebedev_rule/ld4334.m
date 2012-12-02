function [ x, y, z, w ] = ld4334 ( )

%*****************************************************************************80;
%
%% LD4334 computes the 4334 point Lebedev angular grid.
%
%  Modified:
%
%    14 September 2010
%
%  Author:
%
%    Dmitri Laikov
%
%  Reference:
%
%    Vyacheslav Lebedev, Dmitri Laikov,
%    A quadrature formula for the sphere of the 131st
%    algebraic order of accuracy,
%    Russian Academy of Sciences Doklady Mathematics,
%    Volume 59, Number 3, 1999, pages 477-481.
%
%  Parameters:
%
%    Output, real X(N), Y(N), Z(N), W(N), the coordinates
%    and weights of the points.
%
  n = 0;
  x = zeros(4334,1);
  y = zeros(4334,1);
  z = zeros(4334,1);
  w = zeros(4334,1);
  a = 0.0;
  b = 0.0;
  v = 0.1449063022537883E-04;
  [ n, x, y, z, w ] = gen_oh ( 1, n, a, b, v, x, y, z, w );
  v = 0.2546377329828424E-03;
  [ n, x, y, z, w ] = gen_oh ( 3, n, a, b, v, x, y, z, w );
  a = 0.1462896151831013E-01;
  v = 0.6018432961087496E-04;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.3769840812493139E-01;
  v = 0.1002286583263673E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.6524701904096891E-01;
  v = 0.1315222931028093E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.9560543416134648E-01;
  v = 0.1564213746876724E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.1278335898929198;
  v = 0.1765118841507736E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.1613096104466031;
  v = 0.1928737099311080E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.1955806225745371;
  v = 0.2062658534263270E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.2302935218498028;
  v = 0.2172395445953787E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.2651584344113027;
  v = 0.2262076188876047E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.2999276825183209;
  v = 0.2334885699462397E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.3343828669718798;
  v = 0.2393355273179203E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.3683265013750518;
  v = 0.2439559200468863E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.4015763206518108;
  v = 0.2475251866060002E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.4339612026399770;
  v = 0.2501965558158773E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.4653180651114582;
  v = 0.2521081407925925E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.4954893331080803;
  v = 0.2533881002388081E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.5243207068924930;
  v = 0.2541582900848261E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.5516590479041704;
  v = 0.2545365737525860E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.6012371927804176;
  v = 0.2545726993066799E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.6231574466449819;
  v = 0.2544456197465555E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.6429416514181271;
  v = 0.2543481596881064E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.6604124272943595;
  v = 0.2543506451429194E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.6753851470408250;
  v = 0.2544905675493763E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.6876717970626160;
  v = 0.2547611407344429E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.6970895061319234;
  v = 0.2551060375448869E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.7034746912553310;
  v = 0.2554291933816039E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.7067017217542295;
  v = 0.2556255710686343E-03;
  [ n, x, y, z, w ] = gen_oh ( 4, n, a, b, v, x, y, z, w );
  a = 0.4382223501131123E-01;
  v = 0.9041339695118195E-04;
  [ n, x, y, z, w ] = gen_oh ( 5, n, a, b, v, x, y, z, w );
  a = 0.1117474077400006;
  v = 0.1438426330079022E-03;
  [ n, x, y, z, w ] = gen_oh ( 5, n, a, b, v, x, y, z, w );
  a = 0.1897153252911440;
  v = 0.1802523089820518E-03;
  [ n, x, y, z, w ] = gen_oh ( 5, n, a, b, v, x, y, z, w );
  a = 0.2724023009910331;
  v = 0.2060052290565496E-03;
  [ n, x, y, z, w ] = gen_oh ( 5, n, a, b, v, x, y, z, w );
  a = 0.3567163308709902;
  v = 0.2245002248967466E-03;
  [ n, x, y, z, w ] = gen_oh ( 5, n, a, b, v, x, y, z, w );
  a = 0.4404784483028087;
  v = 0.2377059847731150E-03;
  [ n, x, y, z, w ] = gen_oh ( 5, n, a, b, v, x, y, z, w );
  a = 0.5219833154161411;
  v = 0.2468118955882525E-03;
  [ n, x, y, z, w ] = gen_oh ( 5, n, a, b, v, x, y, z, w );
  a = 0.5998179868977553;
  v = 0.2525410872966528E-03;
  [ n, x, y, z, w ] = gen_oh ( 5, n, a, b, v, x, y, z, w );
  a = 0.6727803154548222;
  v = 0.2553101409933397E-03;
  [ n, x, y, z, w ] = gen_oh ( 5, n, a, b, v, x, y, z, w );
  a = 0.7476563943166086E-01;
  b = 0.2193168509461185E-01;
  v = 0.1212879733668632E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.1075341482001416;
  b = 0.4826419281533887E-01;
  v = 0.1472872881270931E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.1416344885203259;
  b = 0.7751191883575742E-01;
  v = 0.1686846601010828E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.1766325315388586;
  b = 0.1087558139247680;
  v = 0.1862698414660208E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.2121744174481514;
  b = 0.1413661374253096;
  v = 0.2007430956991861E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.2479669443408145;
  b = 0.1748768214258880;
  v = 0.2126568125394796E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.2837600452294113;
  b = 0.2089216406612073;
  v = 0.2224394603372113E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.3193344933193984;
  b = 0.2431987685545972;
  v = 0.2304264522673135E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.3544935442438745;
  b = 0.2774497054377770;
  v = 0.2368854288424087E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.3890571932288154;
  b = 0.3114460356156915;
  v = 0.2420352089461772E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.4228581214259090;
  b = 0.3449806851913012;
  v = 0.2460597113081295E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.4557387211304052;
  b = 0.3778618641248256;
  v = 0.2491181912257687E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.4875487950541643;
  b = 0.4099086391698978;
  v = 0.2513528194205857E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5181436529962997;
  b = 0.4409474925853973;
  v = 0.2528943096693220E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5473824095600661;
  b = 0.4708094517711291;
  v = 0.2538660368488136E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5751263398976174;
  b = 0.4993275140354637;
  v = 0.2543868648299022E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.1489515746840028;
  b = 0.2599381993267017E-01;
  v = 0.1642595537825183E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.1863656444351767;
  b = 0.5479286532462190E-01;
  v = 0.1818246659849308E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.2238602880356348;
  b = 0.8556763251425254E-01;
  v = 0.1966565649492420E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.2612723375728160;
  b = 0.1177257802267011;
  v = 0.2090677905657991E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.2984332990206190;
  b = 0.1508168456192700;
  v = 0.2193820409510504E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.3351786584663333;
  b = 0.1844801892177727;
  v = 0.2278870827661928E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.3713505522209120;
  b = 0.2184145236087598;
  v = 0.2348283192282090E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.4067981098954663;
  b = 0.2523590641486229;
  v = 0.2404139755581477E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.4413769993687534;
  b = 0.2860812976901373;
  v = 0.2448227407760734E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.4749487182516394;
  b = 0.3193686757808996;
  v = 0.2482110455592573E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5073798105075426;
  b = 0.3520226949547602;
  v = 0.2507192397774103E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5385410448878654;
  b = 0.3838544395667890;
  v = 0.2524765968534880E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5683065353670530;
  b = 0.4146810037640963;
  v = 0.2536052388539425E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5965527620663510;
  b = 0.4443224094681121;
  v = 0.2542230588033068E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.2299227700856157;
  b = 0.2865757664057584E-01;
  v = 0.1944817013047896E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.2695752998553267;
  b = 0.5923421684485993E-01;
  v = 0.2067862362746635E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.3086178716611389;
  b = 0.9117817776057715E-01;
  v = 0.2172440734649114E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.3469649871659077;
  b = 0.1240593814082605;
  v = 0.2260125991723423E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.3845153566319655;
  b = 0.1575272058259175;
  v = 0.2332655008689523E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.4211600033403215;
  b = 0.1912845163525413;
  v = 0.2391699681532458E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.4567867834329882;
  b = 0.2250710177858171;
  v = 0.2438801528273928E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.4912829319232061;
  b = 0.2586521303440910;
  v = 0.2475370504260665E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5245364793303812;
  b = 0.2918112242865407;
  v = 0.2502707235640574E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5564369788915756;
  b = 0.3243439239067890;
  v = 0.2522031701054241E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5868757697775287;
  b = 0.3560536787835351;
  v = 0.2534511269978784E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.6157458853519617;
  b = 0.3867480821242581;
  v = 0.2541284914955151E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.3138461110672113;
  b = 0.3051374637507278E-01;
  v = 0.2161509250688394E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.3542495872050569;
  b = 0.6237111233730755E-01;
  v = 0.2248778513437852E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.3935751553120181;
  b = 0.9516223952401907E-01;
  v = 0.2322388803404617E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.4317634668111147;
  b = 0.1285467341508517;
  v = 0.2383265471001355E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.4687413842250821;
  b = 0.1622318931656033;
  v = 0.2432476675019525E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5044274237060283;
  b = 0.1959581153836453;
  v = 0.2471122223750674E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5387354077925727;
  b = 0.2294888081183837;
  v = 0.2500291752486870E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5715768898356105;
  b = 0.2626031152713945;
  v = 0.2521055942764682E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.6028627200136111;
  b = 0.2950904075286713;
  v = 0.2534472785575503E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.6325039812653463;
  b = 0.3267458451113286;
  v = 0.2541599713080121E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.3981986708423407;
  b = 0.3183291458749821E-01;
  v = 0.2317380975862936E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.4382791182133300;
  b = 0.6459548193880908E-01;
  v = 0.2378550733719775E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.4769233057218166;
  b = 0.9795757037087952E-01;
  v = 0.2428884456739118E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5140823911194238;
  b = 0.1316307235126655;
  v = 0.2469002655757292E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5496977833862983;
  b = 0.1653556486358704;
  v = 0.2499657574265851E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5837047306512727;
  b = 0.1988931724126510;
  v = 0.2521676168486082E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.6160349566926879;
  b = 0.2320174581438950;
  v = 0.2535935662645334E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.6466185353209440;
  b = 0.2645106562168662;
  v = 0.2543356743363214E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.4810835158795404;
  b = 0.3275917807743992E-01;
  v = 0.2427353285201535E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5199925041324341;
  b = 0.6612546183967181E-01;
  v = 0.2468258039744386E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5571717692207494;
  b = 0.9981498331474143E-01;
  v = 0.2500060956440310E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5925789250836378;
  b = 0.1335687001410374;
  v = 0.2523238365420979E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.6261658523859670;
  b = 0.1671444402896463;
  v = 0.2538399260252846E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.6578811126669331;
  b = 0.2003106382156076;
  v = 0.2546255927268069E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5609624612998100;
  b = 0.3337500940231335E-01;
  v = 0.2500583360048449E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.5979959659984670;
  b = 0.6708750335901803E-01;
  v = 0.2524777638260203E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.6330523711054002;
  b = 0.1008792126424850;
  v = 0.2540951193860656E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.6660960998103972;
  b = 0.1345050343171794;
  v = 0.2549524085027472E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.6365384364585819;
  b = 0.3372799460737052E-01;
  v = 0.2542569507009158E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  a = 0.6710994302899275;
  b = 0.6755249309678028E-01;
  v = 0.2552114127580376E-03;
  [ n, x, y, z, w ] = gen_oh ( 6, n, a, b, v, x, y, z, w );
  
  return
end