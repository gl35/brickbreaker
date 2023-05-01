library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity trng_v1_0_S00_AXI is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global Clock Signal
		S_AXI_ACLK	: in std_logic;
		-- Global Reset Signal. This Signal is Active LOW
		S_AXI_ARESETN	: in std_logic;
		-- Write address (issued by master, acceped by Slave)
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Write channel Protection type. This signal indicates the
    		-- privilege and security level of the transaction, and whether
    		-- the transaction is a data access or an instruction access.
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		-- Write address valid. This signal indicates that the master signaling
    		-- valid write address and control information.
		S_AXI_AWVALID	: in std_logic;
		-- Write address ready. This signal indicates that the slave is ready
    		-- to accept an address and associated control signals.
		S_AXI_AWREADY	: out std_logic;
		-- Write data (issued by master, acceped by Slave) 
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. This signal indicates which byte lanes hold
    		-- valid data. There is one write strobe bit for each eight
    		-- bits of the write data bus.    
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		-- Write valid. This signal indicates that valid write
    		-- data and strobes are available.
		S_AXI_WVALID	: in std_logic;
		-- Write ready. This signal indicates that the slave
    		-- can accept the write data.
		S_AXI_WREADY	: out std_logic;
		-- Write response. This signal indicates the status
    		-- of the write transaction.
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		-- Write response valid. This signal indicates that the channel
    		-- is signaling a valid write response.
		S_AXI_BVALID	: out std_logic;
		-- Response ready. This signal indicates that the master
    		-- can accept a write response.
		S_AXI_BREADY	: in std_logic;
		-- Read address (issued by master, acceped by Slave)
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Protection type. This signal indicates the privilege
    		-- and security level of the transaction, and whether the
    		-- transaction is a data access or an instruction access.
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		-- Read address valid. This signal indicates that the channel
    		-- is signaling valid read address and control information.
		S_AXI_ARVALID	: in std_logic;
		-- Read address ready. This signal indicates that the slave is
    		-- ready to accept an address and associated control signals.
		S_AXI_ARREADY	: out std_logic;
		-- Read data (issued by slave)
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the
    		-- read transfer.
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		-- Read valid. This signal indicates that the channel is
    		-- signaling the required read data.
		S_AXI_RVALID	: out std_logic;
		-- Read ready. This signal indicates that the master can
    		-- accept the read data and response information.
		S_AXI_RREADY	: in std_logic
	);
end trng_v1_0_S00_AXI;

architecture arch_imp of trng_v1_0_S00_AXI is

	-- AXI4LITE signals
	signal axi_awaddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awready	: std_logic;
	signal axi_wready	: std_logic;
	signal axi_bresp	: std_logic_vector(1 downto 0);
	signal axi_bvalid	: std_logic;
	signal axi_araddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arready	: std_logic;
	signal axi_rdata	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal axi_rresp	: std_logic_vector(1 downto 0);
	signal axi_rvalid	: std_logic;

	-- Example-specific design signals
	-- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	-- ADDR_LSB is used for addressing 32/64 bit registers/memories
	-- ADDR_LSB = 2 for 32 bits (n downto 2)
	-- ADDR_LSB = 3 for 64 bits (n downto 3)
	constant ADDR_LSB  : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
	constant OPT_MEM_ADDR_BITS : integer := 1;
	------------------------------------------------
	---- Signals for user logic register space example
	--------------------------------------------------
	---- Number of Slave Registers 4
	signal slv_reg0	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg1	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg2	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg3	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg_rden	: std_logic;
	signal slv_reg_wren	: std_logic;
	signal reg_data_out	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal byte_index	: integer;
	signal aw_en	: std_logic;
	
