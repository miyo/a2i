-- © IBM Corp. 2020
-- Licensed under the Apache License, Version 2.0 (the "License"), as modified by
-- the terms below; you may not use the files in this repository except in
-- compliance with the License as modified.
-- You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
--
-- Modified Terms:
--
--    1) For the purpose of the patent license granted to you in Section 3 of the
--    License, the "Work" hereby includes implementations of the work of authorship
--    in physical form.
--
--    2) Notwithstanding any terms to the contrary in the License, any licenses
--    necessary for implementation of the Work that are available from OpenPOWER
--    via the Power ISA End User License Agreement (EULA) are explicitly excluded
--    hereunder, and may be obtained from OpenPOWER under the terms and conditions
--    of the EULA.  
--
-- Unless required by applicable law or agreed to in writing, the reference design
-- distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
-- WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License
-- for the specific language governing permissions and limitations under the License.
-- 
-- Additional rights, including the ability to physically implement a softcore that
-- is compliant with the required sections of the Power ISA Specification, are
-- available at no cost under the terms of the OpenPOWER Power ISA EULA, which can be
-- obtained (along with the Power ISA) here: https://openpowerfoundation.org. 


library ieee;
use ieee.std_logic_1164.all;

library ibm; 
use ibm.std_ulogic_support.all;
use ibm.std_ulogic_function_support.all;

library UNIMACRO;
use UNIMACRO.vcomponents.all;

entity RAMB16_S36_S36 is
	generic (
		INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_10 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_11 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_12 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_13 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_14 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_15 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_16 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_17 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_18 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_19 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_1A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_1B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_1C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_1D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_1E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_1F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_20 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_21 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_22 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_23 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_24 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_25 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_26 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_27 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_28 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_29 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_2A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_2B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_2C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_2D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_2E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_2F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_30 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_31 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_32 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_33 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_34 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_35 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_36 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_37 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_38 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_39 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_3A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_3B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_3C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_3D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_3E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_3F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INITP_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INITP_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INITP_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INITP_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INITP_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INITP_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INITP_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INITP_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_A : bit_vector := X"000000000";
		INIT_B : bit_vector := X"000000000";
		SIM_COLLISION_CHECK : string := "ALL";   
		SRVAL_A : bit_vector := X"000000000";
		SRVAL_B : bit_vector := X"000000000";
		WRITE_MODE_A : string := "WRITE_FIRST";  
		WRITE_MODE_B : string := "WRITE_FIRST"   
	);
	port (
		DOA : out std_logic_vector(31 downto 0);
		DOB : out std_logic_vector(31 downto 0);
		DOPA : out std_logic_vector(3 downto 0);
		DOPB : out std_logic_vector(3 downto 0);
		ADDRA : in std_logic_vector(8 downto 0);
		ADDRB : in std_logic_vector(8 downto 0);
		CLKA : in std_ulogic;
		CLKB : in std_ulogic;
		DIA : in std_logic_vector(31 downto 0);
		DIB : in std_logic_vector(31 downto 0);
		DIPA : in std_logic_vector(3 downto 0);
		DIPB : in std_logic_vector(3 downto 0);
		ENA : in std_ulogic;
		ENB : in std_ulogic;
		SSRA : in std_ulogic;
		SSRB : in std_ulogic;
		WEA : in std_ulogic;
		WEB : in std_ulogic
	);
end RAMB16_S36_S36;

architecture RAMB16_S36_S36 of RAMB16_S36_S36 is

signal ADDRA_10, ADDRB_10 : std_logic_vector(9 downto 0);
signal DINA, DINB     : std_logic_vector(35 downto 0);
signal DOUTA, DOUTB   : std_logic_vector(35 downto 0);
signal SSRA_t, SSRB_t : std_logic;
signal WEA_t, WEB_t   : std_logic_vector(3 downto 0);

begin

ADDRA_10 <= '0' & ADDRA;
ADDRB_10 <= '0' & ADDRB;

