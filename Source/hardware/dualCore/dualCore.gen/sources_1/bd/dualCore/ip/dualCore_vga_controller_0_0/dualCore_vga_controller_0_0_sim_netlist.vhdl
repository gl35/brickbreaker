-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Mar 25 16:49:04 2023
-- Host        : LAPTOP-M2KA7OKE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/Grad/23SP/ENSC894/Proj/dualCore/dualCore.gen/sources_1/bd/dualCore/ip/dualCore_vga_controller_0_0/dualCore_vga_controller_0_0_sim_netlist.vhdl
-- Design      : dualCore_vga_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dualCore_vga_controller_0_0_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of dualCore_vga_controller_0_0_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of dualCore_vga_controller_0_0_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of dualCore_vga_controller_0_0_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of dualCore_vga_controller_0_0_xpm_cdc_async_rst : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dualCore_vga_controller_0_0_xpm_cdc_async_rst : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of dualCore_vga_controller_0_0_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of dualCore_vga_controller_0_0_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of dualCore_vga_controller_0_0_xpm_cdc_async_rst : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of dualCore_vga_controller_0_0_xpm_cdc_async_rst : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of dualCore_vga_controller_0_0_xpm_cdc_async_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of dualCore_vga_controller_0_0_xpm_cdc_async_rst : entity is "ASYNC_RST";
end dualCore_vga_controller_0_0_xpm_cdc_async_rst;

architecture STRUCTURE of dualCore_vga_controller_0_0_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dualCore_vga_controller_0_0_xpm_cdc_async_rst__1\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \dualCore_vga_controller_0_0_xpm_cdc_async_rst__1\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dualCore_vga_controller_0_0_xpm_cdc_async_rst__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dualCore_vga_controller_0_0_xpm_cdc_async_rst__1\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \dualCore_vga_controller_0_0_xpm_cdc_async_rst__1\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dualCore_vga_controller_0_0_xpm_cdc_async_rst__1\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \dualCore_vga_controller_0_0_xpm_cdc_async_rst__1\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \dualCore_vga_controller_0_0_xpm_cdc_async_rst__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dualCore_vga_controller_0_0_xpm_cdc_async_rst__1\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \dualCore_vga_controller_0_0_xpm_cdc_async_rst__1\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dualCore_vga_controller_0_0_xpm_cdc_async_rst__1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dualCore_vga_controller_0_0_xpm_cdc_async_rst__1\ : entity is "ASYNC_RST";
end \dualCore_vga_controller_0_0_xpm_cdc_async_rst__1\;

architecture STRUCTURE of \dualCore_vga_controller_0_0_xpm_cdc_async_rst__1\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dualCore_vga_controller_0_0_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of dualCore_vga_controller_0_0_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of dualCore_vga_controller_0_0_xpm_cdc_gray : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dualCore_vga_controller_0_0_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of dualCore_vga_controller_0_0_xpm_cdc_gray : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of dualCore_vga_controller_0_0_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of dualCore_vga_controller_0_0_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of dualCore_vga_controller_0_0_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of dualCore_vga_controller_0_0_xpm_cdc_gray : entity is 12;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of dualCore_vga_controller_0_0_xpm_cdc_gray : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of dualCore_vga_controller_0_0_xpm_cdc_gray : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of dualCore_vga_controller_0_0_xpm_cdc_gray : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of dualCore_vga_controller_0_0_xpm_cdc_gray : entity is "GRAY";
end dualCore_vga_controller_0_0_xpm_cdc_gray;

architecture STRUCTURE of dualCore_vga_controller_0_0_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[9]_i_1\ : label is "soft_lutpair4";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(10),
      Q => \dest_graysync_ff[0]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(11),
      Q => \dest_graysync_ff[0]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(10),
      Q => \dest_graysync_ff[1]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(11),
      Q => \dest_graysync_ff[1]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => binval(1),
      O => binval(0)
    );
\dest_out_bin_ff[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(10),
      I1 => \dest_graysync_ff[1]\(11),
      O => binval(10)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => binval(6),
      I4 => \dest_graysync_ff[1]\(4),
      I5 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => binval(6),
      I3 => \dest_graysync_ff[1]\(5),
      I4 => \dest_graysync_ff[1]\(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => binval(6),
      I3 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => binval(6),
      I2 => \dest_graysync_ff[1]\(5),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => binval(6),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(10),
      I3 => \dest_graysync_ff[1]\(11),
      I4 => \dest_graysync_ff[1]\(9),
      I5 => \dest_graysync_ff[1]\(7),
      O => binval(6)
    );
\dest_out_bin_ff[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(11),
      I3 => \dest_graysync_ff[1]\(10),
      I4 => \dest_graysync_ff[1]\(8),
      O => binval(7)
    );
\dest_out_bin_ff[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(10),
      I2 => \dest_graysync_ff[1]\(11),
      I3 => \dest_graysync_ff[1]\(9),
      O => binval(8)
    );
\dest_out_bin_ff[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(11),
      I2 => \dest_graysync_ff[1]\(10),
      O => binval(9)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(10),
      Q => dest_out_bin(10),
      R => '0'
    );
\dest_out_bin_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(11),
      Q => dest_out_bin(11),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\dest_out_bin_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(8),
      Q => dest_out_bin(8),
      R => '0'
    );
\dest_out_bin_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(9),
      Q => dest_out_bin(9),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(11),
      I1 => src_in_bin(10),
      O => gray_enc(10)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(10),
      I1 => src_in_bin(9),
      O => gray_enc(9)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(10),
      Q => async_path(10),
      R => '0'
    );
\src_gray_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(11),
      Q => async_path(11),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dualCore_vga_controller_0_0_xpm_cdc_gray__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dualCore_vga_controller_0_0_xpm_cdc_gray__parameterized1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dualCore_vga_controller_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dualCore_vga_controller_0_0_xpm_cdc_gray__parameterized1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \dualCore_vga_controller_0_0_xpm_cdc_gray__parameterized1\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dualCore_vga_controller_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \dualCore_vga_controller_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dualCore_vga_controller_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \dualCore_vga_controller_0_0_xpm_cdc_gray__parameterized1\ : entity is 13;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dualCore_vga_controller_0_0_xpm_cdc_gray__parameterized1\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \dualCore_vga_controller_0_0_xpm_cdc_gray__parameterized1\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dualCore_vga_controller_0_0_xpm_cdc_gray__parameterized1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dualCore_vga_controller_0_0_xpm_cdc_gray__parameterized1\ : entity is "GRAY";
end \dualCore_vga_controller_0_0_xpm_cdc_gray__parameterized1\;

architecture STRUCTURE of \dualCore_vga_controller_0_0_xpm_cdc_gray__parameterized1\ is
  signal async_path : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][12]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][12]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_gray_ff[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \src_gray_ff[9]_i_1\ : label is "soft_lutpair9";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(10),
      Q => \dest_graysync_ff[0]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(11),
      Q => \dest_graysync_ff[0]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(12),
      Q => \dest_graysync_ff[0]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(10),
      Q => \dest_graysync_ff[1]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(11),
      Q => \dest_graysync_ff[1]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(12),
      Q => \dest_graysync_ff[1]\(12),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => binval(2),
      I2 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(10),
      I1 => \dest_graysync_ff[1]\(12),
      I2 => \dest_graysync_ff[1]\(11),
      O => binval(10)
    );
\dest_out_bin_ff[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(11),
      I1 => \dest_graysync_ff[1]\(12),
      O => binval(11)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => binval(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => binval(7),
      I4 => \dest_graysync_ff[1]\(5),
      I5 => \dest_graysync_ff[1]\(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => binval(7),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => binval(7),
      I3 => \dest_graysync_ff[1]\(5),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => binval(7),
      I2 => \dest_graysync_ff[1]\(6),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => binval(7),
      O => binval(6)
    );
\dest_out_bin_ff[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(11),
      I3 => \dest_graysync_ff[1]\(12),
      I4 => \dest_graysync_ff[1]\(10),
      I5 => \dest_graysync_ff[1]\(8),
      O => binval(7)
    );
\dest_out_bin_ff[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(10),
      I2 => \dest_graysync_ff[1]\(12),
      I3 => \dest_graysync_ff[1]\(11),
      I4 => \dest_graysync_ff[1]\(9),
      O => binval(8)
    );
\dest_out_bin_ff[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(11),
      I2 => \dest_graysync_ff[1]\(12),
      I3 => \dest_graysync_ff[1]\(10),
      O => binval(9)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(10),
      Q => dest_out_bin(10),
      R => '0'
    );
\dest_out_bin_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(11),
      Q => dest_out_bin(11),
      R => '0'
    );
\dest_out_bin_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(12),
      Q => dest_out_bin(12),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\dest_out_bin_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(8),
      Q => dest_out_bin(8),
      R => '0'
    );
\dest_out_bin_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(9),
      Q => dest_out_bin(9),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(11),
      I1 => src_in_bin(10),
      O => gray_enc(10)
    );
\src_gray_ff[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(12),
      I1 => src_in_bin(11),
      O => gray_enc(11)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(10),
      I1 => src_in_bin(9),
      O => gray_enc(9)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(10),
      Q => async_path(10),
      R => '0'
    );
\src_gray_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(11),
      Q => async_path(11),
      R => '0'
    );
\src_gray_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(12),
      Q => async_path(12),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dualCore_vga_controller_0_0_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of dualCore_vga_controller_0_0_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of dualCore_vga_controller_0_0_xpm_cdc_single : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dualCore_vga_controller_0_0_xpm_cdc_single : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of dualCore_vga_controller_0_0_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of dualCore_vga_controller_0_0_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of dualCore_vga_controller_0_0_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of dualCore_vga_controller_0_0_xpm_cdc_single : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of dualCore_vga_controller_0_0_xpm_cdc_single : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of dualCore_vga_controller_0_0_xpm_cdc_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of dualCore_vga_controller_0_0_xpm_cdc_single : entity is "SINGLE";
end dualCore_vga_controller_0_0_xpm_cdc_single;

architecture STRUCTURE of dualCore_vga_controller_0_0_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dualCore_vga_controller_0_0_xpm_cdc_single__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dualCore_vga_controller_0_0_xpm_cdc_single__2\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dualCore_vga_controller_0_0_xpm_cdc_single__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dualCore_vga_controller_0_0_xpm_cdc_single__2\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dualCore_vga_controller_0_0_xpm_cdc_single__2\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dualCore_vga_controller_0_0_xpm_cdc_single__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dualCore_vga_controller_0_0_xpm_cdc_single__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dualCore_vga_controller_0_0_xpm_cdc_single__2\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \dualCore_vga_controller_0_0_xpm_cdc_single__2\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dualCore_vga_controller_0_0_xpm_cdc_single__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dualCore_vga_controller_0_0_xpm_cdc_single__2\ : entity is "SINGLE";
end \dualCore_vga_controller_0_0_xpm_cdc_single__2\;

architecture STRUCTURE of \dualCore_vga_controller_0_0_xpm_cdc_single__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 305232)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dualCore_vga_controller_0_0_fifo_generator_0 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    underflow : out STD_LOGIC;
    prog_full : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dualCore_vga_controller_0_0_fifo_generator_0 : entity is "fifo_generator_0,fifo_generator_v13_2_5,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dualCore_vga_controller_0_0_fifo_generator_0 : entity is "fifo_generator_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of dualCore_vga_controller_0_0_fifo_generator_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of dualCore_vga_controller_0_0_fifo_generator_0 : entity is "fifo_generator_v13_2_5,Vivado 2020.2";
end dualCore_vga_controller_0_0_fifo_generator_0;

