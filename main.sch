<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clock" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5(1:0)" />
        <signal name="XLXN_6(1:0)" />
        <signal name="XLXN_7(1:0)" />
        <signal name="segment(3:0)" />
        <signal name="kropka" />
        <port polarity="Input" name="clock" />
        <port polarity="Output" name="segment(3:0)" />
        <port polarity="Output" name="kropka" />
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
        <block symbolname="dzielnik_zegara" name="XLXI_1">
            <blockpin signalname="clock" name="clock" />
            <blockpin signalname="XLXN_4" name="clock_out" />
        </block>
        <block symbolname="wybor_cyfry" name="XLXI_2">
            <blockpin signalname="XLXN_4" name="clock" />
            <blockpin signalname="XLXN_5(1:0)" name="cyfra(1:0)" />
        </block>
        <block symbolname="wybor_segmentu" name="XLXI_4">
            <blockpin signalname="XLXN_5(1:0)" name="cyfra(1:0)" />
            <blockpin signalname="segment(3:0)" name="segment(3:0)" />
        </block>
        <block symbolname="sterowanie_kropka" name="XLXI_5">
            <blockpin signalname="XLXN_5(1:0)" name="cyfra(1:0)" />
            <blockpin signalname="kropka" name="kropka" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1120" y="736" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clock">
            <wire x2="1120" y1="704" y2="704" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1088" y="704" name="clock" orien="R180" />
        <branch name="XLXN_4">
            <wire x2="1616" y1="704" y2="704" x1="1504" />
        </branch>
        <instance x="1616" y="736" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_5(1:0)">
            <wire x2="2048" y1="704" y2="704" x1="2000" />
            <wire x2="2112" y1="704" y2="704" x1="2048" />
            <wire x2="2048" y1="704" y2="880" x1="2048" />
            <wire x2="2128" y1="880" y2="880" x1="2048" />
        </branch>
        <instance x="2112" y="736" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2128" y="912" name="XLXI_5" orien="R0">
        </instance>
        <branch name="segment(3:0)">
            <wire x2="2512" y1="704" y2="704" x1="2496" />
            <wire x2="2560" y1="704" y2="704" x1="2512" />
        </branch>
        <branch name="kropka">
            <wire x2="2528" y1="880" y2="880" x1="2512" />
            <wire x2="2560" y1="880" y2="880" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2560" y="704" name="segment(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2560" y="880" name="kropka" orien="R0" />
    </sheet>
</drawing>