DINA   <= DIPA & DIA;
DOPA   <= DOUTA(35 downto 32);
DOA    <= DOUTA(31 downto 0);

DINB   <= DIPB & DIB;
DOPB   <= DOUTB(35 downto 32);
DOB    <= DOUTB(31 downto 0);

SSRA_t <= SSRA;
SSRB_t <= SSRB;
WEA_t  <= WEA & WEA & WEA & WEA;
WEB_t  <= WEB & WEB & WEB & WEB;




   -- BRAM_TDP_MACRO: True Dual Port RAM
   --                 Virtex-7
   -- Xilinx HDL Language Template, version 2019.1

   -- Note -  This Unimacro model assumes the port directions to be "downto".
   --         Simulation of this model with "to" in the port directions could lead to erroneous results.

   --------------------------------------------------------------------------
   -- DATA_WIDTH_A/B | BRAM_SIZE | RAM Depth | ADDRA/B Width | WEA/B Width --
   -- ===============|===========|===========|===============|=============--
   --     19-36      |  "36Kb"   |    1024   |    10-bit     |    4-bit    -- * using
   --     10-18      |  "36Kb"   |    2048   |    11-bit     |    2-bit    --
   --     10-18      |  "18Kb"   |    1024   |    10-bit     |    2-bit    --
   --      5-9       |  "36Kb"   |    4096   |    12-bit     |    1-bit    --
   --      5-9       |  "18Kb"   |    2048   |    11-bit     |    1-bit    --
   --      3-4       |  "36Kb"   |    8192   |    13-bit     |    1-bit    --
   --      3-4       |  "18Kb"   |    4096   |    12-bit     |    1-bit    --
   --        2       |  "36Kb"   |   16384   |    14-bit     |    1-bit    --
   --        2       |  "18Kb"   |    8192   |    13-bit     |    1-bit    --
   --        1       |  "36Kb"   |   32768   |    15-bit     |    1-bit    --
   --        1       |  "18Kb"   |   16384   |    14-bit     |    1-bit    --
   --------------------------------------------------------------------------
   
   BRAM_0 : BRAM_TDP_MACRO
   generic map (
      BRAM_SIZE => "36Kb", -- Target BRAM, "18Kb" or "36Kb"
      DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "VIRTEX6", "7SERIES", "SPARTAN6"
      DOA_REG => 0, -- Optional port A output register (0 or 1)
      DOB_REG => 0, -- Optional port B output register (0 or 1)
      INIT_A => INIT_A, -- Initial values on A output port
      INIT_B => INIT_B, -- Initial values on B output port
      INIT_FILE => "NONE",
      READ_WIDTH_A => 36,   -- Valid values are 1-36 (19-36 only valid when BRAM_SIZE="36Kb")
      READ_WIDTH_B => 36,   -- Valid values are 1-36 (19-36 only valid when BRAM_SIZE="36Kb")
      SIM_COLLISION_CHECK => "NONE",
      SRVAL_A => SRVAL_A,   -- Set/Reset value for A port output
      SRVAL_B => SRVAL_A,   -- Set/Reset value for B port output
      WRITE_MODE_A => WRITE_MODE_A, -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
      WRITE_MODE_B => WRITE_MODE_B, -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
      WRITE_WIDTH_A => 36, -- Valid values are 1-36 (19-36 only valid when BRAM_SIZE="36Kb")
      WRITE_WIDTH_B => 36, -- Valid values are 1-36 (19-36 only valid when BRAM_SIZE="36Kb")
      -- The following INIT_xx declarations specify the initial contents of the RAM
      INIT_00 => INIT_00,
      INIT_01 => INIT_01,
      INIT_02 => INIT_02,
      INIT_03 => INIT_03,
      INIT_04 => INIT_04,
      INIT_05 => INIT_05,
      INIT_06 => INIT_06,
      INIT_07 => INIT_07,
      INIT_08 => INIT_08,
      INIT_09 => INIT_09,
      INIT_0A => INIT_0A,
      INIT_0B => INIT_0B,
      INIT_0C => INIT_0C,
      INIT_0D => INIT_0D,
      INIT_0E => INIT_0E,
      INIT_0F => INIT_0F,
      INIT_10 => INIT_10,
      INIT_11 => INIT_11,
      INIT_12 => INIT_12,
      INIT_13 => INIT_13,
      INIT_14 => INIT_14,
      INIT_15 => INIT_15,
      INIT_16 => INIT_16,
      INIT_17 => INIT_17,
      INIT_18 => INIT_18,
      INIT_19 => INIT_19,
      INIT_1A => INIT_1A,
      INIT_1B => INIT_1B,
      INIT_1C => INIT_1C,
      INIT_1D => INIT_1D,
      INIT_1E => INIT_1E,
      INIT_1F => INIT_1F,
      INIT_20 => INIT_20,
      INIT_21 => INIT_21,
      INIT_22 => INIT_22,
      INIT_23 => INIT_23,
      INIT_24 => INIT_24,
      INIT_25 => INIT_25,
      INIT_26 => INIT_26,
      INIT_27 => INIT_27,
      INIT_28 => INIT_28,
      INIT_29 => INIT_29,
      INIT_2A => INIT_2A,
      INIT_2B => INIT_2B,
      INIT_2C => INIT_2C,
      INIT_2D => INIT_2D,
      INIT_2E => INIT_2E,
      INIT_2F => INIT_2F,
      INIT_30 => INIT_30,
      INIT_31 => INIT_31,
      INIT_32 => INIT_32,
      INIT_33 => INIT_33,
      INIT_34 => INIT_34,
      INIT_35 => INIT_35,
      INIT_36 => INIT_36,
      INIT_37 => INIT_37,
      INIT_38 => INIT_38,
      INIT_39 => INIT_39,
      INIT_3A => INIT_3A,
      INIT_3B => INIT_3B,
      INIT_3C => INIT_3C,
      INIT_3D => INIT_3D,
      INIT_3E => INIT_3E,
      INIT_3F => INIT_3F,
      
      -- The next set of INIT_xx are valid when configured as 36Kb
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      
      -- The next set of INITP_xx are for the parity bits
      INITP_00 => INITP_00,
      INITP_01 => INITP_01,
      INITP_02 => INITP_02,
      INITP_03 => INITP_03,
      INITP_04 => INITP_04,
      INITP_05 => INITP_05,
      INITP_06 => INITP_06,
      INITP_07 => INITP_07,
      
      -- The next set of INIT_xx are valid when configured as 36Kb
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
   )
   port map (
      DOA => DOUTA,     -- Output port-A data, width defined by READ_WIDTH_A parameter
      DOB => DOUTB,     -- Output port-B data, width defined by READ_WIDTH_B parameter
      ADDRA => ADDRA_10,  -- Input port-A address, width defined by Port A depth
      ADDRB => ADDRB_10,  -- Input port-B address, width defined by Port B depth
      CLKA => CLKA,     -- 1-bit input port-A clock
      CLKB => CLKB,     -- 1-bit input port-B clock
      DIA => DINA,      -- Input port-A data, width defined by WRITE_WIDTH_A parameter
      DIB => DINB,      -- Input port-B data, width defined by WRITE_WIDTH_B parameter
      ENA => ENA,       -- 1-bit input port-A enable
      ENB => ENB,       -- 1-bit input port-B enable
      REGCEA => '1',    -- REGCEA, -- 1-bit input port-A output register enable
      REGCEB => '1',    -- REGCEB, -- 1-bit input port-B output register enable
      RSTA => SSRA_t,   -- 1-bit input port-A reset
      RSTB => SSRB_t,   -- 1-bit input port-B reset
      WEA => WEA_t,     -- Input port-A write enable, width defined by Port A depth
      WEB => WEB_t      -- Input port-B write enable, width defined by Port B depth
   );
   
-- End of BRAM_TDP_MACRO_inst instantiation


end RAMB16_S36_S36;