architecture STRUCTURE of dualCore_vga_controller_0_0_fifo_generator_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^dout\ : STD_LOGIC_VECTOR ( 23 downto 4 );
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 12;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 64;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 32;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 1;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 1;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 1;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 1;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 2;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "4kx9";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 3000;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 2000;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 2;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 13;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 8192;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 13;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 12;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 4096;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 12;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute x_interface_info : string;
  attribute x_interface_info of almost_empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY";
  attribute x_interface_info of almost_full : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL";
  attribute x_interface_info of empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY";
  attribute x_interface_info of full : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL";
  attribute x_interface_info of rd_clk : signal is "xilinx.com:signal:clock:1.0 read_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rd_clk : signal is "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rd_en : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN";
  attribute x_interface_info of wr_clk : signal is "xilinx.com:signal:clock:1.0 write_clk CLK";
  attribute x_interface_parameter of wr_clk : signal is "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of wr_en : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN";
  attribute x_interface_info of din : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA";
  attribute x_interface_info of dout : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  dout(31) <= \<const0>\;
  dout(30) <= \<const0>\;
  dout(29) <= \<const0>\;
  dout(28) <= \<const0>\;
  dout(27) <= \<const0>\;
  dout(26) <= \<const0>\;
  dout(25) <= \<const0>\;
  dout(24) <= \<const0>\;
  dout(23 downto 20) <= \^dout\(23 downto 20);
  dout(19) <= \<const0>\;
  dout(18) <= \<const0>\;
  dout(17) <= \<const0>\;
  dout(16) <= \<const0>\;
  dout(15 downto 12) <= \^dout\(15 downto 12);
  dout(11) <= \<const0>\;
  dout(10) <= \<const0>\;
  dout(9) <= \<const0>\;
  dout(8) <= \<const0>\;
  dout(7 downto 4) <= \^dout\(7 downto 4);
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \<const0>\;
  full <= \<const0>\;
  overflow <= \<const0>\;
  underflow <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.dualCore_vga_controller_0_0_fifo_generator_v13_2_5
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(11 downto 0) => NLW_U0_data_count_UNCONNECTED(11 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(63 downto 56) => B"00000000",
      din(55 downto 34) => din(55 downto 34),
      din(33 downto 24) => B"0000000000",
      din(23 downto 2) => din(23 downto 2),
      din(1 downto 0) => B"00",
      dout(31 downto 24) => NLW_U0_dout_UNCONNECTED(31 downto 24),
      dout(23 downto 20) => \^dout\(23 downto 20),
      dout(19 downto 16) => NLW_U0_dout_UNCONNECTED(19 downto 16),
      dout(15 downto 12) => \^dout\(15 downto 12),
      dout(11 downto 8) => NLW_U0_dout_UNCONNECTED(11 downto 8),
      dout(7 downto 4) => \^dout\(7 downto 4),
      dout(3 downto 0) => NLW_U0_dout_UNCONNECTED(3 downto 0),
      empty => empty,
      full => NLW_U0_full_UNCONNECTED,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(12 downto 0) => B"0000000000000",
      prog_empty_thresh_assert(12 downto 0) => B"0000000000000",
      prog_empty_thresh_negate(12 downto 0) => B"0000000000000",
      prog_full => prog_full,
      prog_full_thresh(11 downto 0) => B"000000000000",
      prog_full_thresh_assert(11 downto 0) => B"000000000000",
      prog_full_thresh_negate(11 downto 0) => B"000000000000",
      rd_clk => rd_clk,
      rd_data_count(12 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(12 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => rst,
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => wr_clk,
      wr_data_count(11 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(11 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dualCore_vga_controller_0_0_vga_controller is
  port (
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 26 downto 0 );
    VGA_HS : out STD_LOGIC;
    VGA_VS : out STD_LOGIC;
    VGA_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_G : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC;
    switch_buffer_ack_reg_reg_0 : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    fifo_rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    pixel_rstn : in STD_LOGIC;
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 43 downto 0 );
    M_AXI_RVALID : in STD_LOGIC;
    rfifo_count : in STD_LOGIC_VECTOR ( 7 downto 0 );
    switch_buffer : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dualCore_vga_controller_0_0_vga_controller : entity is "vga_controller";
end dualCore_vga_controller_0_0_vga_controller;

architecture STRUCTURE of dualCore_vga_controller_0_0_vga_controller is
  signal ARVALID_reg : STD_LOGIC;
  signal ARVALID_reg_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal VGA_HS_INST_0_i_1_n_0 : STD_LOGIC;
  signal VGA_VS_INST_0_i_1_n_0 : STD_LOGIC;
  signal VGA_VS_INST_0_i_2_n_0 : STD_LOGIC;
  signal current_base_addr : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \current_base_addr[24]_i_1_n_0\ : STD_LOGIC;
  signal current_max_addr : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal d_out : STD_LOGIC_VECTOR ( 23 downto 4 );
  signal data : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal fifo_empty : STD_LOGIC;
  signal flush_arvalid : STD_LOGIC;
  signal flush_arvalid_i_1_n_0 : STD_LOGIC;
  signal flush_done : STD_LOGIC;
  signal flush_done_i_1_n_0 : STD_LOGIC;
  signal flush_rready : STD_LOGIC;
  signal flush_rready_i_1_n_0 : STD_LOGIC;
  signal h_count : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \h_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[10]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[10]_i_3_n_0\ : STD_LOGIC;
  signal \h_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[9]_i_5_n_0\ : STD_LOGIC;
  signal \h_count[9]_i_6_n_0\ : STD_LOGIC;
  signal h_count_0 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal old_base_addr : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal old_base_addr_1 : STD_LOGIC;
  signal old_max_addr : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 2 to 2 );
  signal p_2_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal prog_full : STD_LOGIC;
  signal \rd_addr_reg1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__0_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__0_n_1\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__0_n_2\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__0_n_3\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__1_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__1_n_1\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__1_n_2\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__1_n_3\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__2_n_0\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__2_n_1\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__2_n_2\ : STD_LOGIC;
  signal \rd_addr_reg1_carry__2_n_3\ : STD_LOGIC;
  signal rd_addr_reg1_carry_i_1_n_0 : STD_LOGIC;
  signal rd_addr_reg1_carry_i_2_n_0 : STD_LOGIC;
  signal rd_addr_reg1_carry_i_3_n_0 : STD_LOGIC;
  signal rd_addr_reg1_carry_i_4_n_0 : STD_LOGIC;
  signal rd_addr_reg1_carry_n_0 : STD_LOGIC;
  signal rd_addr_reg1_carry_n_1 : STD_LOGIC;
  signal rd_addr_reg1_carry_n_2 : STD_LOGIC;
  signal rd_addr_reg1_carry_n_3 : STD_LOGIC;
  signal \rd_addr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[13]_i_4_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[13]_i_5_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[17]_i_3_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[17]_i_4_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[17]_i_5_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[21]_i_3_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[21]_i_4_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[21]_i_5_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[25]_i_3_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[25]_i_4_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[25]_i_5_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[29]_i_3_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[29]_i_4_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[29]_i_5_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal \rd_addr_reg[9]_i_5_n_0\ : STD_LOGIC;
  signal \rd_addr_reg_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr_reg_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \rd_addr_reg_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \rd_addr_reg_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \rd_addr_reg_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \rd_addr_reg_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \rd_addr_reg_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \rd_addr_reg_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \rd_addr_reg_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr_reg_reg[17]_i_1_n_1\ : STD_LOGIC;
  signal \rd_addr_reg_reg[17]_i_1_n_2\ : STD_LOGIC;
  signal \rd_addr_reg_reg[17]_i_1_n_3\ : STD_LOGIC;
  signal \rd_addr_reg_reg[17]_i_1_n_4\ : STD_LOGIC;
  signal \rd_addr_reg_reg[17]_i_1_n_5\ : STD_LOGIC;
  signal \rd_addr_reg_reg[17]_i_1_n_6\ : STD_LOGIC;
  signal \rd_addr_reg_reg[17]_i_1_n_7\ : STD_LOGIC;
  signal \rd_addr_reg_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr_reg_reg[21]_i_1_n_1\ : STD_LOGIC;
  signal \rd_addr_reg_reg[21]_i_1_n_2\ : STD_LOGIC;
  signal \rd_addr_reg_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \rd_addr_reg_reg[21]_i_1_n_4\ : STD_LOGIC;
  signal \rd_addr_reg_reg[21]_i_1_n_5\ : STD_LOGIC;
  signal \rd_addr_reg_reg[21]_i_1_n_6\ : STD_LOGIC;
  signal \rd_addr_reg_reg[21]_i_1_n_7\ : STD_LOGIC;
  signal \rd_addr_reg_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr_reg_reg[25]_i_1_n_1\ : STD_LOGIC;
  signal \rd_addr_reg_reg[25]_i_1_n_2\ : STD_LOGIC;
  signal \rd_addr_reg_reg[25]_i_1_n_3\ : STD_LOGIC;
  signal \rd_addr_reg_reg[25]_i_1_n_4\ : STD_LOGIC;
  signal \rd_addr_reg_reg[25]_i_1_n_5\ : STD_LOGIC;
  signal \rd_addr_reg_reg[25]_i_1_n_6\ : STD_LOGIC;
  signal \rd_addr_reg_reg[25]_i_1_n_7\ : STD_LOGIC;
  signal \rd_addr_reg_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr_reg_reg[29]_i_1_n_1\ : STD_LOGIC;
  signal \rd_addr_reg_reg[29]_i_1_n_2\ : STD_LOGIC;
  signal \rd_addr_reg_reg[29]_i_1_n_3\ : STD_LOGIC;
  signal \rd_addr_reg_reg[29]_i_1_n_4\ : STD_LOGIC;
  signal \rd_addr_reg_reg[29]_i_1_n_5\ : STD_LOGIC;
  signal \rd_addr_reg_reg[29]_i_1_n_6\ : STD_LOGIC;
  signal \rd_addr_reg_reg[29]_i_1_n_7\ : STD_LOGIC;
  signal \rd_addr_reg_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \rd_addr_reg_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \rd_addr_reg_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \rd_addr_reg_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr_reg_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \rd_addr_reg_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \rd_addr_reg_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \rd_addr_reg_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \rd_addr_reg_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \rd_addr_reg_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \rd_addr_reg_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal rd_en : STD_LOGIC;
  signal rd_en2 : STD_LOGIC;
  signal rdata_reg : STD_LOGIC_VECTOR ( 55 downto 2 );
  signal rready : STD_LOGIC;
  signal rready_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal switch_buffer_ack_reg_i_1_n_0 : STD_LOGIC;
  signal \^switch_buffer_ack_reg_reg_0\ : STD_LOGIC;
  signal switch_buffer_reg1 : STD_LOGIC;
  signal switch_buffer_reg1_i_1_n_0 : STD_LOGIC;
  signal switch_buffer_reg2 : STD_LOGIC;
  signal switch_buffer_reg2_i_1_n_0 : STD_LOGIC;
  signal switch_buffer_reg_out : STD_LOGIC;
  signal switch_buffer_reg_out_i_1_n_0 : STD_LOGIC;
  signal v_count : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \v_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[10]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_5_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_6_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_7_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_8_n_0\ : STD_LOGIC;
  signal v_count_en : STD_LOGIC;
  signal wr_en : STD_LOGIC;
  signal wr_en_reg_i_1_n_0 : STD_LOGIC;
  signal NLW_fifo_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_rd_addr_reg1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rd_addr_reg1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rd_addr_reg1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rd_addr_reg1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rd_addr_reg_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rd_addr_reg_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ARVALID_reg_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_6\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_7\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_8\ : label is "soft_lutpair24";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "st1_rst:000,st2_sendreq:001,st3_obtain_datacount:010,st4_rvalid:011,st5_done:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "st1_rst:000,st2_sendreq:001,st3_obtain_datacount:010,st4_rvalid:011,st5_done:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "st1_rst:000,st2_sendreq:001,st3_obtain_datacount:010,st4_rvalid:011,st5_done:100,";
  attribute SOFT_HLUTNM of M_AXI_ARVALID_INST_0 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of M_AXI_RREADY_INST_0 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \VGA_B[0]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \VGA_B[1]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \VGA_B[2]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \VGA_B[3]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \VGA_G[0]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \VGA_G[1]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \VGA_G[2]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \VGA_G[3]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of VGA_HS_INST_0 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of VGA_HS_INST_0_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \VGA_R[0]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \VGA_R[1]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \VGA_R[2]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of VGA_VS_INST_0_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of VGA_VS_INST_0_i_2 : label is "soft_lutpair30";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo : label is "fifo_generator_0,fifo_generator_v13_2_5,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo : label is "fifo_generator_v13_2_5,Vivado 2020.2";
  attribute SOFT_HLUTNM of flush_done_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of flush_rready_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \h_count[0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \h_count[10]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \h_count[10]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \h_count[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \h_count[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \h_count[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \h_count[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \h_count[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \h_count[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \h_count[7]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \h_count[9]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \h_count[9]_i_5\ : label is "soft_lutpair20";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of rd_addr_reg1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \rd_addr_reg1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rd_addr_reg1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rd_addr_reg1_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \rd_addr_reg_reg[13]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rd_addr_reg_reg[17]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rd_addr_reg_reg[21]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rd_addr_reg_reg[25]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rd_addr_reg_reg[29]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rd_addr_reg_reg[31]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \rd_addr_reg_reg[9]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of rready_i_1 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of switch_buffer_reg2_i_1 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of switch_buffer_reg_out_i_1 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \v_count[0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \v_count[10]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \v_count[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \v_count[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \v_count[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \v_count[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \v_count[6]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \v_count[7]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \v_count[8]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \v_count[9]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \v_count[9]_i_5\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of wr_en_reg_i_1 : label is "soft_lutpair38";
begin
  M_AXI_ARADDR(26 downto 0) <= \^m_axi_araddr\(26 downto 0);
  switch_buffer_ack_reg_reg_0 <= \^switch_buffer_ack_reg_reg_0\;
ARVALID_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => flush_done,
      I1 => rstn,
      O => ARVALID_reg_i_1_n_0
    );
ARVALID_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ARVALID_reg_i_1_n_0,
      Q => ARVALID_reg,
      R => '0'
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2600"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => state(2),
      I3 => rstn,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"262A0000"
    )
        port map (
      I0 => state(1),
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => state(2),
      I3 => state(0),
      I4 => rstn,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"622A0000"
    )
        port map (
      I0 => state(2),
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => state(1),
      I3 => state(0),
      I4 => rstn,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEABAA"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_5_n_0\,
      I3 => \FSM_sequential_state[2]_i_6_n_0\,
      I4 => \FSM_sequential_state[2]_i_7_n_0\,
      I5 => \FSM_sequential_state[2]_i_8_n_0\,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(1),
      I1 => M_AXI_ARREADY,
      I2 => state(2),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rfifo_count(1),
      I1 => rfifo_count(0),
      I2 => rfifo_count(3),
      I3 => rfifo_count(2),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rfifo_count(5),
      I1 => rfifo_count(4),
      I2 => rfifo_count(7),
      I3 => rfifo_count(6),
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => M_AXI_RVALID,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \FSM_sequential_state[2]_i_8_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
M_AXI_ARVALID_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ARVALID_reg,
      I1 => flush_done,
      I2 => flush_arvalid,
      O => M_AXI_ARVALID
    );
M_AXI_RREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rready,
      I1 => flush_done,
      I2 => flush_rready,
      O => M_AXI_RREADY
    );
\VGA_B[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(8),
      I2 => h_count(9),
      I3 => d_out(20),
      O => VGA_B(0)
    );
\VGA_B[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(8),
      I2 => h_count(9),
      I3 => d_out(21),
      O => VGA_B(1)
    );
\VGA_B[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(8),
      I2 => h_count(9),
      I3 => d_out(22),
      O => VGA_B(2)
    );
\VGA_B[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(8),
      I2 => h_count(9),
      I3 => d_out(23),
      O => VGA_B(3)
    );
\VGA_G[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(8),
      I2 => h_count(9),
      I3 => d_out(12),
      O => VGA_G(0)
    );
\VGA_G[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(8),
      I2 => h_count(9),
      I3 => d_out(13),
      O => VGA_G(1)
    );
\VGA_G[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(8),
      I2 => h_count(9),
      I3 => d_out(14),
      O => VGA_G(2)
    );
\VGA_G[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(8),
      I2 => h_count(9),
      I3 => d_out(15),
      O => VGA_G(3)
    );
VGA_HS_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => h_count(8),
      I1 => h_count(10),
      I2 => h_count(9),
      I3 => VGA_HS_INST_0_i_1_n_0,
      O => VGA_HS
    );
VGA_HS_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5562"
    )
        port map (
      I0 => h_count(7),
      I1 => h_count(5),
      I2 => h_count(4),
      I3 => h_count(6),
      O => VGA_HS_INST_0_i_1_n_0
    );
\VGA_R[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(8),
      I2 => h_count(9),
      I3 => d_out(4),
      O => VGA_R(0)
    );
\VGA_R[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(8),
      I2 => h_count(9),
      I3 => d_out(5),
      O => VGA_R(1)
    );
\VGA_R[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(8),
      I2 => h_count(9),
      I3 => d_out(6),
      O => VGA_R(2)
    );
\VGA_R[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(8),
      I2 => h_count(9),
      I3 => d_out(7),
      O => VGA_R(3)
    );
VGA_VS_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => v_count(4),
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => VGA_VS_INST_0_i_1_n_0,
      I4 => VGA_VS_INST_0_i_2_n_0,
      O => VGA_VS
    );
VGA_VS_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E00"
    )
        port map (
      I0 => v_count(1),
      I1 => v_count(0),
      I2 => v_count(5),
      I3 => v_count(10),
      O => VGA_VS_INST_0_i_1_n_0
    );
VGA_VS_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => v_count(7),
      I1 => v_count(6),
      I2 => v_count(9),
      I3 => v_count(8),
      O => VGA_VS_INST_0_i_2_n_0
    );
\current_base_addr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => current_base_addr(0),
      I1 => \^switch_buffer_ack_reg_reg_0\,
      I2 => switch_buffer_reg2,
      I3 => old_base_addr(0),
      O => data(0)
    );
\current_base_addr[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => current_base_addr(12),
      I1 => \^switch_buffer_ack_reg_reg_0\,
      I2 => switch_buffer_reg2,
      I3 => old_base_addr(12),
      O => data(12)
    );
\current_base_addr[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => current_base_addr(15),
      I1 => \^switch_buffer_ack_reg_reg_0\,
      I2 => switch_buffer_reg2,
      I3 => old_base_addr(15),
      O => data(15)
    );
\current_base_addr[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => current_base_addr(17),
      I1 => \^switch_buffer_ack_reg_reg_0\,
      I2 => switch_buffer_reg2,
      I3 => old_base_addr(17),
      O => data(17)
    );
\current_base_addr[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => current_base_addr(18),
      I1 => \^switch_buffer_ack_reg_reg_0\,
      I2 => switch_buffer_reg2,
      I3 => old_base_addr(18),
      O => data(18)
    );
\current_base_addr[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => current_base_addr(19),
      I1 => \^switch_buffer_ack_reg_reg_0\,
      I2 => switch_buffer_reg2,
      I3 => old_base_addr(19),
      O => data(19)
    );
\current_base_addr[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => current_base_addr(20),
      I1 => \^switch_buffer_ack_reg_reg_0\,
      I2 => switch_buffer_reg2,
      I3 => old_base_addr(20),
      O => data(20)
    );
\current_base_addr[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => current_base_addr(23),
      I1 => \^switch_buffer_ack_reg_reg_0\,
      I2 => switch_buffer_reg2,
      I3 => old_base_addr(23),
      O => data(23)
    );
\current_base_addr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => M_AXI_ARREADY,
      I1 => \rd_addr_reg1_carry__2_n_0\,
      O => \current_base_addr[24]_i_1_n_0\
    );
\current_base_addr[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => current_base_addr(24),
      I1 => \^switch_buffer_ack_reg_reg_0\,
      I2 => switch_buffer_reg2,
      I3 => old_base_addr(24),
      O => data(24)
    );
\current_base_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_base_addr[24]_i_1_n_0\,
      D => data(0),
      Q => current_base_addr(0),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\current_base_addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_base_addr[24]_i_1_n_0\,
      D => data(12),
      Q => current_base_addr(12),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\current_base_addr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_base_addr[24]_i_1_n_0\,
      D => data(15),
      Q => current_base_addr(15),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\current_base_addr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_base_addr[24]_i_1_n_0\,
      D => data(17),
      Q => current_base_addr(17),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\current_base_addr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_base_addr[24]_i_1_n_0\,
      D => data(18),
      Q => current_base_addr(18),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\current_base_addr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_base_addr[24]_i_1_n_0\,
      D => data(19),
      Q => current_base_addr(19),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\current_base_addr_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \current_base_addr[24]_i_1_n_0\,
      D => data(20),
      Q => current_base_addr(20),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\current_base_addr_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \current_base_addr[24]_i_1_n_0\,
      D => data(23),
      Q => current_base_addr(23),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\current_base_addr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_base_addr[24]_i_1_n_0\,
      D => data(24),
      Q => current_base_addr(24),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\current_max_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => old_max_addr(0),
      Q => current_max_addr(0),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\current_max_addr_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => old_max_addr(12),
      Q => current_max_addr(12),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\current_max_addr_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => old_max_addr(13),
      Q => current_max_addr(13),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\current_max_addr_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => old_max_addr(14),
      Q => current_max_addr(14),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\current_max_addr_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => old_max_addr(16),
      Q => current_max_addr(16),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\current_max_addr_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => old_max_addr(23),
      Q => current_max_addr(23),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\current_max_addr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => old_max_addr(24),
      Q => current_max_addr(24),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
fifo: entity work.dualCore_vga_controller_0_0_fifo_generator_0
     port map (
      almost_empty => NLW_fifo_almost_empty_UNCONNECTED,
      almost_full => NLW_fifo_almost_full_UNCONNECTED,
      din(63 downto 56) => B"00000000",
      din(55 downto 34) => rdata_reg(55 downto 34),
      din(33 downto 24) => B"0000000000",
      din(23 downto 2) => rdata_reg(23 downto 2),
      din(1 downto 0) => B"00",
      dout(31 downto 24) => NLW_fifo_dout_UNCONNECTED(31 downto 24),
      dout(23 downto 20) => d_out(23 downto 20),
      dout(19 downto 16) => NLW_fifo_dout_UNCONNECTED(19 downto 16),
      dout(15 downto 12) => d_out(15 downto 12),
      dout(11 downto 8) => NLW_fifo_dout_UNCONNECTED(11 downto 8),
      dout(7 downto 4) => d_out(7 downto 4),
      dout(3 downto 0) => NLW_fifo_dout_UNCONNECTED(3 downto 0),
      empty => fifo_empty,
      full => NLW_fifo_full_UNCONNECTED,
      overflow => NLW_fifo_overflow_UNCONNECTED,
      prog_full => prog_full,
      rd_clk => pixel_clk,
      rd_en => rd_en,
      rst => fifo_rst,
      underflow => NLW_fifo_underflow_UNCONNECTED,
      wr_clk => clk,
      wr_en => wr_en
    );
fifo_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000200020202"
    )
        port map (
      I0 => pixel_rstn,
      I1 => v_count(10),
      I2 => fifo_empty,
      I3 => h_count(10),
      I4 => h_count(8),
      I5 => h_count(9),
      O => rd_en
    );
flush_arvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => rstn,
      I4 => flush_arvalid,
      O => flush_arvalid_i_1_n_0
    );
flush_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => flush_arvalid_i_1_n_0,
      Q => flush_arvalid,
      R => '0'
    );
flush_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => rstn,
      I4 => flush_done,
      O => flush_done_i_1_n_0
    );
flush_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => flush_done_i_1_n_0,
      Q => flush_done,
      R => '0'
    );