--	signal enable : std_logic;
--	signal a : std_logic_vector(2*C_S_AXI_DATA_WIDTH-1 downto 0);
--	signal b : std_logic_vector(2*C_S_AXI_DATA_WIDTH-1 downto 0);
--	signal c : std_logic_vector(2*C_S_AXI_DATA_WIDTH-1 downto 0);
--	signal d : std_logic_vector(2*C_S_AXI_DATA_WIDTH-1 downto 0);
--	signal e : std_logic_vector(2*C_S_AXI_DATA_WIDTH-1 downto 0);
--    signal dff : std_logic_vector(2*C_S_AXI_DATA_WIDTH-1 downto 0);
--    signal firstXor : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal a1 : std_logic;
    signal a2 : std_logic;
    signal a3 : std_logic;
    signal a4 : std_logic;
    signal a5 : std_logic;
    signal a6 : std_logic;
    signal a7 : std_logic;
    signal a8 : std_logic;
    signal a9 : std_logic;
    signal a10 : std_logic;
    signal a11 : std_logic;
    signal a12 : std_logic;
    signal a13 : std_logic;
    signal a14 : std_logic;
    signal a15 : std_logic;
    signal a16 : std_logic;
    signal a17 : std_logic;
    signal a18 : std_logic;
    signal a19 : std_logic;
    signal a20 : std_logic;
    signal a21 : std_logic;
    signal a22 : std_logic;
    signal a23 : std_logic;
    signal a24 : std_logic;
    signal a25 : std_logic;
    signal a26 : std_logic;
    signal a27 : std_logic;
    signal a28 : std_logic;
    signal a29 : std_logic;
    signal a30 : std_logic;
    signal a31 : std_logic;
    signal a32 : std_logic;
    signal a33 : std_logic;
    signal a34 : std_logic;
    signal a35 : std_logic;
    signal a36 : std_logic;
    signal a37 : std_logic;
    signal a38 : std_logic;
    signal a39 : std_logic;
    signal a40 : std_logic;
    signal a41 : std_logic;
    signal a42 : std_logic;
    signal a43 : std_logic;
    signal a44 : std_logic;
    signal a45 : std_logic; 
    signal a46 : std_logic;
    signal a47 : std_logic;
    signal a48 : std_logic;
    signal a49 : std_logic;
    signal a50 : std_logic;
    signal a51 : std_logic;
    signal a52 : std_logic;
    signal a53 : std_logic;
    signal a54 : std_logic;
    signal a55 : std_logic;
    signal a56 : std_logic;
    signal a57 : std_logic;
    signal a58 : std_logic;
    signal a59 : std_logic;
    signal a60 : std_logic;
    signal a61 : std_logic;
    signal a62 : std_logic;
    signal a63 : std_logic;
    signal a64 : std_logic;
    
    signal b1 : std_logic;
    signal b2 : std_logic;
    signal b3 : std_logic;
    signal b4 : std_logic;
    signal b5 : std_logic;
    signal b6 : std_logic;
    signal b7 : std_logic;
    signal b8 : std_logic;
    signal b9 : std_logic;
    signal b10 : std_logic;
    signal b11 : std_logic;
    signal b12 : std_logic;
    signal b13 : std_logic;
    signal b14 : std_logic;
    signal b15 : std_logic;
    signal b16 : std_logic;
    signal b17 : std_logic;
    signal b18 : std_logic;
    signal b19 : std_logic;
    signal b20 : std_logic;
    signal b21 : std_logic;
    signal b22 : std_logic;
    signal b23 : std_logic;
    signal b24 : std_logic;
    signal b25 : std_logic;
    signal b26 : std_logic;
    signal b27 : std_logic;
    signal b28 : std_logic;
    signal b29 : std_logic;
    signal b30 : std_logic;
    signal b31 : std_logic;
    signal b32 : std_logic;
    signal b33 : std_logic;
    signal b34 : std_logic;
    signal b35 : std_logic;
    signal b36 : std_logic;
    signal b37 : std_logic;
    signal b38 : std_logic;
    signal b39 : std_logic;
    signal b40 : std_logic;
    signal b41 : std_logic;
    signal b42 : std_logic;
    signal b43 : std_logic;
    signal b44 : std_logic;
    signal b45 : std_logic;
    signal b46 : std_logic;
    signal b47 : std_logic;
    signal b48 : std_logic;
    signal b49 : std_logic;
    signal b50 : std_logic;
    signal b51 : std_logic;
    signal b52 : std_logic;
    signal b53 : std_logic;
    signal b54 : std_logic;
    signal b55 : std_logic;
    signal b56 : std_logic;
    signal b57 : std_logic;
    signal b58 : std_logic;
    signal b59 : std_logic;
    signal b60 : std_logic;
    signal b61 : std_logic;
    signal b62 : std_logic;
    signal b63 : std_logic;
    signal b64 : std_logic;

    signal c1 : std_logic;
    signal c2 : std_logic;
    signal c3 : std_logic;
    signal c4 : std_logic;
    signal c5 : std_logic;
    signal c6 : std_logic;
    signal c7 : std_logic;
    signal c8 : std_logic;
    signal c9 : std_logic;
    signal c10 : std_logic;
    signal c11 : std_logic;
    signal c12 : std_logic;
    signal c13 : std_logic;
    signal c14 : std_logic;
    signal c15 : std_logic;
    signal c16 : std_logic;
    signal c17 : std_logic;
    signal c18 : std_logic;
    signal c19 : std_logic;
    signal c20 : std_logic;
    signal c21 : std_logic;
    signal c22 : std_logic;
    signal c23 : std_logic;
    signal c24 : std_logic;
    signal c25 : std_logic;
    signal c26 : std_logic;
    signal c27 : std_logic;
    signal c28 : std_logic;
    signal c29 : std_logic;
    signal c30 : std_logic;
    signal c31 : std_logic;
    signal c32 : std_logic;
    signal c33 : std_logic;
    signal c34 : std_logic;
    signal c35 : std_logic;
    signal c36 : std_logic;
    signal c37 : std_logic;
    signal c38 : std_logic;
    signal c39 : std_logic;
    signal c40 : std_logic;
    signal c41 : std_logic;
    signal c42 : std_logic;
    signal c43 : std_logic;
    signal c44 : std_logic;
    signal c45 : std_logic;
    signal c46 : std_logic;
    signal c47 : std_logic;
    signal c48 : std_logic;
    signal c49 : std_logic;
    signal c50 : std_logic;
    signal c51 : std_logic;
    signal c52 : std_logic;
    signal c53 : std_logic;
    signal c54 : std_logic;
    signal c55 : std_logic;
    signal c56 : std_logic;
    signal c57 : std_logic;
    signal c58 : std_logic;
    signal c59 : std_logic;
    signal c60 : std_logic;
    signal c61 : std_logic;
    signal c62 : std_logic;
    signal c63 : std_logic;
    signal c64 : std_logic;

    signal d1 : std_logic;
    signal d2 : std_logic;
    signal d3 : std_logic;
    signal d4 : std_logic;
    signal d5 : std_logic;
    signal d6 : std_logic;
    signal d7 : std_logic;
    signal d8 : std_logic;
    signal d9 : std_logic;
    signal d10 : std_logic;
    signal d11 : std_logic;
    signal d12 : std_logic;
    signal d13 : std_logic;
    signal d14 : std_logic;
    signal d15 : std_logic;
    signal d16 : std_logic;
    signal d17 : std_logic;
    signal d18 : std_logic;
    signal d19 : std_logic;
    signal d20 : std_logic;
    signal d21 : std_logic;
    signal d22 : std_logic;
    signal d23 : std_logic;
    signal d24 : std_logic;
    signal d25 : std_logic;
    signal d26 : std_logic;
    signal d27 : std_logic;
    signal d28 : std_logic;
    signal d29 : std_logic;
    signal d30 : std_logic;
    signal d31 : std_logic;
    signal d32 : std_logic;
    signal d33 : std_logic;
    signal d34 : std_logic;
    signal d35 : std_logic;
    signal d36 : std_logic;
    signal d37 : std_logic;
    signal d38 : std_logic;
    signal d39 : std_logic;
    signal d40 : std_logic;
    signal d41 : std_logic;
    signal d42 : std_logic;
    signal d43 : std_logic;
    signal d44 : std_logic;
    signal d45 : std_logic;
    signal d46 : std_logic;
    signal d47 : std_logic;
    signal d48 : std_logic;
    signal d49 : std_logic;
    signal d50 : std_logic;
    signal d51 : std_logic;
    signal d52 : std_logic;
    signal d53 : std_logic;
    signal d54 : std_logic;
    signal d55 : std_logic;
    signal d56 : std_logic;
    signal d57 : std_logic;
    signal d58 : std_logic;
    signal d59 : std_logic;
    signal d60 : std_logic;
    signal d61 : std_logic;
    signal d62 : std_logic;
    signal d63 : std_logic;
    signal d64 : std_logic;

    signal e1 : std_logic;
    signal e2 : std_logic;
    signal e3 : std_logic;
    signal e4 : std_logic;
    signal e5 : std_logic;
    signal e6 : std_logic;
    signal e7 : std_logic;
    signal e8 : std_logic;
    signal e9 : std_logic;
    signal e10 : std_logic;
    signal e11 : std_logic;
    signal e12 : std_logic;
    signal e13 : std_logic;
    signal e14 : std_logic;
    signal e15 : std_logic;
    signal e16 : std_logic;
    signal e17 : std_logic;
    signal e18 : std_logic;
    signal e19 : std_logic;
    signal e20 : std_logic;
    signal e21 : std_logic;
    signal e22 : std_logic;
    signal e23 : std_logic;
    signal e24 : std_logic;
    signal e25 : std_logic;
    signal e26 : std_logic;
    signal e27 : std_logic;
    signal e28 : std_logic;
    signal e29 : std_logic;
    signal e30 : std_logic;
    signal e31 : std_logic;
    signal e32 : std_logic;
    signal e33 : std_logic;
    signal e34 : std_logic;
    signal e35 : std_logic;
    signal e36 : std_logic;
    signal e37 : std_logic;
    signal e38 : std_logic;
    signal e39 : std_logic;
    signal e40 : std_logic;
    signal e41 : std_logic;
    signal e42 : std_logic;
    signal e43 : std_logic;
    signal e44 : std_logic;
    signal e45 : std_logic;
    signal e46 : std_logic;
    signal e47 : std_logic;
    signal e48 : std_logic;
    signal e49 : std_logic;
    signal e50 : std_logic;
    signal e51 : std_logic;
    signal e52 : std_logic;
    signal e53 : std_logic;
    signal e54 : std_logic;
    signal e55 : std_logic;
    signal e56 : std_logic;
    signal e57 : std_logic;
    signal e58 : std_logic;
    signal e59 : std_logic;
    signal e60 : std_logic;
    signal e61 : std_logic;
    signal e62 : std_logic;
    signal e63 : std_logic;
    signal e64 : std_logic;
    
    --signal dff : unsigned(2*WIDTH-1 downto 0) := (others => '0');
    signal dff0 : std_logic;
    signal dff1 : std_logic;
    signal dff2 : std_logic;
    signal dff3 : std_logic;
    signal dff4 : std_logic;
    signal dff5 : std_logic;
    signal dff6 : std_logic;
    signal dff7 : std_logic;
    signal dff8 : std_logic;
    signal dff9 : std_logic;
    signal dff10 : std_logic;
    signal dff11 : std_logic;
    signal dff12 : std_logic;
    signal dff13 : std_logic;
    signal dff14 : std_logic;
    signal dff15 : std_logic;
    signal dff16 : std_logic;
    signal dff17 : std_logic;
    signal dff18 : std_logic;
    signal dff19 : std_logic;
    signal dff20 : std_logic;
    signal dff21 : std_logic;
    signal dff22 : std_logic;
    signal dff23 : std_logic;
    signal dff24 : std_logic;
    signal dff25 : std_logic;
    signal dff26 : std_logic;
    signal dff27 : std_logic;
    signal dff28 : std_logic;
    signal dff29 : std_logic;
    signal dff30 : std_logic;
    signal dff31 : std_logic;
    signal dff32 : std_logic;
    signal dff33 : std_logic;
    signal dff34 : std_logic;
    signal dff35 : std_logic;
    signal dff36 : std_logic;
    signal dff37 : std_logic;
    signal dff38 : std_logic;
    signal dff39 : std_logic;
    signal dff40 : std_logic;
    signal dff41 : std_logic;
    signal dff42 : std_logic;
    signal dff43 : std_logic;
    signal dff44 : std_logic;
    signal dff45 : std_logic;
    signal dff46 : std_logic;
    signal dff47 : std_logic;
    signal dff48 : std_logic;
    signal dff49 : std_logic;
    signal dff50 : std_logic;
    signal dff51 : std_logic;
    signal dff52 : std_logic;
    signal dff53 : std_logic;
    signal dff54 : std_logic;
    signal dff55 : std_logic;
    signal dff56 : std_logic;
    signal dff57 : std_logic;
    signal dff58 : std_logic;
    signal dff59 : std_logic;
    signal dff60 : std_logic;
    signal dff61 : std_logic;
    signal dff62 : std_logic;
    signal dff63 : std_logic;
  
    signal firstXor0 : std_logic;
    signal firstXor1 : std_logic;
    signal firstXor2 : std_logic;
    signal firstXor3 : std_logic;
    signal firstXor4 : std_logic;
    signal firstXor5 : std_logic;
    signal firstXor6 : std_logic;
    signal firstXor7 : std_logic;
    signal firstXor8 : std_logic;
    signal firstXor9 : std_logic;
    signal firstXor10 : std_logic;
    signal firstXor11 : std_logic;
    signal firstXor12 : std_logic;
    signal firstXor13 : std_logic;
    signal firstXor14 : std_logic;
    signal firstXor15 : std_logic;
    signal firstXor16 : std_logic;
    signal firstXor17 : std_logic;
    signal firstXor18 : std_logic;
    signal firstXor19 : std_logic;
    signal firstXor20 : std_logic;
    signal firstXor21 : std_logic;
    signal firstXor22 : std_logic;
    signal firstXor23 : std_logic;
    signal firstXor24 : std_logic;
    signal firstXor25 : std_logic;
    signal firstXor26 : std_logic;
    signal firstXor27 : std_logic;
    signal firstXor28 : std_logic;
    signal firstXor29 : std_logic;
    signal firstXor30 : std_logic;
    signal firstXor31 : std_logic;
    signal rng_out : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0'); --output of the xor: bit 0 - 31 in the output int
    
