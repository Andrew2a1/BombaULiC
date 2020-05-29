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
        <port polarity="Input" name="clock" />
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
        <block symbolname="dzielnik_zegara" name="XLXI_1">
            <blockpin signalname="clock" name="clock" />
            <blockpin signalname="XLXN_4" name="clock_out" />
        </block>
        <block symbolname="wybor_cyfry" name="XLXI_2">
            <blockpin signalname="XLXN_4" name="clock" />
            <blockpin name="cyfra(1:0)" />
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
    </sheet>
</drawing>