flush_rready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0800"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => rstn,
      I4 => flush_rready,
      O => flush_rready_i_1_n_0
    );
flush_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => flush_rready_i_1_n_0,
      Q => flush_rready,
      R => '0'
    );
\h_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count(0),
      O => p_2_in(0)
    );
\h_count[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A09FFFFFFFF"
    )
        port map (
      I0 => h_count(10),
      I1 => fifo_empty,
      I2 => h_count_0(10),
      I3 => \h_count[10]_i_2_n_0\,
      I4 => \h_count[10]_i_3_n_0\,
      I5 => pixel_rstn,
      O => \h_count[10]_i_1_n_0\
    );
\h_count[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => h_count(7),
      I1 => h_count(9),
      O => \h_count[10]_i_2_n_0\
    );
\h_count[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => h_count(6),
      I1 => h_count(3),
      I2 => \h_count[7]_i_2_n_0\,
      I3 => h_count(5),
      I4 => h_count(8),
      O => \h_count[10]_i_3_n_0\
    );
\h_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_count(0),
      I1 => h_count(1),
      O => p_2_in(1)
    );
\h_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => h_count(1),
      I1 => h_count(0),
      I2 => h_count(2),
      O => p_2_in(2)
    );
\h_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => h_count(2),
      I1 => h_count(0),
      I2 => h_count(1),
      I3 => h_count(3),
      O => p_2_in(3)
    );
