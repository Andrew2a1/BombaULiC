<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clock" />
        <signal name="segment(3:0)" />
        <signal name="kropka" />
        <signal name="XLXN_10(1:0)" />
        <signal name="XLXN_12(3:0)" />
        <signal name="katody_7seg(6:0)" />
        <signal name="XLXN_16(3:0)" />
        <signal name="XLXN_17(3:0)" />
        <signal name="XLXN_18(3:0)" />
        <signal name="XLXN_19(3:0)" />
        <signal name="diody(3:0)" />
        <signal name="przyciski(1:0)" />
        <signal name="przelaczniki(1:0)" />
        <signal name="XLXN_20" />
        <signal name="XLXN_28" />
        <port polarity="Input" name="clock" />
        <port polarity="Output" name="segment(3:0)" />
        <port polarity="Output" name="kropka" />
        <port polarity="Output" name="katody_7seg(6:0)" />
        <port polarity="Output" name="diody(3:0)" />
        <port polarity="Input" name="przyciski(1:0)" />
        <port polarity="Input" name="przelaczniki(1:0)" />
        <blockdef name="dzielnik_zegara">
            <timestamp>2020-5-29T8:48:38</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="wybor_cyfry">
            <timestamp>2020-5-29T12:35:0</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="wybor_segmentu">
            <timestamp>2020-5-29T13:39:43</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="sterowanie_kropka">
            <timestamp>2020-5-29T13:48:49</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="multiplekser_vect">
            <timestamp>2020-5-29T14:3:34</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="transkoder_7seg">
            <timestamp>2020-5-29T13:58:33</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="bomba">
            <timestamp>2020-5-29T14:9:47</timestamp>
            <rect width="304" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-300" height="24" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="dzielnik_100x">
            <timestamp>2020-5-30T16:15:47</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="dzielnik_zegara" name="XLXI_1">
            <blockpin signalname="clock" name="clock" />
            <blockpin signalname="XLXN_28" name="clock_out" />
        </block>
        <block symbolname="wybor_cyfry" name="XLXI_2">
            <blockpin signalname="XLXN_28" name="clock" />
            <blockpin signalname="XLXN_10(1:0)" name="cyfra(1:0)" />
        </block>
        <block symbolname="wybor_segmentu" name="XLXI_4">
            <blockpin signalname="XLXN_10(1:0)" name="cyfra(1:0)" />
            <blockpin signalname="segment(3:0)" name="segment(3:0)" />
        </block>
        <block symbolname="sterowanie_kropka" name="XLXI_5">
            <blockpin signalname="XLXN_10(1:0)" name="cyfra(1:0)" />
            <blockpin signalname="kropka" name="kropka" />
        </block>
        <block symbolname="multiplekser_vect" name="XLXI_6">
            <blockpin signalname="XLXN_10(1:0)" name="segment(1:0)" />
            <blockpin signalname="XLXN_16(3:0)" name="cyfra1(3:0)" />
            <blockpin signalname="XLXN_17(3:0)" name="cyfra2(3:0)" />
            <blockpin signalname="XLXN_18(3:0)" name="cyfra3(3:0)" />
            <blockpin signalname="XLXN_19(3:0)" name="cyfra4(3:0)" />
            <blockpin signalname="XLXN_12(3:0)" name="cyfra(3:0)" />
        </block>
        <block symbolname="transkoder_7seg" name="XLXI_7">
            <blockpin signalname="XLXN_12(3:0)" name="cyfra(3:0)" />
            <blockpin signalname="katody_7seg(6:0)" name="katody(6:0)" />
        </block>
        <block symbolname="bomba" name="XLXI_8">
            <blockpin signalname="XLXN_20" name="clock" />
            <blockpin signalname="przyciski(1:0)" name="przyciski(1:0)" />
            <blockpin signalname="przelaczniki(1:0)" name="przelaczniki(1:0)" />
            <blockpin signalname="XLXN_16(3:0)" name="cyfra1(3:0)" />
            <blockpin signalname="XLXN_17(3:0)" name="cyfra2(3:0)" />
            <blockpin signalname="XLXN_18(3:0)" name="cyfra3(3:0)" />
            <blockpin signalname="XLXN_19(3:0)" name="cyfra4(3:0)" />
            <blockpin signalname="diody(3:0)" name="diody(3:0)" />
        </block>
        <block symbolname="dzielnik_100x" name="XLXI_9">
            <blockpin signalname="XLXN_28" name="clock" />
            <blockpin signalname="XLXN_20" name="clock_out" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1120" y="736" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clock">
            <wire x2="1104" y1="704" y2="704" x1="1088" />
            <wire x2="1120" y1="704" y2="704" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1088" y="704" name="clock" orien="R180" />
        <instance x="1616" y="736" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2112" y="736" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2128" y="912" name="XLXI_5" orien="R0">
        </instance>
        <branch name="segment(3:0)">
            <wire x2="2512" y1="704" y2="704" x1="2496" />
            <wire x2="3088" y1="704" y2="704" x1="2512" />
        </branch>
        <branch name="kropka">
            <wire x2="2528" y1="880" y2="880" x1="2512" />
            <wire x2="3120" y1="880" y2="880" x1="2528" />
        </branch>
        <instance x="2144" y="1376" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_10(1:0)">
            <wire x2="2048" y1="704" y2="704" x1="2000" />
            <wire x2="2112" y1="704" y2="704" x1="2048" />
            <wire x2="2048" y1="704" y2="880" x1="2048" />
            <wire x2="2128" y1="880" y2="880" x1="2048" />
            <wire x2="2048" y1="880" y2="1088" x1="2048" />
            <wire x2="2144" y1="1088" y2="1088" x1="2048" />
        </branch>
        <branch name="XLXN_12(3:0)">
            <wire x2="2672" y1="1088" y2="1088" x1="2528" />
        </branch>
        <instance x="2672" y="1120" name="XLXI_7" orien="R0">
        </instance>
        <branch name="katody_7seg(6:0)">
            <wire x2="3072" y1="1088" y2="1088" x1="3056" />
            <wire x2="3120" y1="1088" y2="1088" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3120" y="1088" name="katody_7seg(6:0)" orien="R0" />
        <iomarker fontsize="28" x="3088" y="704" name="segment(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3120" y="880" name="kropka" orien="R0" />
        <instance x="1568" y="1440" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_16(3:0)">
            <wire x2="2144" y1="1152" y2="1152" x1="2000" />
        </branch>
        <branch name="XLXN_17(3:0)">
            <wire x2="2144" y1="1216" y2="1216" x1="2000" />
        </branch>
        <branch name="XLXN_18(3:0)">
            <wire x2="2144" y1="1280" y2="1280" x1="2000" />
        </branch>
        <branch name="XLXN_19(3:0)">
            <wire x2="2144" y1="1344" y2="1344" x1="2000" />
        </branch>
        <branch name="diody(3:0)">
            <wire x2="3120" y1="1408" y2="1408" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="3120" y="1408" name="diody(3:0)" orien="R0" />
        <branch name="przyciski(1:0)">
            <wire x2="1552" y1="1280" y2="1280" x1="1200" />
            <wire x2="1568" y1="1280" y2="1280" x1="1552" />
        </branch>
        <branch name="przelaczniki(1:0)">
            <wire x2="1552" y1="1408" y2="1408" x1="1248" />
            <wire x2="1568" y1="1408" y2="1408" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1280" name="przyciski(1:0)" orien="R180" />
        <iomarker fontsize="28" x="1248" y="1408" name="przelaczniki(1:0)" orien="R180" />
        <branch name="XLXN_20">
            <wire x2="1520" y1="1136" y2="1152" x1="1520" />
            <wire x2="1552" y1="1152" y2="1152" x1="1520" />
            <wire x2="1568" y1="1152" y2="1152" x1="1552" />
        </branch>
        <instance x="1488" y="752" name="XLXI_9" orien="R90">
        </instance>
        <branch name="XLXN_28">
            <wire x2="1520" y1="704" y2="704" x1="1504" />
            <wire x2="1616" y1="704" y2="704" x1="1520" />
            <wire x2="1520" y1="704" y2="752" x1="1520" />
        </branch>
    </sheet>
</drawing>