begin
	-- I/O Connections assignments

	S_AXI_AWREADY	<= axi_awready;
	S_AXI_WREADY	<= axi_wready;
	S_AXI_BRESP	<= axi_bresp;
	S_AXI_BVALID	<= axi_bvalid;
	S_AXI_ARREADY	<= axi_arready;
	S_AXI_RDATA	<= axi_rdata;
	S_AXI_RRESP	<= axi_rresp;
	S_AXI_RVALID	<= axi_rvalid;
	-- Implement axi_awready generation
	-- axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	-- de-asserted when reset is low.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awready <= '0';
	      aw_en <= '1';
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
	        -- slave is ready to accept write address when
	        -- there is a valid write address and write data
	        -- on the write address and data bus. This design 
	        -- expects no outstanding transactions. 
	           axi_awready <= '1';
	           aw_en <= '0';
	        elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then
	           aw_en <= '1';
	           axi_awready <= '0';
	      else
	        axi_awready <= '0';
	      end if;
	    end if;
	  end if;
	end process;

	-- Implement axi_awaddr latching
	-- This process is used to latch the address when both 
	-- S_AXI_AWVALID and S_AXI_WVALID are valid. 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awaddr <= (others => '0');
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
	        -- Write Address latching
	        axi_awaddr <= S_AXI_AWADDR;
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_wready generation
	-- axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	-- de-asserted when reset is low. 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_wready <= '0';
	    else
	      if (axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1' and aw_en = '1') then
	          -- slave is ready to accept write data when 
	          -- there is a valid write address and write data
	          -- on the write address and data bus. This design 
	          -- expects no outstanding transactions.           
	          axi_wready <= '1';
	      else
	        axi_wready <= '0';
	      end if;
	    end if;
	  end if;
	end process; 

	-- Implement memory mapped register select and write logic generation
	-- The write data is accepted and written to memory mapped registers when
	-- axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	-- select byte enables of slave registers while writing.
	-- These registers are cleared when reset (active low) is applied.
	-- Slave register write enable is asserted when valid address and data are available
	-- and the slave is ready to accept the write address and write data.
	slv_reg_wren <= axi_wready and S_AXI_WVALID and axi_awready and S_AXI_AWVALID ;

	process (S_AXI_ACLK)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0); 
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      slv_reg0 <= (others => '0');
	      slv_reg1 <= (others => '0');
	      slv_reg2 <= (others => '0');
	      slv_reg3 <= (others => '0');
	    else
	      loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	      if (slv_reg_wren = '1') then
	        case loc_addr is
	          when b"00" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 0
	                slv_reg0(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 1
	                slv_reg1(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 2
	                slv_reg2(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg3(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when others =>
	            slv_reg0 <= slv_reg0;
	            slv_reg1 <= slv_reg1;
	            slv_reg2 <= slv_reg2;
	            slv_reg3 <= slv_reg3;
	        end case;
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement write response logic generation
	-- The write response and response valid signals are asserted by the slave 
	-- when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	-- This marks the acceptance of address and indicates the status of 
	-- write transaction.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_bvalid  <= '0';
	      axi_bresp   <= "00"; --need to work more on the responses
	    else
	      if (axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0'  ) then
	        axi_bvalid <= '1';
	        axi_bresp  <= "00"; 
	      elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then   --check if bready is asserted while bvalid is high)
	        axi_bvalid <= '0';                                 -- (there is a possibility that bready is always asserted high)
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_arready generation
	-- axi_arready is asserted for one S_AXI_ACLK clock cycle when
	-- S_AXI_ARVALID is asserted. axi_awready is 
	-- de-asserted when reset (active low) is asserted. 
	-- The read address is also latched when S_AXI_ARVALID is 
	-- asserted. axi_araddr is reset to zero on reset assertion.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_arready <= '0';
	      axi_araddr  <= (others => '1');
	    else
	      if (axi_arready = '0' and S_AXI_ARVALID = '1') then
	        -- indicates that the slave has acceped the valid read address
	        axi_arready <= '1';
	        -- Read Address latching 
	        axi_araddr  <= S_AXI_ARADDR;           
	      else
	        axi_arready <= '0';
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_arvalid generation
	-- axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	-- S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	-- data are available on the axi_rdata bus at this instance. The 
	-- assertion of axi_rvalid marks the validity of read data on the 
	-- bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	-- is deasserted on reset (active low). axi_rresp and axi_rdata are 
	-- cleared to zero on reset (active low).  
	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then
	    if S_AXI_ARESETN = '0' then
	      axi_rvalid <= '0';
	      axi_rresp  <= "00";
	    else
	      if (axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0') then
	        -- Valid read data is available at the read data bus
	        axi_rvalid <= '1';
	        axi_rresp  <= "00"; -- 'OKAY' response
	      elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
	        -- Read data is accepted by the master
	        axi_rvalid <= '0';
	      end if;            
	    end if;
	  end if;
	end process;

	-- Implement memory mapped register select and read logic generation
	-- Slave register read enable is asserted when valid address is available
	-- and the slave is ready to accept the read address.
	slv_reg_rden <= axi_arready and S_AXI_ARVALID and (not axi_rvalid) ;

	process (slv_reg0, rng_out, slv_reg2, slv_reg3, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
	    -- Address decoding for reading registers
	    loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	    case loc_addr is
	      when b"00" =>
	        reg_data_out <= slv_reg0;
	      when b"01" =>
            reg_data_out <= rng_out;  --change from slv_reg1 to rng_out
	      when b"10" =>
	        reg_data_out <= slv_reg2;
	      when b"11" =>
	        reg_data_out <= slv_reg3;
	      when others =>
	        reg_data_out  <= (others => '0');
	    end case;
	end process; 

	-- Output register or memory read data
	process( S_AXI_ACLK ) is
	begin
	  if (rising_edge (S_AXI_ACLK)) then
	    if ( S_AXI_ARESETN = '0' ) then
	      axi_rdata  <= (others => '0');
	    else
	      if (slv_reg_rden = '1') then
	        -- When there is a valid read address (S_AXI_ARVALID) with 
	        -- acceptance of read address by the slave (axi_arready), 
	        -- output the read dada 
	        -- Read address mux
	          axi_rdata <= reg_data_out;     -- register read data
	      end if;   
	    end if;
	  end if;
	end process;
	
-- Add user logic here
 process(S_AXI_ACLK) 
   begin     
        b1 <= not a1;
        c1 <= not b1;
        d1 <= not c1;
        e1 <= not d1;
        a1 <= not e1;
      
        b2 <= not a2;
        c2 <= not b2;
        d2 <= not c2;
        e2 <= not d2;
        a2 <= not e2;
             
        b3 <= not a3;
        c3 <= not b3;
        d3 <= not c3;
        e3 <= not d3;
        a3 <= not e3;   
        
        b4 <= not a4;
        c4 <= not b4;
        d4 <= not c4;
        e4 <= not d4;
        a4 <= not e4;
            
        b5 <= not a5;
        c5 <= not b5;
        d5 <= not c5;
        e5 <= not d5;
        a5 <= not e5;
        
        b6 <= not a6;
        c6 <= not b6;
        d6 <= not c6;
        e6 <= not d6;
        a6 <= not e6;     
        
        b7 <= not a7;
        c7 <= not b7;
        d7 <= not c7;
        e7 <= not d7;
        a7 <= not e7;       
        
        b8 <= not a8;
        c8 <= not b8;
        d8 <= not c8;
        e8 <= not d8;
        a8 <= not e8;
        
        b9 <= not a9;
        c9 <= not b9;
        d9 <= not c9;
        e9 <= not d9;
        a9 <= not e9;
        
        b10 <= not a10;
        c10 <= not b10;
        d10 <= not c10;
        e10 <= not d10;
        a10 <= not e10;
        
        b11 <= not a11;
        c11 <= not b11;
        d11 <= not c11;
        e11 <= not d11;
        a11 <= not e11;

        b12 <= not a12;
        c12 <= not b12;
        d12 <= not c12;
        e12 <= not d12;
        a12 <= not e12;
        
        b13 <= not a13;
        c13 <= not b13;
        d13 <= not c13;
        e13 <= not d13;
        a13 <= not e13;  
        
        b14 <= not a14;
        c14 <= not b14;
        d14 <= not c14;
        e14 <= not d14;
        a14 <= not e14;  
        
        b15 <= not a15;
        c15 <= not b15;
        d15 <= not c15;
        e15 <= not d15;
        a15 <= not e15;    
        
        b16 <= not a16;
        c16 <= not b16;
        d16 <= not c16;
        e16 <= not d16;
        a16 <= not e16;   
        
        b17 <= not a17;
        c17 <= not b17;
        d17 <= not c17;
        e17 <= not d17;
        a17 <= not e17;
        
        b18 <= not a18;
        c18 <= not b18;
        d18 <= not c18;
        e18 <= not d18;
        a18 <= not e18;
        
        
        b19 <= not a19;
        c19 <= not b19;
        d19 <= not c19;
        e19 <= not d19;
        a19 <= not e19;
        

        b20 <= not a20;
        c20 <= not b20;
        d20 <= not c20;
        e20 <= not d20;
        a20 <= not e20;
        
         --------------------------------------------------------------21      
        b21 <= not a21;
        c21 <= not b21;
        d21 <= not c21;
        e21 <= not d21;
        a21 <= not e21; 
        
        
        b22 <= not a22;
        c22 <= not b22;
        d22 <= not c22;
        e22 <= not d22;
        a22 <= not e22;
        
        
        b23 <= not a23;
        c23 <= not b23;
        d23 <= not c23;
        e23 <= not d23;
        a23 <= not e23;
        
        
        b24 <= not a24;
        c24 <= not b24;
        d24 <= not c24;
        e24 <= not d24;
        a24 <= not e24;
        
        
        b25 <= not a25;
        c25 <= not b25;
        d25 <= not c25;
        e25 <= not d25;
        a25 <= not e25;
        
        
        b26 <= not a26;
        c26 <= not b26;
        d26 <= not c26;
        e26 <= not d26;
        a26 <= not e26;
        
        
        b27 <= not a27;
        c27 <= not b27;
        d27 <= not c27;
        e27 <= not d27;
        a27 <= not e27;
        
        
        b28 <= not a28;
        c28 <= not b28;
        d28 <= not c28;
        e28 <= not d28;
        a28 <= not e28;
        
        b29 <= not a29;
        c29 <= not b29;
        d29 <= not c29;
        e29 <= not d29;
        a29 <= not e29;
        
        b30 <= not a30;
        c30 <= not b30;
        d30 <= not c30;
        e30 <= not d30;
        a30 <= not e30;
        
        b31 <= not a31;
        c31 <= not b31;
        d31 <= not c31;
        e31 <= not d31;
        a31 <= not e31;
        
        b32 <= not a32;
        c32 <= not b32;
        d32 <= not c32;
        e32 <= not d32;
        a32 <= not e32;
        
        b33 <= not a33;
        c33 <= not b33;
        d33 <= not c33;
        e33 <= not d33;
        a33 <= not e33;
        
        b34 <= not a34;
        c34 <= not b34;
        d34 <= not c34;
        e34 <= not d34;
        a34 <= not e34;
        
        b35 <= not a35;
        c35 <= not b35;
        d35 <= not c35;
        e35 <= not d35;
        a35 <= not e35;
        
        b36 <= not a36;
        c36 <= not b36;
        d36 <= not c36;
        e36 <= not d36;
        a36 <= not e36;
        
        b37 <= not a37;
        c37 <= not b37;
        d37 <= not c37;
        e37 <= not d37;
        a37 <= not e37;
        
        b38 <= not a38;
        c38 <= not b38;
        d38 <= not c38;
        e38 <= not d38;
        a38 <= not e38;
        
        b39 <= not a39;
        c39 <= not b39;
        d39 <= not c39;
        e39 <= not d39;
        a39 <= not e39;
        
        b40 <= not a40;
        c40 <= not b40;
        d40 <= not c40;
        e40 <= not d40;
        a40 <= not e40;
        
        b41 <= not a41;
        c41 <= not b41;
        d41 <= not c41;
        e41 <= not d41;
        a41 <= not e41;
        
        b42 <= not a42;
        c42 <= not b42;
        d42 <= not c42;
        e42 <= not d42;
        a42 <= not e42;
        
        b43 <= not a43;
        c43 <= not b43;
        d43 <= not c43;
        e43 <= not d43;
        a43 <= not e43;
        
        b44 <= not a44;
        c44 <= not b44;
        d44 <= not c44;
        e44 <= not d44;
        a44 <= not e44;
        
        b45 <= not a45;
        c45 <= not b45;
        d45 <= not c45;
        e45 <= not d45;
        a45 <= not e45;
        
        b46 <= not a46;
        c46 <= not b46;
        d46 <= not c46;
        e46 <= not d46;
        a46 <= not e46;
        
        b47 <= not a47;
        c47 <= not b47;
        d47 <= not c47;
        e47 <= not d47;
        a47 <= not e47;
        
        b48 <= not a48;
        c48 <= not b48;
        d48 <= not c48;
        e48 <= not d48;
        a48 <= not e48;
        
        b49 <= not a49;
        c49 <= not b49;
        d49 <= not c49;
        e49 <= not d49;
        a49 <= not e49;
        
        b50 <= not a50;
        c50 <= not b50;
        d50 <= not c50;
        e50 <= not d50;
        a50 <= not e50;
        
        b51 <= not a51;
        c51 <= not b51;
        d51 <= not c51;
        e51 <= not d51;
        a51 <= not e51;
        
        b52 <= not a52;
        c52 <= not b52;
        d52 <= not c52;
        e52 <= not d52;
        a52 <= not e52;
        
        b53 <= not a53;
        c53 <= not b53;
        d53 <= not c53;
        e53 <= not d53;
        a53 <= not e53;
        
         b54 <= not a54;
        c54 <= not b54;
        d54 <= not c54;
        e54 <= not d54;
        a54 <= not e54;
        
         b55 <= not a55;
        c55 <= not b55;
        d55 <= not c55;
        e55 <= not d55;
        a55 <= not e55;
        
         b56 <= not a56;
        c56 <= not b56;
        d56 <= not c56;
        e56 <= not d56;
        a56 <= not e56;
        
        b57 <= not a57;
        c57 <= not b57;
        d57 <= not c57;
        e57 <= not d57;
        a57 <= not e57;
        
        b58 <= not a58;
        c58 <= not b58;
        d58 <= not c58;
        e58 <= not d58;
        a58 <= not e58;
        
        b59 <= not a59;
        c59 <= not b59;
        d59 <= not c59;
        e59 <= not d59;
        a59 <= not e59;
        
        b60 <= not a60;
        c60 <= not b60;
        d60 <= not c60;
        e60 <= not d60;
        a60 <= not e60;
        
        b61 <= not a61;
        c61 <= not b61;
        d61 <= not c61;
        e61 <= not d61;
        a61 <= not e61;
        
        b62 <= not a62;
        c62 <= not b62;
        d62 <= not c62;
        e62 <= not d62;
        a62 <= not e62;
        
         b63 <= not a63;
        c63 <= not b63;
        d63 <= not c63;
        e63 <= not d63;
        a63 <= not e63;
        
         b64 <= not a64;
        c64 <= not b64;
        d64 <= not c64;
        e64 <= not d64;
        a64 <= not e64;
       
   if rising_edge(S_AXI_ACLK) then
        firstXor0 <= e64 xor e1; --XNOR
        firstXor1 <= e2 xor e3; --2*j xor 8*j+1
        firstXor2 <= e4 xor e5; --2*j xor 8*j+1
        firstXor3 <= e6 xor e7; --2*j xor 8*j+1
        firstXor4 <= e8 xor e9; --2*j xor 8*j+1
        firstXor5 <= e10 xor e11; --2*j xor 8*j+1
        firstXor6 <= e12 xor e13; --2*j xor 8*j+1
        firstXor7 <= e14 xor e15; --2*j xor 8*j+1
        firstXor8 <= e16 xor e17; --2*j xor 8*j+1
        firstXor9 <= e18 xor e19; --2*j xor 8*j+1
        firstXor10 <= e20 xor e21; --2*j xor 8*j+1
        firstXor11 <= e22 xor e23; --2*j xor 8*j+1
        firstXor12 <= e24 xor e25; --2*j xor 8*j+1
        firstXor13 <= e26 xor e27; --2*j xor 8*j+1
        firstXor14 <= e28 xor e29; --2*j xor 8*j+1
        firstXor15 <= e30 xor e31; --2*j xor 8*j+1
        firstXor16 <= e32 xor e33; --2*j xor 8*j+1
        firstXor17 <= e34 xor e35; --2*j xor 8*j+1
        firstXor18 <= e36 xor e37; --2*j xor 8*j+1
        firstXor19 <= e38 xor e39; --2*j xor 8*j+1
        firstXor20 <= e40 xor e41; --2*j xor 8*j+1
        firstXor21 <= e42 xor e43; --2*j xor 8*j+1
        firstXor22 <= e44 xor e45; --2*j xor 8*j+1
        firstXor23 <= e46 xor e47; --2*j xor 8*j+1
        firstXor24 <= e48 xor e49; --2*j xor 8*j+1
        firstXor25 <= e50 xor e51; --2*j xor 8*j+1
        firstXor26 <= e52 xor e53; --2*j xor 8*j+1
        firstXor27 <= e54 xor e55; --2*j xor 8*j+1
        firstXor28 <= e56 xor e57; --2*j xor 8*j+1
        firstXor29 <= e58 xor e59; --2*j xor 8*j+1
        firstXor30 <= e60 xor e61; --2*j xor 8*j+1
        firstXor31 <= e62 xor e63; --2*j xor 8*j+1
  end if;
        --elsif falling_edge(clk) then
        --firstXor0 <= not (dff0 xor dff1); --2*j xor 8*j+1
        --firstXor1 <= not (dff2 xor dff3); --2*j xor 8*j+1
        --firstXor2 <= not (dff4 xor dff5); --2*j xor 8*j+1
        --firstXor(3) <= not (dff6 xor dff7); --2*j xor 8*j+1
        --firstXor(4) <= not (dff8 xor dff9); --2*j xor 8*j+1
        --firstXor(5) <= not (dff10 xor dff11); --2*j xor 8*j+1
        --firstXor(6) <= not(dff12 xor dff13); --2*j xor 8*j+1
        --firstXor(7) <= not (dff14 xor dff15); --2*j xor 8*j+1

        rng_out(0) <= firstXor0;
        rng_out(1) <= firstXor1;
        rng_out(2) <= firstXor2;
        rng_out(3) <= firstXor3;
        rng_out(4) <= firstXor4;
        rng_out(5) <= firstXor5;
        rng_out(6) <= firstXor6;
        rng_out(7) <= firstXor7;
        rng_out(8) <= firstXor8;
        rng_out(9) <= firstXor9;
        rng_out(10) <= firstXor10;
        rng_out(11) <= firstXor11;
        rng_out(12) <= firstXor12;
        rng_out(13) <= firstXor13;
        rng_out(14) <= firstXor14;
        rng_out(15) <= firstXor15;
        rng_out(16) <= firstXor16;
        rng_out(17) <= firstXor17;
        rng_out(18) <= firstXor18;
        rng_out(19) <= firstXor19;
        rng_out(20) <= firstXor20;
        rng_out(21) <= firstXor21;
        rng_out(22) <= firstXor22;
        rng_out(23) <= firstXor23;
        rng_out(24) <= firstXor24;
        rng_out(25) <= firstXor25;
        rng_out(26) <= firstXor26;
        rng_out(27) <= firstXor27;
        rng_out(28) <= firstXor28;
        rng_out(29) <= firstXor29;
        rng_out(30) <= firstXor30;
        rng_out(31) <= firstXor31;
        
--        output <= rng_out;  --change it to rng_out later
 end process;     
	-- User logic ends
end arch_imp;