\h_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => h_count(3),
      I1 => h_count(1),
      I2 => h_count(0),
      I3 => h_count(2),
      I4 => h_count(4),
      O => p_2_in(4)
    );
\h_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => h_count(3),
      I1 => h_count(2),
      I2 => h_count(0),
      I3 => h_count(1),
      I4 => h_count(4),
      I5 => h_count(5),
      O => p_2_in(5)
    );
\h_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => h_count(5),
      I1 => \h_count[7]_i_2_n_0\,
      I2 => h_count(3),
      I3 => h_count(6),
      O => p_2_in(6)
    );
\h_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => h_count(6),
      I1 => h_count(3),
      I2 => \h_count[7]_i_2_n_0\,
      I3 => h_count(5),
      I4 => h_count(7),
      O => p_2_in(7)
    );
\h_count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => h_count(2),
      I1 => h_count(0),
      I2 => h_count(1),
      I3 => h_count(4),
      O => \h_count[7]_i_2_n_0\
    );
\h_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A090AFFFFFFFF"
    )
        port map (
      I0 => h_count(8),
      I1 => fifo_empty,
      I2 => h_count_0(10),
      I3 => h_count(7),
      I4 => \h_count[9]_i_5_n_0\,
      I5 => pixel_rstn,
      O => \h_count[8]_i_1_n_0\
    );
\h_count[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => h_count_0(10),
      I1 => pixel_rstn,
      O => \h_count[9]_i_1_n_0\
    );
\h_count[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_empty,
      O => rd_en2
    );
\h_count[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => h_count(7),
      I1 => \h_count[9]_i_5_n_0\,
      I2 => h_count(8),
      I3 => h_count(9),
      O => p_2_in(9)
    );
\h_count[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFBAAAA"
    )
        port map (
      I0 => \h_count[9]_i_6_n_0\,
      I1 => \h_count[7]_i_2_n_0\,
      I2 => h_count(5),
      I3 => h_count(6),
      I4 => \v_count[9]_i_5_n_0\,
      I5 => fifo_empty,
      O => h_count_0(10)
    );
\h_count[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => h_count(5),
      I1 => \h_count[7]_i_2_n_0\,
      I2 => h_count(3),
      I3 => h_count(6),
      O => \h_count[9]_i_5_n_0\
    );
\h_count[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80000000000000"
    )
        port map (
      I0 => h_count(7),
      I1 => h_count(3),
      I2 => h_count(4),
      I3 => h_count(8),
      I4 => h_count(9),
      I5 => h_count(10),
      O => \h_count[9]_i_6_n_0\
    );
\h_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => rd_en2,
      D => p_2_in(0),
      Q => h_count(0),
      R => \h_count[9]_i_1_n_0\
    );
\h_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \h_count[10]_i_1_n_0\,
      Q => h_count(10),
      R => '0'
    );
\h_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => rd_en2,
      D => p_2_in(1),
      Q => h_count(1),
      R => \h_count[9]_i_1_n_0\
    );
\h_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => rd_en2,
      D => p_2_in(2),
      Q => h_count(2),
      R => \h_count[9]_i_1_n_0\
    );
\h_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => rd_en2,
      D => p_2_in(3),
      Q => h_count(3),
      R => \h_count[9]_i_1_n_0\
    );
\h_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => rd_en2,
      D => p_2_in(4),
      Q => h_count(4),
      R => \h_count[9]_i_1_n_0\
    );
\h_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => rd_en2,
      D => p_2_in(5),
      Q => h_count(5),
      R => \h_count[9]_i_1_n_0\
    );
\h_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => rd_en2,
      D => p_2_in(6),
      Q => h_count(6),
      R => \h_count[9]_i_1_n_0\
    );
\h_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => rd_en2,
      D => p_2_in(7),
      Q => h_count(7),
      R => \h_count[9]_i_1_n_0\
    );
\h_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \h_count[8]_i_1_n_0\,
      Q => h_count(8),
      R => '0'
    );
\h_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => rd_en2,
      D => p_2_in(9),
      Q => h_count(9),
      R => \h_count[9]_i_1_n_0\
    );
\old_base_addr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => current_base_addr(0),
      Q => old_base_addr(0),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\old_base_addr_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => current_base_addr(12),
      Q => old_base_addr(12),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\old_base_addr_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => current_base_addr(15),
      Q => old_base_addr(15),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\old_base_addr_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => current_base_addr(17),
      Q => old_base_addr(17),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\old_base_addr_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => current_base_addr(18),
      Q => old_base_addr(18),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\old_base_addr_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => current_base_addr(19),
      Q => old_base_addr(19),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\old_base_addr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => current_base_addr(20),
      Q => old_base_addr(20),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\old_base_addr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => current_base_addr(23),
      Q => old_base_addr(23),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\old_base_addr_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => current_base_addr(24),
      Q => old_base_addr(24),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\old_max_addr[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^switch_buffer_ack_reg_reg_0\,
      I2 => switch_buffer_reg2,
      I3 => M_AXI_ARREADY,
      O => old_base_addr_1
    );
\old_max_addr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => current_max_addr(0),
      Q => old_max_addr(0),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\old_max_addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => current_max_addr(12),
      Q => old_max_addr(12),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\old_max_addr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => current_max_addr(13),
      Q => old_max_addr(13),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\old_max_addr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => current_max_addr(14),
      Q => old_max_addr(14),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\old_max_addr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => current_max_addr(16),
      Q => old_max_addr(16),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\old_max_addr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => current_max_addr(23),
      Q => old_max_addr(23),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\old_max_addr_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => old_base_addr_1,
      D => current_max_addr(24),
      Q => old_max_addr(24),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
rd_addr_reg1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rd_addr_reg1_carry_n_0,
      CO(2) => rd_addr_reg1_carry_n_1,
      CO(1) => rd_addr_reg1_carry_n_2,
      CO(0) => rd_addr_reg1_carry_n_3,
      CYINIT => '0',
      DI(3) => rd_addr_reg1_carry_i_1_n_0,
      DI(2 downto 1) => B"00",
      DI(0) => rd_addr_reg1_carry_i_2_n_0,
      O(3 downto 0) => NLW_rd_addr_reg1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rd_addr_reg1_carry_i_3_n_0,
      S(2 downto 1) => B"11",
      S(0) => rd_addr_reg1_carry_i_4_n_0
    );
\rd_addr_reg1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rd_addr_reg1_carry_n_0,
      CO(3) => \rd_addr_reg1_carry__0_n_0\,
      CO(2) => \rd_addr_reg1_carry__0_n_1\,
      CO(1) => \rd_addr_reg1_carry__0_n_2\,
      CO(0) => \rd_addr_reg1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \rd_addr_reg1_carry__0_i_1_n_0\,
      DI(2) => \rd_addr_reg1_carry__0_i_2_n_0\,
      DI(1) => \rd_addr_reg1_carry__0_i_3_n_0\,
      DI(0) => \rd_addr_reg1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_rd_addr_reg1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \rd_addr_reg1_carry__0_i_5_n_0\,
      S(2) => \rd_addr_reg1_carry__0_i_6_n_0\,
      S(1) => \rd_addr_reg1_carry__0_i_7_n_0\,
      S(0) => \rd_addr_reg1_carry__0_i_8_n_0\
    );
\rd_addr_reg1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"75"
    )
        port map (
      I0 => \^m_axi_araddr\(10),
      I1 => \^m_axi_araddr\(9),
      I2 => current_max_addr(14),
      O => \rd_addr_reg1_carry__0_i_1_n_0\
    );
\rd_addr_reg1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => current_max_addr(13),
      I1 => \^m_axi_araddr\(8),
      I2 => current_max_addr(12),
      I3 => \^m_axi_araddr\(7),
      O => \rd_addr_reg1_carry__0_i_2_n_0\
    );
\rd_addr_reg1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^m_axi_araddr\(6),
      I1 => \^m_axi_araddr\(5),
      O => \rd_addr_reg1_carry__0_i_3_n_0\
    );
\rd_addr_reg1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^m_axi_araddr\(4),
      I1 => \^m_axi_araddr\(3),
      O => \rd_addr_reg1_carry__0_i_4_n_0\
    );
\rd_addr_reg1_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \^m_axi_araddr\(10),
      I1 => current_max_addr(14),
      I2 => \^m_axi_araddr\(9),
      O => \rd_addr_reg1_carry__0_i_5_n_0\
    );
\rd_addr_reg1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => current_max_addr(13),
      I1 => \^m_axi_araddr\(8),
      I2 => current_max_addr(12),
      I3 => \^m_axi_araddr\(7),
      O => \rd_addr_reg1_carry__0_i_6_n_0\
    );
\rd_addr_reg1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_araddr\(5),
      I1 => \^m_axi_araddr\(6),
      O => \rd_addr_reg1_carry__0_i_7_n_0\
    );
\rd_addr_reg1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_araddr\(3),
      I1 => \^m_axi_araddr\(4),
      O => \rd_addr_reg1_carry__0_i_8_n_0\
    );
\rd_addr_reg1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_addr_reg1_carry__0_n_0\,
      CO(3) => \rd_addr_reg1_carry__1_n_0\,
      CO(2) => \rd_addr_reg1_carry__1_n_1\,
      CO(1) => \rd_addr_reg1_carry__1_n_2\,
      CO(0) => \rd_addr_reg1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \rd_addr_reg1_carry__1_i_1_n_0\,
      DI(2) => \rd_addr_reg1_carry__1_i_2_n_0\,
      DI(1) => \rd_addr_reg1_carry__1_i_3_n_0\,
      DI(0) => \rd_addr_reg1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_rd_addr_reg1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \rd_addr_reg1_carry__1_i_5_n_0\,
      S(2) => \rd_addr_reg1_carry__1_i_6_n_0\,
      S(1) => \rd_addr_reg1_carry__1_i_7_n_0\,
      S(0) => \rd_addr_reg1_carry__1_i_8_n_0\
    );
