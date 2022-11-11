`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2021 10:56:39 PM
// Design Name: 
// Module Name: makesubkey
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module makesubkey(clk, keyin, tweak, subkey);
    input clk;
    input [1023:0] keyin;
    input [191:0] tweak;
    output reg [21503:0] subkey;

   wire [1087:0] keystate_out;
    reg [1087:0] key;
    
    //keystate KStt(clk, keyin, keystate_out);
    keystate_new KSttN(clk, keyin, keystate_out);
    
    always @ (posedge clk)
		key <= keystate_out;
		
    
    always@(posedge clk) begin
    //subkey 1
        subkey[1023:960] = key[1087:1024];
        subkey[959:896] = key[1023:960];
        subkey[895:832] = key[959:896];
        subkey[831:768] = key[895:832];
        subkey[767:704] = key[831:768];
        subkey[703:640] = key[767:704];
        subkey[639:576] = key[703:640];
        subkey[575:512] = key[639:576];
        subkey[511:448] = key[575:512];
        subkey[447:384] = key[511:448];
        subkey[383:320] = key[447:384];
        subkey[319:256] = key[383:320];
        subkey[255:192] = key[319:256];
        subkey[191:128] = key[255:192] + tweak[191:128];
        subkey[127:64] = key[191:128] + tweak[127:64];
        subkey[63:0] = key[127:64];
    //subkey 2
        subkey[2047:1984] = key[1023:960];
        subkey[1983:1920] = key[959:896];
        subkey[1919:1856] = key[895:832];
        subkey[1855:1792] = key[831:768];
        subkey[1791:1728] = key[767:704];
        subkey[1727:1664] = key[703:640];
        subkey[1663:1600] = key[639:576];
        subkey[1599:1536] = key[575:512];
        subkey[1535:1472] = key[511:448];
        subkey[1471:1408] = key[447:384];
        subkey[1407:1344] = key[383:320];
        subkey[1343:1280] = key[319:256];
        subkey[1279:1216] = key[255:192];
        subkey[1215:1152] = key[191:128] + tweak[127:64];
        subkey[1151:1088] = key[127:64] + tweak[63:0];
        subkey[1087:1024] = key[63:0] + 64'd1;
    //subkey 3
        subkey[3071:3008] = key[959:896];
        subkey[3007:2944] = key[895:832];
        subkey[2943:2880] = key[831:768];
        subkey[2879:2816] = key[767:704];
        subkey[2815:2752] = key[703:640];
        subkey[2751:2688] = key[639:576];
        subkey[2687:2624] = key[575:512];
        subkey[2623:2560] = key[511:448];
        subkey[2559:2496] = key[447:384];
        subkey[2495:2432] = key[383:320];
        subkey[2431:2368] = key[319:256];
        subkey[2367:2304] = key[255:192];
        subkey[2303:2240] = key[191:128];
        subkey[2239:2176] = key[127:64] + tweak[63:0];
        subkey[2175:2112] = key[63:0] + tweak[191:128];
        subkey[2111:2048] = key[1087:1024] + 64'd2;
    //subkey 4
        subkey[4095:4032] = key[895:832];
        subkey[4031:3968] = key[831:768];
        subkey[3967:3904] = key[767:704];
        subkey[3903:3840] = key[703:640];
        subkey[3839:3776] = key[639:576];
        subkey[3775:3712] = key[575:512];
        subkey[3711:3648] = key[511:448];
        subkey[3647:3584] = key[447:384];
        subkey[3583:3520] = key[383:320];
        subkey[3519:3456] = key[319:256];
        subkey[3455:3392] = key[255:192];
        subkey[3391:3328] = key[191:128];
        subkey[3327:3264] = key[127:64];
        subkey[3263:3200] = key[63:0] + tweak[191:128];
        subkey[3199:3136] = key[1087:1024] + tweak[127:64];
        subkey[3135:3072] = key[1023:960] + 64'd3;
    //subkey 5
        subkey[5119:5056] = key[831:768];
        subkey[5055:4992] = key[767:704];
        subkey[4991:4928] = key[703:640];
        subkey[4927:4864] = key[639:576];
        subkey[4863:4800] = key[575:512];
        subkey[4799:4736] = key[511:448];
        subkey[4735:4672] = key[447:384];
        subkey[4671:4608] = key[383:320];
        subkey[4607:4544] = key[319:256];
        subkey[4543:4480] = key[255:192];
        subkey[4479:4416] = key[191:128];
        subkey[4415:4352] = key[127:64];
        subkey[4351:4288] = key[63:0];
        subkey[4287:4224] = key[1087:1024] + tweak[127:64];
        subkey[4223:4160] = key[1023:960] + tweak[63:0];
        subkey[4159:4096] = key[959:896] + 64'd4;
    //subkey 6
        subkey[6143:6080] = key[767:704];
        subkey[6079:6016] = key[703:640];
        subkey[6015:5952] = key[639:576];
        subkey[5951:5888] = key[575:512];
        subkey[5887:5824] = key[511:448];
        subkey[5823:5760] = key[447:384];
        subkey[5759:5696] = key[383:320];
        subkey[5695:5632] = key[319:256];
        subkey[5631:5568] = key[255:192];
        subkey[5567:5504] = key[191:128];
        subkey[5503:5440] = key[127:64];
        subkey[5439:5376] = key[63:0];
        subkey[5375:5312] = key[1087:1024];
        subkey[5311:5248] = key[1023:960] + tweak[63:0];
        subkey[5247:5184] = key[959:896] + tweak[191:128];
        subkey[5183:5120] = key[895:832] + 64'd5;
    //subkey 7
        subkey[7167:7104] = key[703:640];
        subkey[7103:7040] = key[639:576];
        subkey[7039:6976] = key[575:512];
        subkey[6975:6912] = key[511:448];
        subkey[6911:6848] = key[447:384];
        subkey[6847:6784] = key[383:320];
        subkey[6783:6720] = key[319:256];
        subkey[6719:6656] = key[255:192];
        subkey[6655:6592] = key[191:128];
        subkey[6591:6528] = key[127:64];
        subkey[6527:6464] = key[63:0];
        subkey[6463:6400] = key[1087:1024];
        subkey[6399:6336] = key[1023:960];
        subkey[6335:6272] = key[959:896] + tweak[191:128];
        subkey[6271:6208] = key[895:832] + tweak[127:64];
        subkey[6207:6144] = key[831:768] + 64'd6;
    //subkey 8
        subkey[8191:8128] = key[639:576];
        subkey[8127:8064] = key[575:512];
        subkey[8063:8000] = key[511:448];
        subkey[7999:7936] = key[447:384];
        subkey[7935:7872] = key[383:320];
        subkey[7871:7808] = key[319:256];
        subkey[7807:7744] = key[255:192];
        subkey[7743:7680] = key[191:128];
        subkey[7679:7616] = key[127:64];
        subkey[7615:7552] = key[63:0];
        subkey[7551:7488] = key[1087:1024];
        subkey[7487:7424] = key[1023:960];
        subkey[7423:7360] = key[959:896];
        subkey[7359:7296] = key[895:832] + tweak[127:64];
        subkey[7295:7232] = key[831:768] + tweak[63:0];
        subkey[7231:7168] = key[767:704] + 64'd7;
    //subkey 9
        subkey[9215:9152] = key[575:512];
        subkey[9151:9088] = key[511:448];
        subkey[9087:9024] = key[447:384];
        subkey[9023:8960] = key[383:320];
        subkey[8959:8896] = key[319:256];
        subkey[8895:8832] = key[255:192];
        subkey[8831:8768] = key[191:128];
        subkey[8767:8704] = key[127:64];
        subkey[8703:8640] = key[63:0];
        subkey[8639:8576] = key[1087:1024];
        subkey[8575:8512] = key[1023:960];
        subkey[8511:8448] = key[959:896];
        subkey[8447:8384] = key[895:832];
        subkey[8383:8320] = key[831:768] + tweak[63:0];
        subkey[8319:8256] = key[767:704] + tweak[191:128];
        subkey[8255:8192] = key[703:640] + 64'd8;
    //subkey 10
        subkey[10239:10176] = key[511:448];
        subkey[10175:10112] = key[447:384];
        subkey[10111:10048] = key[383:320];
        subkey[10047:9984] = key[319:256];
        subkey[9983:9920] = key[255:192];
        subkey[9919:9856] = key[191:128];
        subkey[9855:9792] = key[127:64];
        subkey[9791:9728] = key[63:0];
        subkey[9727:9664] = key[1087:1024];
        subkey[9663:9600] = key[1023:960];
        subkey[9599:9536] = key[959:896];
        subkey[9535:9472] = key[895:832];
        subkey[9471:9408] = key[831:768];
        subkey[9407:9344] = key[767:704] + tweak[191:128];
        subkey[9343:9280] = key[703:640] + tweak[127:64];
        subkey[9279:9216] = key[639:576] + 64'd9;
    //subkey 11
        subkey[11263:11200] = key[447:384];
        subkey[11199:11136] = key[383:320];
        subkey[11135:11072] = key[319:256];
        subkey[11071:11008] = key[255:192];
        subkey[11007:10944] = key[191:128];
        subkey[10943:10880] = key[127:64];
        subkey[10879:10816] = key[63:0];
        subkey[10815:10752] = key[1087:1024];
        subkey[10751:10688] = key[1023:960];
        subkey[10687:10624] = key[959:896];
        subkey[10623:10560] = key[895:832];
        subkey[10559:10496] = key[831:768];
        subkey[10495:10432] = key[767:704];
        subkey[10431:10368] = key[703:640] + tweak[127:64];
        subkey[10367:10304] = key[639:576] + tweak[63:0];
        subkey[10303:10240] = key[575:512] + 64'd10;
    //subkey 12
        subkey[12287:12224] = key[383:320];
        subkey[12223:12160] = key[319:256];
        subkey[12159:12096] = key[255:192];
        subkey[12095:12032] = key[191:128];
        subkey[12031:11968] = key[127:64];
        subkey[11967:11904] = key[63:0];
        subkey[11903:11840] = key[1087:1024];
        subkey[11839:11776] = key[1023:960];
        subkey[11775:11712] = key[959:896];
        subkey[11711:11648] = key[895:832];
        subkey[11647:11584] = key[831:768];
        subkey[11583:11520] = key[767:704];
        subkey[11519:11456] = key[703:640];
        subkey[11455:11392] = key[639:576] + tweak[63:0];
        subkey[11391:11328] = key[575:512] + tweak[191:128];
        subkey[11327:11264] = key[511:448] + 64'd11;
    //subkey 13
        subkey[13311:13248] = key[319:256];
        subkey[13247:13184] = key[255:192];
        subkey[13183:13120] = key[191:128];
        subkey[13119:13056] = key[127:64];
        subkey[13055:12992] = key[63:0];
        subkey[12991:12928] = key[1087:1024];
        subkey[12927:12864] = key[1023:960];
        subkey[12863:12800] = key[959:896];
        subkey[12799:12736] = key[895:832];
        subkey[12735:12672] = key[831:768];
        subkey[12671:12608] = key[767:704];
        subkey[12607:12544] = key[703:640];
        subkey[12543:12480] = key[639:576];
        subkey[12479:12416] = key[575:512] + tweak[191:128];
        subkey[12415:12352] = key[511:448] + tweak[127:64];
        subkey[12351:12288] = key[447:384] + 64'd12;
    //subkey 14
        subkey[14335:14272] = key[255:192];
        subkey[14271:14208] = key[191:128];
        subkey[14207:14144] = key[127:64];
        subkey[14143:14080] = key[63:0];
        subkey[14079:14016] = key[1087:1024];
        subkey[14015:13952] = key[1023:960];
        subkey[13951:13888] = key[959:896];
        subkey[13887:13824] = key[895:832];
        subkey[13823:13760] = key[831:768];
        subkey[13759:13696] = key[767:704];
        subkey[13695:13632] = key[703:640];
        subkey[13631:13568] = key[639:576];
        subkey[13567:13504] = key[575:512];
        subkey[13503:13440] = key[511:448] + tweak[127:64];
        subkey[13439:13376] = key[447:384] + tweak[63:0];
        subkey[13375:13312] = key[383:320] + 64'd13;
    //subkey 15
        subkey[15359:15296] = key[191:128];
        subkey[15295:15232] = key[127:64];
        subkey[15231:15168] = key[63:0];
        subkey[15167:15104] = key[1087:1024];
        subkey[15103:15040] = key[1023:960];
        subkey[15039:14976] = key[959:896];
        subkey[14975:14912] = key[895:832];
        subkey[14911:14848] = key[831:768];
        subkey[14847:14784] = key[767:704];
        subkey[14783:14720] = key[703:640];
        subkey[14719:14656] = key[639:576];
        subkey[14655:14592] = key[575:512];
        subkey[14591:14528] = key[511:448];
        subkey[14527:14464] = key[447:384] + tweak[63:0];
        subkey[14463:14400] = key[383:320] + tweak[191:128];
        subkey[14399:14336] = key[319:256] + 64'd14;
    //subkey 16
        subkey[16383:16320] = key[127:64];
        subkey[16319:16256] = key[63:0];
        subkey[16255:16192] = key[1087:1024];
        subkey[16191:16128] = key[1023:960];
        subkey[16127:16064] = key[959:896];
        subkey[16063:16000] = key[895:832];
        subkey[15999:15936] = key[831:768];
        subkey[15935:15872] = key[767:704];
        subkey[15871:15808] = key[703:640];
        subkey[15807:15744] = key[639:576];
        subkey[15743:15680] = key[575:512];
        subkey[15679:15616] = key[511:448];
        subkey[15615:15552] = key[447:384];
        subkey[15551:15488] = key[383:320] + tweak[191:128];
        subkey[15487:15424] = key[319:256] + tweak[127:64];
        subkey[15423:15360] = key[255:192] + 64'd15;
    //subkey 17
        subkey[17407:17344] = key[63:0];
        subkey[17343:17280] = key[1087:1024];
        subkey[17279:17216] = key[1023:960];
        subkey[17215:17152] = key[959:896];
        subkey[17151:17088] = key[895:832];
        subkey[17087:17024] = key[831:768];
        subkey[17023:16960] = key[767:704];
        subkey[16959:16896] = key[703:640];
        subkey[16895:16832] = key[639:576];
        subkey[16831:16768] = key[575:512];
        subkey[16767:16704] = key[511:448];
        subkey[16703:16640] = key[447:384];
        subkey[16639:16576] = key[383:320];
        subkey[16575:16512] = key[319:256] + tweak[127:64];
        subkey[16511:16448] = key[255:192] + tweak[63:0];
        subkey[16447:16384] = key[191:128] + 64'd16;
    //subkey 18
        subkey[18431:18368] = key[1087:1024];
        subkey[18367:18304] = key[1023:960];
        subkey[18303:18240] = key[959:896];
        subkey[18239:18176] = key[895:832];
        subkey[18175:18112] = key[831:768];
        subkey[18111:18048] = key[767:704];
        subkey[18047:17984] = key[703:640];
        subkey[17983:17920] = key[639:576];
        subkey[17919:17856] = key[575:512];
        subkey[17855:17792] = key[511:448];
        subkey[17791:17728] = key[447:384];
        subkey[17727:17664] = key[383:320];
        subkey[17663:17600] = key[319:256];
        subkey[17599:17536] = key[255:192] + tweak[63:0];
        subkey[17535:17472] = key[191:128] + tweak[191:128];
        subkey[17471:17408] = key[127:64] + 64'd17;
    //subkey 19
        subkey[19455:19392] = key[1023:960];
        subkey[19391:19328] = key[959:896];
        subkey[19327:19264] = key[895:832];
        subkey[19263:19200] = key[831:768];
        subkey[19199:19136] = key[767:704];
        subkey[19135:19072] = key[703:640];
        subkey[19071:19008] = key[639:576];
        subkey[19007:18944] = key[575:512];
        subkey[18943:18880] = key[511:448];
        subkey[18879:18816] = key[447:384];
        subkey[18815:18752] = key[383:320];
        subkey[18751:18688] = key[319:256];
        subkey[18687:18624] = key[255:192];
        subkey[18623:18560] = key[191:128] + tweak[191:128];
        subkey[18559:18496] = key[127:64] + tweak[127:64];
        subkey[18495:18432] = key[63:0] + 64'd18;
    //subkey 20
        subkey[20479:20416] = key[959:896];
        subkey[20415:20352] = key[895:832];
        subkey[20351:20288] = key[831:768];
        subkey[20287:20224] = key[767:704];
        subkey[20223:20160] = key[703:640];
        subkey[20159:20096] = key[639:576];
        subkey[20095:20032] = key[575:512];
        subkey[20031:19968] = key[511:448];
        subkey[19967:19904] = key[447:384];
        subkey[19903:19840] = key[383:320];
        subkey[19839:19776] = key[319:256];
        subkey[19775:19712] = key[255:192];
        subkey[19711:19648] = key[191:128];
        subkey[19647:19584] = key[127:64] + tweak[127:64];
        subkey[19583:19520] = key[63:0] + tweak[63:0];
        subkey[19519:19456] = key[1087:1024] + 64'd19;
    //subkey 21
        subkey[21503:21440] = key[895:832];
        subkey[21439:21376] = key[831:768];
        subkey[21375:21312] = key[767:704];
        subkey[21311:21248] = key[703:640];
        subkey[21247:21184] = key[639:576];
        subkey[21183:21120] = key[575:512];
        subkey[21119:21056] = key[511:448];
        subkey[21055:20992] = key[447:384];
        subkey[20991:20928] = key[383:320];
        subkey[20927:20864] = key[319:256];
        subkey[20863:20800] = key[255:192];
        subkey[20799:20736] = key[191:128];
        subkey[20735:20672] = key[127:64];
        subkey[20671:20608] = key[63:0] + tweak[63:0];
        subkey[20607:20544] = key[1087:1024] + tweak[191:128];
        subkey[20543:20480] = key[1023:960] + 64'd20;
    end
endmodule