\rd_addr_reg1_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => current_max_addr(23),
      I1 => \^m_axi_araddr\(18),
      I2 => \^m_axi_araddr\(17),
      O => \rd_addr_reg1_carry__1_i_1_n_0\
    );
\rd_addr_reg1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_axi_araddr\(15),
      I1 => \^m_axi_araddr\(16),
      O => \rd_addr_reg1_carry__1_i_2_n_0\
    );
\rd_addr_reg1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^m_axi_araddr\(14),
      I1 => \^m_axi_araddr\(13),
      O => \rd_addr_reg1_carry__1_i_3_n_0\
    );
\rd_addr_reg1_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"75"
    )
        port map (
      I0 => \^m_axi_araddr\(12),
      I1 => \^m_axi_araddr\(11),
      I2 => current_max_addr(16),
      O => \rd_addr_reg1_carry__1_i_4_n_0\
    );
\rd_addr_reg1_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \^m_axi_araddr\(17),
      I1 => \^m_axi_araddr\(18),
      I2 => current_max_addr(23),
      O => \rd_addr_reg1_carry__1_i_5_n_0\
    );
\rd_addr_reg1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_axi_araddr\(15),
      I1 => \^m_axi_araddr\(16),
      O => \rd_addr_reg1_carry__1_i_6_n_0\
    );
\rd_addr_reg1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_araddr\(13),
      I1 => \^m_axi_araddr\(14),
      O => \rd_addr_reg1_carry__1_i_7_n_0\
    );
\rd_addr_reg1_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \^m_axi_araddr\(12),
      I1 => current_max_addr(16),
      I2 => \^m_axi_araddr\(11),
      O => \rd_addr_reg1_carry__1_i_8_n_0\
    );
\rd_addr_reg1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_addr_reg1_carry__1_n_0\,
      CO(3) => \rd_addr_reg1_carry__2_n_0\,
      CO(2) => \rd_addr_reg1_carry__2_n_1\,
      CO(1) => \rd_addr_reg1_carry__2_n_2\,
      CO(0) => \rd_addr_reg1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \^m_axi_araddr\(26),
      DI(2 downto 1) => B"00",
      DI(0) => \rd_addr_reg1_carry__2_i_1_n_0\,
      O(3 downto 0) => \NLW_rd_addr_reg1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \rd_addr_reg1_carry__2_i_2_n_0\,
      S(2) => \rd_addr_reg1_carry__2_i_3_n_0\,
      S(1) => \rd_addr_reg1_carry__2_i_4_n_0\,
      S(0) => \rd_addr_reg1_carry__2_i_5_n_0\
    );
\rd_addr_reg1_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^m_axi_araddr\(19),
      I1 => current_max_addr(24),
      I2 => \^m_axi_araddr\(20),
      O => \rd_addr_reg1_carry__2_i_1_n_0\
    );
\rd_addr_reg1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_axi_araddr\(25),
      I1 => \^m_axi_araddr\(26),
      O => \rd_addr_reg1_carry__2_i_2_n_0\
    );
\rd_addr_reg1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_axi_araddr\(23),
      I1 => \^m_axi_araddr\(24),
      O => \rd_addr_reg1_carry__2_i_3_n_0\
    );
\rd_addr_reg1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_axi_araddr\(21),
      I1 => \^m_axi_araddr\(22),
      O => \rd_addr_reg1_carry__2_i_4_n_0\
    );
\rd_addr_reg1_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \^m_axi_araddr\(20),
      I1 => current_max_addr(24),
      I2 => \^m_axi_araddr\(19),
      O => \rd_addr_reg1_carry__2_i_5_n_0\
    );
rd_addr_reg1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_axi_araddr\(2),
      O => rd_addr_reg1_carry_i_1_n_0
    );
rd_addr_reg1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_max_addr(0),
      I1 => \^m_axi_araddr\(0),
      O => rd_addr_reg1_carry_i_2_n_0
    );
rd_addr_reg1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^m_axi_araddr\(1),
      I1 => \^m_axi_araddr\(2),
      O => rd_addr_reg1_carry_i_3_n_0
    );
rd_addr_reg1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^m_axi_araddr\(0),
      I1 => current_max_addr(0),
      O => rd_addr_reg1_carry_i_4_n_0
    );
\rd_addr_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000F4B0F4B0"
    )
        port map (
      I0 => \^switch_buffer_ack_reg_reg_0\,
      I1 => switch_buffer_reg2,
      I2 => current_base_addr(0),
      I3 => old_base_addr(0),
      I4 => \^m_axi_araddr\(0),
      I5 => \rd_addr_reg1_carry__2_n_0\,
      O => \rd_addr_reg[0]_i_1_n_0\
    );
\rd_addr_reg[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(8),
      O => \rd_addr_reg[13]_i_2_n_0\
    );
\rd_addr_reg[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000F4B0F4B0"
    )
        port map (
      I0 => \^switch_buffer_ack_reg_reg_0\,
      I1 => switch_buffer_reg2,
      I2 => current_base_addr(12),
      I3 => old_base_addr(12),
      I4 => \^m_axi_araddr\(7),
      I5 => \rd_addr_reg1_carry__2_n_0\,
      O => \rd_addr_reg[13]_i_3_n_0\
    );
\rd_addr_reg[13]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(6),
      O => \rd_addr_reg[13]_i_4_n_0\
    );
\rd_addr_reg[13]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(5),
      O => \rd_addr_reg[13]_i_5_n_0\
    );
\rd_addr_reg[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000F4B0F4B0"
    )
        port map (
      I0 => \^switch_buffer_ack_reg_reg_0\,
      I1 => switch_buffer_reg2,
      I2 => current_base_addr(17),
      I3 => old_base_addr(17),
      I4 => \^m_axi_araddr\(12),
      I5 => \rd_addr_reg1_carry__2_n_0\,
      O => \rd_addr_reg[17]_i_2_n_0\
    );
\rd_addr_reg[17]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(11),
      O => \rd_addr_reg[17]_i_3_n_0\
    );
\rd_addr_reg[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000F4B0F4B0"
    )
        port map (
      I0 => \^switch_buffer_ack_reg_reg_0\,
      I1 => switch_buffer_reg2,
      I2 => current_base_addr(15),
      I3 => old_base_addr(15),
      I4 => \^m_axi_araddr\(10),
      I5 => \rd_addr_reg1_carry__2_n_0\,
      O => \rd_addr_reg[17]_i_4_n_0\
    );
\rd_addr_reg[17]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(9),
      O => \rd_addr_reg[17]_i_5_n_0\
    );
\rd_addr_reg[21]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(16),
      O => \rd_addr_reg[21]_i_2_n_0\
    );
\rd_addr_reg[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000F4B0F4B0"
    )
        port map (
      I0 => \^switch_buffer_ack_reg_reg_0\,
      I1 => switch_buffer_reg2,
      I2 => current_base_addr(20),
      I3 => old_base_addr(20),
      I4 => \^m_axi_araddr\(15),
      I5 => \rd_addr_reg1_carry__2_n_0\,
      O => \rd_addr_reg[21]_i_3_n_0\
    );
\rd_addr_reg[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000F4B0F4B0"
    )
        port map (
      I0 => \^switch_buffer_ack_reg_reg_0\,
      I1 => switch_buffer_reg2,
      I2 => current_base_addr(19),
      I3 => old_base_addr(19),
      I4 => \^m_axi_araddr\(14),
      I5 => \rd_addr_reg1_carry__2_n_0\,
      O => \rd_addr_reg[21]_i_4_n_0\
    );
\rd_addr_reg[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000F4B0F4B0"
    )
        port map (
      I0 => \^switch_buffer_ack_reg_reg_0\,
      I1 => switch_buffer_reg2,
      I2 => current_base_addr(18),
      I3 => old_base_addr(18),
      I4 => \^m_axi_araddr\(13),
      I5 => \rd_addr_reg1_carry__2_n_0\,
      O => \rd_addr_reg[21]_i_5_n_0\
    );
\rd_addr_reg[25]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(20),
      O => \rd_addr_reg[25]_i_2_n_0\
    );
\rd_addr_reg[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000F4B0F4B0"
    )
        port map (
      I0 => \^switch_buffer_ack_reg_reg_0\,
      I1 => switch_buffer_reg2,
      I2 => current_base_addr(24),
      I3 => old_base_addr(24),
      I4 => \^m_axi_araddr\(19),
      I5 => \rd_addr_reg1_carry__2_n_0\,
      O => \rd_addr_reg[25]_i_3_n_0\
    );
\rd_addr_reg[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000F4B0F4B0"
    )
        port map (
      I0 => \^switch_buffer_ack_reg_reg_0\,
      I1 => switch_buffer_reg2,
      I2 => current_base_addr(23),
      I3 => old_base_addr(23),
      I4 => \^m_axi_araddr\(18),
      I5 => \rd_addr_reg1_carry__2_n_0\,
      O => \rd_addr_reg[25]_i_4_n_0\
    );
\rd_addr_reg[25]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(17),
      O => \rd_addr_reg[25]_i_5_n_0\
    );
\rd_addr_reg[29]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(24),
      O => \rd_addr_reg[29]_i_2_n_0\
    );
\rd_addr_reg[29]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(23),
      O => \rd_addr_reg[29]_i_3_n_0\
    );
\rd_addr_reg[29]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(22),
      O => \rd_addr_reg[29]_i_4_n_0\
    );
\rd_addr_reg[29]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(21),
      O => \rd_addr_reg[29]_i_5_n_0\
    );
\rd_addr_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => rstn,
      I1 => flush_done,
      O => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(26),
      O => \rd_addr_reg[31]_i_3_n_0\
    );
\rd_addr_reg[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(25),
      O => \rd_addr_reg[31]_i_4_n_0\
    );
\rd_addr_reg[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(4),
      O => \rd_addr_reg[9]_i_2_n_0\
    );
\rd_addr_reg[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(3),
      O => \rd_addr_reg[9]_i_3_n_0\
    );
\rd_addr_reg[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^m_axi_araddr\(2),
      I1 => \rd_addr_reg1_carry__2_n_0\,
      O => \rd_addr_reg[9]_i_4_n_0\
    );
\rd_addr_reg[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_addr_reg1_carry__2_n_0\,
      I1 => \^m_axi_araddr\(1),
      O => \rd_addr_reg[9]_i_5_n_0\
    );
\rd_addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg[0]_i_1_n_0\,
      Q => \^m_axi_araddr\(0),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[13]_i_1_n_7\,
      Q => \^m_axi_araddr\(5),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[13]_i_1_n_6\,
      Q => \^m_axi_araddr\(6),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[13]_i_1_n_5\,
      Q => \^m_axi_araddr\(7),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[13]_i_1_n_4\,
      Q => \^m_axi_araddr\(8),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_addr_reg_reg[9]_i_1_n_0\,
      CO(3) => \rd_addr_reg_reg[13]_i_1_n_0\,
      CO(2) => \rd_addr_reg_reg[13]_i_1_n_1\,
      CO(1) => \rd_addr_reg_reg[13]_i_1_n_2\,
      CO(0) => \rd_addr_reg_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rd_addr_reg_reg[13]_i_1_n_4\,
      O(2) => \rd_addr_reg_reg[13]_i_1_n_5\,
      O(1) => \rd_addr_reg_reg[13]_i_1_n_6\,
      O(0) => \rd_addr_reg_reg[13]_i_1_n_7\,
      S(3) => \rd_addr_reg[13]_i_2_n_0\,
      S(2) => \rd_addr_reg[13]_i_3_n_0\,
      S(1) => \rd_addr_reg[13]_i_4_n_0\,
      S(0) => \rd_addr_reg[13]_i_5_n_0\
    );
\rd_addr_reg_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[17]_i_1_n_7\,
      Q => \^m_axi_araddr\(9),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[17]_i_1_n_6\,
      Q => \^m_axi_araddr\(10),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[17]_i_1_n_5\,
      Q => \^m_axi_araddr\(11),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[17]_i_1_n_4\,
      Q => \^m_axi_araddr\(12),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[17]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_addr_reg_reg[13]_i_1_n_0\,
      CO(3) => \rd_addr_reg_reg[17]_i_1_n_0\,
      CO(2) => \rd_addr_reg_reg[17]_i_1_n_1\,
      CO(1) => \rd_addr_reg_reg[17]_i_1_n_2\,
      CO(0) => \rd_addr_reg_reg[17]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rd_addr_reg_reg[17]_i_1_n_4\,
      O(2) => \rd_addr_reg_reg[17]_i_1_n_5\,
      O(1) => \rd_addr_reg_reg[17]_i_1_n_6\,
      O(0) => \rd_addr_reg_reg[17]_i_1_n_7\,
      S(3) => \rd_addr_reg[17]_i_2_n_0\,
      S(2) => \rd_addr_reg[17]_i_3_n_0\,
      S(1) => \rd_addr_reg[17]_i_4_n_0\,
      S(0) => \rd_addr_reg[17]_i_5_n_0\
    );
\rd_addr_reg_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[21]_i_1_n_7\,
      Q => \^m_axi_araddr\(13),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[21]_i_1_n_6\,
      Q => \^m_axi_araddr\(14),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[21]_i_1_n_5\,
      Q => \^m_axi_araddr\(15),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[21]_i_1_n_4\,
      Q => \^m_axi_araddr\(16),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[21]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_addr_reg_reg[17]_i_1_n_0\,
      CO(3) => \rd_addr_reg_reg[21]_i_1_n_0\,
      CO(2) => \rd_addr_reg_reg[21]_i_1_n_1\,
      CO(1) => \rd_addr_reg_reg[21]_i_1_n_2\,
      CO(0) => \rd_addr_reg_reg[21]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rd_addr_reg_reg[21]_i_1_n_4\,
      O(2) => \rd_addr_reg_reg[21]_i_1_n_5\,
      O(1) => \rd_addr_reg_reg[21]_i_1_n_6\,
      O(0) => \rd_addr_reg_reg[21]_i_1_n_7\,
      S(3) => \rd_addr_reg[21]_i_2_n_0\,
      S(2) => \rd_addr_reg[21]_i_3_n_0\,
      S(1) => \rd_addr_reg[21]_i_4_n_0\,
      S(0) => \rd_addr_reg[21]_i_5_n_0\
    );
\rd_addr_reg_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[25]_i_1_n_7\,
      Q => \^m_axi_araddr\(17),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[25]_i_1_n_6\,
      Q => \^m_axi_araddr\(18),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[25]_i_1_n_5\,
      Q => \^m_axi_araddr\(19),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[25]_i_1_n_4\,
      Q => \^m_axi_araddr\(20),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[25]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_addr_reg_reg[21]_i_1_n_0\,
      CO(3) => \rd_addr_reg_reg[25]_i_1_n_0\,
      CO(2) => \rd_addr_reg_reg[25]_i_1_n_1\,
      CO(1) => \rd_addr_reg_reg[25]_i_1_n_2\,
      CO(0) => \rd_addr_reg_reg[25]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rd_addr_reg_reg[25]_i_1_n_4\,
      O(2) => \rd_addr_reg_reg[25]_i_1_n_5\,
      O(1) => \rd_addr_reg_reg[25]_i_1_n_6\,
      O(0) => \rd_addr_reg_reg[25]_i_1_n_7\,
      S(3) => \rd_addr_reg[25]_i_2_n_0\,
      S(2) => \rd_addr_reg[25]_i_3_n_0\,
      S(1) => \rd_addr_reg[25]_i_4_n_0\,
      S(0) => \rd_addr_reg[25]_i_5_n_0\
    );
\rd_addr_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[29]_i_1_n_7\,
      Q => \^m_axi_araddr\(21),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[29]_i_1_n_6\,
      Q => \^m_axi_araddr\(22),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[29]_i_1_n_5\,
      Q => \^m_axi_araddr\(23),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[29]_i_1_n_4\,
      Q => \^m_axi_araddr\(24),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[29]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_addr_reg_reg[25]_i_1_n_0\,
      CO(3) => \rd_addr_reg_reg[29]_i_1_n_0\,
      CO(2) => \rd_addr_reg_reg[29]_i_1_n_1\,
      CO(1) => \rd_addr_reg_reg[29]_i_1_n_2\,
      CO(0) => \rd_addr_reg_reg[29]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rd_addr_reg_reg[29]_i_1_n_4\,
      O(2) => \rd_addr_reg_reg[29]_i_1_n_5\,
      O(1) => \rd_addr_reg_reg[29]_i_1_n_6\,
      O(0) => \rd_addr_reg_reg[29]_i_1_n_7\,
      S(3) => \rd_addr_reg[29]_i_2_n_0\,
      S(2) => \rd_addr_reg[29]_i_3_n_0\,
      S(1) => \rd_addr_reg[29]_i_4_n_0\,
      S(0) => \rd_addr_reg[29]_i_5_n_0\
    );
\rd_addr_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[31]_i_2_n_7\,
      Q => \^m_axi_araddr\(25),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[31]_i_2_n_6\,
      Q => \^m_axi_araddr\(26),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_addr_reg_reg[29]_i_1_n_0\,
      CO(3 downto 1) => \NLW_rd_addr_reg_reg[31]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \rd_addr_reg_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_rd_addr_reg_reg[31]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => \rd_addr_reg_reg[31]_i_2_n_6\,
      O(0) => \rd_addr_reg_reg[31]_i_2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \rd_addr_reg[31]_i_3_n_0\,
      S(0) => \rd_addr_reg[31]_i_4_n_0\
    );
\rd_addr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[9]_i_1_n_7\,
      Q => \^m_axi_araddr\(1),
      R => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[9]_i_1_n_6\,
      Q => \^m_axi_araddr\(2),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[9]_i_1_n_5\,
      Q => \^m_axi_araddr\(3),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => M_AXI_ARREADY,
      D => \rd_addr_reg_reg[9]_i_1_n_4\,
      Q => \^m_axi_araddr\(4),
      S => \rd_addr_reg[31]_i_1_n_0\
    );
\rd_addr_reg_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rd_addr_reg_reg[9]_i_1_n_0\,
      CO(2) => \rd_addr_reg_reg[9]_i_1_n_1\,
      CO(1) => \rd_addr_reg_reg[9]_i_1_n_2\,
      CO(0) => \rd_addr_reg_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \rd_addr_reg1_carry__2_n_0\,
      DI(0) => '0',
      O(3) => \rd_addr_reg_reg[9]_i_1_n_4\,
      O(2) => \rd_addr_reg_reg[9]_i_1_n_5\,
      O(1) => \rd_addr_reg_reg[9]_i_1_n_6\,
      O(0) => \rd_addr_reg_reg[9]_i_1_n_7\,
      S(3) => \rd_addr_reg[9]_i_2_n_0\,
      S(2) => \rd_addr_reg[9]_i_3_n_0\,
      S(1) => \rd_addr_reg[9]_i_4_n_0\,
      S(0) => \rd_addr_reg[9]_i_5_n_0\
    );
\rdata_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(30),
      Q => rdata_reg(10),
      R => '0'
    );
\rdata_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(31),
      Q => rdata_reg(11),
      R => '0'
    );
\rdata_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(32),
      Q => rdata_reg(12),
      R => '0'
    );
\rdata_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(33),
      Q => rdata_reg(13),
      R => '0'
    );
\rdata_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(34),
      Q => rdata_reg(14),
      R => '0'
    );
\rdata_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(35),
      Q => rdata_reg(15),
      R => '0'
    );
\rdata_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(36),
      Q => rdata_reg(16),
      R => '0'
    );
\rdata_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(37),
      Q => rdata_reg(17),
      R => '0'
    );
\rdata_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(38),
      Q => rdata_reg(18),
      R => '0'
    );
\rdata_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(39),
      Q => rdata_reg(19),
      R => '0'
    );
\rdata_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(40),
      Q => rdata_reg(20),
      R => '0'
    );
\rdata_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(41),
      Q => rdata_reg(21),
      R => '0'
    );
\rdata_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(42),
      Q => rdata_reg(22),
      R => '0'
    );
\rdata_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(43),
      Q => rdata_reg(23),
      R => '0'
    );
\rdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(22),
      Q => rdata_reg(2),
      R => '0'
    );
\rdata_reg_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(0),
      Q => rdata_reg(34),
      R => '0'
    );
\rdata_reg_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(1),
      Q => rdata_reg(35),
      R => '0'
    );
\rdata_reg_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(2),
      Q => rdata_reg(36),
      R => '0'
    );
\rdata_reg_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(3),
      Q => rdata_reg(37),
      R => '0'
    );
\rdata_reg_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(4),
      Q => rdata_reg(38),
      R => '0'
    );
\rdata_reg_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(5),
      Q => rdata_reg(39),
      R => '0'
    );
\rdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(23),
      Q => rdata_reg(3),
      R => '0'
    );
\rdata_reg_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(6),
      Q => rdata_reg(40),
      R => '0'
    );
\rdata_reg_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(7),
      Q => rdata_reg(41),
      R => '0'
    );
\rdata_reg_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(8),
      Q => rdata_reg(42),
      R => '0'
    );
\rdata_reg_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(9),
      Q => rdata_reg(43),
      R => '0'
    );
\rdata_reg_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(10),
      Q => rdata_reg(44),
      R => '0'
    );
\rdata_reg_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(11),
      Q => rdata_reg(45),
      R => '0'
    );
\rdata_reg_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(12),
      Q => rdata_reg(46),
      R => '0'
    );
\rdata_reg_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(13),
      Q => rdata_reg(47),
      R => '0'
    );
\rdata_reg_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(14),
      Q => rdata_reg(48),
      R => '0'
    );
\rdata_reg_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(15),
      Q => rdata_reg(49),
      R => '0'
    );
\rdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(24),
      Q => rdata_reg(4),
      R => '0'
    );
\rdata_reg_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(16),
      Q => rdata_reg(50),
      R => '0'
    );
\rdata_reg_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(17),
      Q => rdata_reg(51),
      R => '0'
    );
\rdata_reg_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(18),
      Q => rdata_reg(52),
      R => '0'
    );
\rdata_reg_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(19),
      Q => rdata_reg(53),
      R => '0'
    );
\rdata_reg_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(20),
      Q => rdata_reg(54),
      R => '0'
    );
\rdata_reg_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(21),
      Q => rdata_reg(55),
      R => '0'
    );
\rdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(25),
      Q => rdata_reg(5),
      R => '0'
    );
\rdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(26),
      Q => rdata_reg(6),
      R => '0'
    );
\rdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(27),
      Q => rdata_reg(7),
      R => '0'
    );
\rdata_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(28),
      Q => rdata_reg(8),
      R => '0'
    );
\rdata_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_RDATA(29),
      Q => rdata_reg(9),
      R => '0'
    );
rready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => flush_done,
      I1 => rstn,
      I2 => prog_full,
      O => rready_i_1_n_0
    );
rready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rready_i_1_n_0,
      Q => rready,
      R => '0'
    );
switch_buffer_ack_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808000800000"
    )
        port map (
      I0 => switch_buffer_reg_out,
      I1 => rstn,
      I2 => flush_done,
      I3 => \rd_addr_reg1_carry__2_n_0\,
      I4 => M_AXI_ARREADY,
      I5 => \^switch_buffer_ack_reg_reg_0\,
      O => switch_buffer_ack_reg_i_1_n_0
    );
switch_buffer_ack_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => switch_buffer_ack_reg_i_1_n_0,
      Q => \^switch_buffer_ack_reg_reg_0\,
      R => '0'
    );
switch_buffer_reg1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => switch_buffer,
      I1 => rstn,
      O => switch_buffer_reg1_i_1_n_0
    );
switch_buffer_reg1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => switch_buffer_reg1_i_1_n_0,
      Q => switch_buffer_reg1,
      R => '0'
    );
switch_buffer_reg2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => switch_buffer_reg1,
      I1 => rstn,
      O => switch_buffer_reg2_i_1_n_0
    );
switch_buffer_reg2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => switch_buffer_reg2_i_1_n_0,
      Q => switch_buffer_reg2,
      R => '0'
    );
switch_buffer_reg_out_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => switch_buffer_reg2,
      I1 => rstn,
      O => switch_buffer_reg_out_i_1_n_0
    );
switch_buffer_reg_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => switch_buffer_reg_out_i_1_n_0,
      Q => switch_buffer_reg_out,
      R => '0'
    );
\v_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count(0),
      O => \v_count[0]_i_1_n_0\
    );
\v_count[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22221222FFFFFFFF"
    )
        port map (
      I0 => v_count(10),
      I1 => \v_count[9]_i_4_n_0\,
      I2 => v_count_en,
      I3 => v_count(9),
      I4 => \v_count[10]_i_2_n_0\,
      I5 => pixel_rstn,
      O => \v_count[10]_i_1_n_0\
    );
\v_count[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => v_count(7),
      I1 => \v_count[9]_i_6_n_0\,
      I2 => v_count(6),
      I3 => v_count(8),
      O => \v_count[10]_i_2_n_0\
    );
\v_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_count(0),
      I1 => v_count(1),
      O => \v_count[1]_i_1_n_0\
    );
\v_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => v_count(1),
      I1 => v_count(0),
      I2 => v_count(2),
      O => \v_count[2]_i_1_n_0\
    );
\v_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => v_count(2),
      I1 => v_count(0),
      I2 => v_count(1),
      I3 => v_count(3),
      O => \v_count[3]_i_1_n_0\
    );
\v_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => v_count(3),
      I1 => v_count(1),
      I2 => v_count(0),
      I3 => v_count(2),
      I4 => v_count(4),
      O => \v_count[4]_i_1_n_0\
    );
\v_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => v_count(4),
      I1 => v_count(2),
      I2 => v_count(0),
      I3 => v_count(1),
      I4 => v_count(3),
      I5 => v_count(5),
      O => \v_count[5]_i_1_n_0\
    );
\v_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \v_count[9]_i_6_n_0\,
      I1 => v_count(6),
      O => \v_count[6]_i_1_n_0\
    );
\v_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => v_count(6),
      I1 => \v_count[9]_i_6_n_0\,
      I2 => v_count(7),
      O => \v_count[7]_i_1_n_0\
    );
\v_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => v_count(7),
      I1 => \v_count[9]_i_6_n_0\,
      I2 => v_count(6),
      I3 => v_count(8),
      O => \v_count[8]_i_1_n_0\
    );
\v_count[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \v_count[9]_i_4_n_0\,
      I1 => pixel_rstn,
      O => p_1_in(2)
    );
\v_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \v_count[9]_i_5_n_0\,
      I1 => h_count(8),
      I2 => h_count(3),
      I3 => h_count(6),
      I4 => h_count(5),
      I5 => \h_count[7]_i_2_n_0\,
      O => v_count_en
    );
\v_count[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => v_count(8),
      I1 => v_count(6),
      I2 => \v_count[9]_i_6_n_0\,
      I3 => v_count(7),
      I4 => v_count(9),
      O => \v_count[9]_i_3_n_0\
    );
\v_count[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \h_count[7]_i_2_n_0\,
      I1 => \v_count[9]_i_7_n_0\,
      I2 => \v_count[9]_i_5_n_0\,
      I3 => VGA_VS_INST_0_i_2_n_0,
      I4 => \v_count[9]_i_8_n_0\,
      O => \v_count[9]_i_4_n_0\
    );
\v_count[9]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => h_count(10),
      I1 => h_count(9),
      I2 => h_count(7),
      O => \v_count[9]_i_5_n_0\
    );
\v_count[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => v_count(4),
      I1 => v_count(2),
      I2 => v_count(0),
      I3 => v_count(1),
      I4 => v_count(3),
      I5 => v_count(5),
      O => \v_count[9]_i_6_n_0\
    );
\v_count[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => h_count(3),
      I1 => v_count(10),
      I2 => h_count(8),
      I3 => h_count(6),
      I4 => h_count(5),
      O => \v_count[9]_i_7_n_0\
    );
\v_count[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAA00000000"
    )
        port map (
      I0 => v_count(4),
      I1 => v_count(2),
      I2 => v_count(0),
      I3 => v_count(1),
      I4 => v_count(3),
      I5 => v_count(5),
      O => \v_count[9]_i_8_n_0\
    );
\v_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => v_count_en,
      D => \v_count[0]_i_1_n_0\,
      Q => v_count(0),
      R => p_1_in(2)
    );
\v_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => '1',
      D => \v_count[10]_i_1_n_0\,
      Q => v_count(10),
      R => '0'
    );
\v_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => v_count_en,
      D => \v_count[1]_i_1_n_0\,
      Q => v_count(1),
      R => p_1_in(2)
    );
\v_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => v_count_en,
      D => \v_count[2]_i_1_n_0\,
      Q => v_count(2),
      R => p_1_in(2)
    );
\v_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => v_count_en,
      D => \v_count[3]_i_1_n_0\,
      Q => v_count(3),
      R => p_1_in(2)
    );
\v_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => v_count_en,
      D => \v_count[4]_i_1_n_0\,
      Q => v_count(4),
      R => p_1_in(2)
    );
\v_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => v_count_en,
      D => \v_count[5]_i_1_n_0\,
      Q => v_count(5),
      R => p_1_in(2)
    );
\v_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => v_count_en,
      D => \v_count[6]_i_1_n_0\,
      Q => v_count(6),
      R => p_1_in(2)
    );
\v_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => v_count_en,
      D => \v_count[7]_i_1_n_0\,
      Q => v_count(7),
      R => p_1_in(2)
    );
\v_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => v_count_en,
      D => \v_count[8]_i_1_n_0\,
      Q => v_count(8),
      R => p_1_in(2)
    );
\v_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => v_count_en,
      D => \v_count[9]_i_3_n_0\,
      Q => v_count(9),
      R => p_1_in(2)
    );
wr_en_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => rready,
      I1 => M_AXI_RVALID,
      I2 => flush_done,
      I3 => rstn,
      O => wr_en_reg_i_1_n_0
    );
wr_en_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wr_en_reg_i_1_n_0,
      Q => wr_en,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dualCore_vga_controller_0_0 is
  port (
    VGA_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_G : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_HS : out STD_LOGIC;
    VGA_VS : out STD_LOGIC;
    clk : in STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    pixel_rstn : in STD_LOGIC;
    fifo_rst : in STD_LOGIC;
    rfifo_count : in STD_LOGIC_VECTOR ( 7 downto 0 );
    switch_buffer : in STD_LOGIC;
    switch_buffer_ack : out STD_LOGIC;
    M_AXI_AWID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWUSER : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BID : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARUSER : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RID : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RLAST : in STD_LOGIC;
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dualCore_vga_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dualCore_vga_controller_0_0 : entity is "dualCore_vga_controller_0_0,vga_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of dualCore_vga_controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of dualCore_vga_controller_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of dualCore_vga_controller_0_0 : entity is "vga_controller,Vivado 2020.2";
end dualCore_vga_controller_0_0;

architecture STRUCTURE of dualCore_vga_controller_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of M_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute x_interface_info of M_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute x_interface_info of M_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute x_interface_info of M_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute x_interface_info of M_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute x_interface_info of M_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute x_interface_info of M_AXI_RLAST : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute x_interface_info of M_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute x_interface_info of M_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute x_interface_info of M_AXI_WLAST : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute x_interface_info of M_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute x_interface_info of M_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, ASSOCIATED_BUSIF M_AXI, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN dualCore_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of fifo_rst : signal is "xilinx.com:signal:reset:1.0 fifo_rst RST";
  attribute x_interface_parameter of fifo_rst : signal is "XIL_INTERFACENAME fifo_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of pixel_clk : signal is "xilinx.com:signal:clock:1.0 pixel_clk CLK";
  attribute x_interface_parameter of pixel_clk : signal is "XIL_INTERFACENAME pixel_clk, ASSOCIATED_RESET pixel_rstn, FREQ_HZ 108000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of pixel_rstn : signal is "xilinx.com:signal:reset:1.0 pixel_rstn RST";
  attribute x_interface_parameter of pixel_rstn : signal is "XIL_INTERFACENAME pixel_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute x_interface_parameter of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of M_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute x_interface_info of M_AXI_ARBURST : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute x_interface_info of M_AXI_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute x_interface_info of M_AXI_ARID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARID";
  attribute x_interface_info of M_AXI_ARLEN : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute x_interface_info of M_AXI_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute x_interface_info of M_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute x_interface_info of M_AXI_ARQOS : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute x_interface_info of M_AXI_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute x_interface_info of M_AXI_ARUSER : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARUSER";
  attribute x_interface_info of M_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute x_interface_info of M_AXI_AWBURST : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute x_interface_info of M_AXI_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute x_interface_info of M_AXI_AWID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWID";
  attribute x_interface_parameter of M_AXI_AWID : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 125000000, ID_WIDTH 3, ADDR_WIDTH 32, AWUSER_WIDTH 5, ARUSER_WIDTH 5, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN dualCore_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of M_AXI_AWLEN : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute x_interface_info of M_AXI_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute x_interface_info of M_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute x_interface_info of M_AXI_AWQOS : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute x_interface_info of M_AXI_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute x_interface_info of M_AXI_AWUSER : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWUSER";
  attribute x_interface_info of M_AXI_BID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BID";
  attribute x_interface_info of M_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute x_interface_info of M_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute x_interface_info of M_AXI_RID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RID";
  attribute x_interface_info of M_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute x_interface_info of M_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute x_interface_info of M_AXI_WID : signal is "xilinx.com:interface:aximm:1.0 M_AXI WID";
  attribute x_interface_info of M_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
begin
  M_AXI_ARADDR(31 downto 6) <= \^m_axi_araddr\(31 downto 6);
  M_AXI_ARADDR(5) <= \<const0>\;
  M_AXI_ARADDR(4) <= \<const0>\;
  M_AXI_ARADDR(3) <= \<const0>\;
  M_AXI_ARADDR(2) <= \<const0>\;
  M_AXI_ARADDR(1) <= \<const0>\;
  M_AXI_ARADDR(0) <= \^m_axi_araddr\(0);
  M_AXI_ARBURST(1) <= \<const0>\;
  M_AXI_ARBURST(0) <= \<const1>\;
  M_AXI_ARCACHE(3) <= \<const0>\;
  M_AXI_ARCACHE(2) <= \<const0>\;
  M_AXI_ARCACHE(1) <= \<const1>\;
  M_AXI_ARCACHE(0) <= \<const1>\;
  M_AXI_ARID(2) <= \<const0>\;
  M_AXI_ARID(1) <= \<const0>\;
  M_AXI_ARID(0) <= \<const0>\;
  M_AXI_ARLEN(3) <= \<const1>\;
  M_AXI_ARLEN(2) <= \<const1>\;
  M_AXI_ARLEN(1) <= \<const1>\;
  M_AXI_ARLEN(0) <= \<const1>\;
  M_AXI_ARLOCK(1) <= \<const0>\;
  M_AXI_ARLOCK(0) <= \<const0>\;
  M_AXI_ARPROT(2) <= \<const0>\;
  M_AXI_ARPROT(1) <= \<const0>\;
  M_AXI_ARPROT(0) <= \<const0>\;
  M_AXI_ARQOS(3) <= \<const0>\;
  M_AXI_ARQOS(2) <= \<const0>\;
  M_AXI_ARQOS(1) <= \<const0>\;
  M_AXI_ARQOS(0) <= \<const0>\;
  M_AXI_ARSIZE(2) <= \<const0>\;
  M_AXI_ARSIZE(1) <= \<const1>\;
  M_AXI_ARSIZE(0) <= \<const1>\;
  M_AXI_ARUSER(4) <= \<const0>\;
  M_AXI_ARUSER(3) <= \<const0>\;
  M_AXI_ARUSER(2) <= \<const0>\;
  M_AXI_ARUSER(1) <= \<const0>\;
  M_AXI_ARUSER(0) <= \<const0>\;
  M_AXI_AWADDR(31) <= \<const0>\;
  M_AXI_AWADDR(30) <= \<const0>\;
  M_AXI_AWADDR(29) <= \<const0>\;
  M_AXI_AWADDR(28) <= \<const0>\;
  M_AXI_AWADDR(27) <= \<const0>\;
  M_AXI_AWADDR(26) <= \<const0>\;
  M_AXI_AWADDR(25) <= \<const0>\;
  M_AXI_AWADDR(24) <= \<const0>\;
  M_AXI_AWADDR(23) <= \<const0>\;
  M_AXI_AWADDR(22) <= \<const0>\;
  M_AXI_AWADDR(21) <= \<const0>\;
  M_AXI_AWADDR(20) <= \<const0>\;
  M_AXI_AWADDR(19) <= \<const0>\;
  M_AXI_AWADDR(18) <= \<const0>\;
  M_AXI_AWADDR(17) <= \<const0>\;
  M_AXI_AWADDR(16) <= \<const0>\;
  M_AXI_AWADDR(15) <= \<const0>\;
  M_AXI_AWADDR(14) <= \<const0>\;
  M_AXI_AWADDR(13) <= \<const0>\;
  M_AXI_AWADDR(12) <= \<const0>\;
  M_AXI_AWADDR(11) <= \<const0>\;
  M_AXI_AWADDR(10) <= \<const0>\;
  M_AXI_AWADDR(9) <= \<const0>\;
  M_AXI_AWADDR(8) <= \<const0>\;
  M_AXI_AWADDR(7) <= \<const0>\;
  M_AXI_AWADDR(6) <= \<const0>\;
  M_AXI_AWADDR(5) <= \<const0>\;
  M_AXI_AWADDR(4) <= \<const0>\;
  M_AXI_AWADDR(3) <= \<const0>\;
  M_AXI_AWADDR(2) <= \<const0>\;
  M_AXI_AWADDR(1) <= \<const0>\;
  M_AXI_AWADDR(0) <= \<const0>\;
  M_AXI_AWBURST(1) <= \<const0>\;
  M_AXI_AWBURST(0) <= \<const0>\;
  M_AXI_AWCACHE(3) <= \<const0>\;
  M_AXI_AWCACHE(2) <= \<const0>\;
  M_AXI_AWCACHE(1) <= \<const0>\;
  M_AXI_AWCACHE(0) <= \<const0>\;
  M_AXI_AWID(2) <= \<const0>\;
  M_AXI_AWID(1) <= \<const0>\;
  M_AXI_AWID(0) <= \<const0>\;
  M_AXI_AWLEN(3) <= \<const0>\;
  M_AXI_AWLEN(2) <= \<const0>\;
  M_AXI_AWLEN(1) <= \<const0>\;
  M_AXI_AWLEN(0) <= \<const0>\;
  M_AXI_AWLOCK(1) <= \<const0>\;
  M_AXI_AWLOCK(0) <= \<const0>\;
  M_AXI_AWPROT(2) <= \<const0>\;
  M_AXI_AWPROT(1) <= \<const0>\;
  M_AXI_AWPROT(0) <= \<const0>\;
  M_AXI_AWQOS(3) <= \<const0>\;
  M_AXI_AWQOS(2) <= \<const0>\;
  M_AXI_AWQOS(1) <= \<const0>\;
  M_AXI_AWQOS(0) <= \<const0>\;
  M_AXI_AWSIZE(2) <= \<const0>\;
  M_AXI_AWSIZE(1) <= \<const0>\;
  M_AXI_AWSIZE(0) <= \<const0>\;
  M_AXI_AWUSER(4) <= \<const0>\;
  M_AXI_AWUSER(3) <= \<const0>\;
  M_AXI_AWUSER(2) <= \<const0>\;
  M_AXI_AWUSER(1) <= \<const0>\;
  M_AXI_AWUSER(0) <= \<const0>\;
  M_AXI_AWVALID <= \<const0>\;
  M_AXI_BREADY <= \<const0>\;
  M_AXI_WDATA(63) <= \<const0>\;
  M_AXI_WDATA(62) <= \<const0>\;
  M_AXI_WDATA(61) <= \<const0>\;
  M_AXI_WDATA(60) <= \<const0>\;
  M_AXI_WDATA(59) <= \<const0>\;
  M_AXI_WDATA(58) <= \<const0>\;
  M_AXI_WDATA(57) <= \<const0>\;
  M_AXI_WDATA(56) <= \<const0>\;
  M_AXI_WDATA(55) <= \<const0>\;
  M_AXI_WDATA(54) <= \<const0>\;
  M_AXI_WDATA(53) <= \<const0>\;
  M_AXI_WDATA(52) <= \<const0>\;
  M_AXI_WDATA(51) <= \<const0>\;
  M_AXI_WDATA(50) <= \<const0>\;
  M_AXI_WDATA(49) <= \<const0>\;
  M_AXI_WDATA(48) <= \<const0>\;
  M_AXI_WDATA(47) <= \<const0>\;
  M_AXI_WDATA(46) <= \<const0>\;
  M_AXI_WDATA(45) <= \<const0>\;
  M_AXI_WDATA(44) <= \<const0>\;
  M_AXI_WDATA(43) <= \<const0>\;
  M_AXI_WDATA(42) <= \<const0>\;
  M_AXI_WDATA(41) <= \<const0>\;
  M_AXI_WDATA(40) <= \<const0>\;
  M_AXI_WDATA(39) <= \<const0>\;
  M_AXI_WDATA(38) <= \<const0>\;
  M_AXI_WDATA(37) <= \<const0>\;
  M_AXI_WDATA(36) <= \<const0>\;
  M_AXI_WDATA(35) <= \<const0>\;
  M_AXI_WDATA(34) <= \<const0>\;
  M_AXI_WDATA(33) <= \<const0>\;
  M_AXI_WDATA(32) <= \<const0>\;
  M_AXI_WDATA(31) <= \<const0>\;
  M_AXI_WDATA(30) <= \<const0>\;
  M_AXI_WDATA(29) <= \<const0>\;
  M_AXI_WDATA(28) <= \<const0>\;
  M_AXI_WDATA(27) <= \<const0>\;
  M_AXI_WDATA(26) <= \<const0>\;
  M_AXI_WDATA(25) <= \<const0>\;
  M_AXI_WDATA(24) <= \<const0>\;
  M_AXI_WDATA(23) <= \<const0>\;
  M_AXI_WDATA(22) <= \<const0>\;
  M_AXI_WDATA(21) <= \<const0>\;
  M_AXI_WDATA(20) <= \<const0>\;
  M_AXI_WDATA(19) <= \<const0>\;
  M_AXI_WDATA(18) <= \<const0>\;
  M_AXI_WDATA(17) <= \<const0>\;
  M_AXI_WDATA(16) <= \<const0>\;
  M_AXI_WDATA(15) <= \<const0>\;
  M_AXI_WDATA(14) <= \<const0>\;
  M_AXI_WDATA(13) <= \<const0>\;
  M_AXI_WDATA(12) <= \<const0>\;
  M_AXI_WDATA(11) <= \<const0>\;
  M_AXI_WDATA(10) <= \<const0>\;
  M_AXI_WDATA(9) <= \<const0>\;
  M_AXI_WDATA(8) <= \<const0>\;
  M_AXI_WDATA(7) <= \<const0>\;
  M_AXI_WDATA(6) <= \<const0>\;
  M_AXI_WDATA(5) <= \<const0>\;
  M_AXI_WDATA(4) <= \<const0>\;
  M_AXI_WDATA(3) <= \<const0>\;
  M_AXI_WDATA(2) <= \<const0>\;
  M_AXI_WDATA(1) <= \<const0>\;
  M_AXI_WDATA(0) <= \<const0>\;
  M_AXI_WID(5) <= \<const0>\;
  M_AXI_WID(4) <= \<const0>\;
  M_AXI_WID(3) <= \<const0>\;
  M_AXI_WID(2) <= \<const0>\;
  M_AXI_WID(1) <= \<const0>\;
  M_AXI_WID(0) <= \<const0>\;
  M_AXI_WLAST <= \<const0>\;
  M_AXI_WSTRB(7) <= \<const0>\;
  M_AXI_WSTRB(6) <= \<const0>\;
  M_AXI_WSTRB(5) <= \<const0>\;
  M_AXI_WSTRB(4) <= \<const0>\;
  M_AXI_WSTRB(3) <= \<const0>\;
  M_AXI_WSTRB(2) <= \<const0>\;
  M_AXI_WSTRB(1) <= \<const0>\;
  M_AXI_WSTRB(0) <= \<const0>\;
  M_AXI_WVALID <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.dualCore_vga_controller_0_0_vga_controller
     port map (
      M_AXI_ARADDR(26 downto 1) => \^m_axi_araddr\(31 downto 6),
      M_AXI_ARADDR(0) => \^m_axi_araddr\(0),
      M_AXI_ARREADY => M_AXI_ARREADY,
      M_AXI_ARVALID => M_AXI_ARVALID,
      M_AXI_RDATA(43 downto 22) => M_AXI_RDATA(55 downto 34),
      M_AXI_RDATA(21 downto 0) => M_AXI_RDATA(23 downto 2),
      M_AXI_RREADY => M_AXI_RREADY,
      M_AXI_RVALID => M_AXI_RVALID,
      VGA_B(3 downto 0) => VGA_B(3 downto 0),
      VGA_G(3 downto 0) => VGA_G(3 downto 0),
      VGA_HS => VGA_HS,
      VGA_R(3 downto 0) => VGA_R(3 downto 0),
      VGA_VS => VGA_VS,
      clk => clk,
      fifo_rst => fifo_rst,
      pixel_clk => pixel_clk,
      pixel_rstn => pixel_rstn,
      rfifo_count(7 downto 0) => rfifo_count(7 downto 0),
      rstn => rstn,
      switch_buffer => switch_buffer,
      switch_buffer_ack_reg_reg_0 => switch_buffer_ack
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
