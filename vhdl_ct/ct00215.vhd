-- NEED RESULT: ENT00215: Wait statement longest static prefix check passed
-- NEED RESULT: ENT00215: Wait statement longest static prefix check passed
-- NEED RESULT: ENT00215: Wait statement longest static prefix check passed
-- NEED RESULT: ENT00215: Wait statement longest static prefix check passed
-- NEED RESULT: P1: Wait longest static prefix test completed passed
-------------------------------------------------------------------------------
 --
 --    Copyright (c) 1989 by Intermetrics, Inc.
 --                All rights reserved.
 --
-------------------------------------------------------------------------------
--
-- TEST NAME:
--
--    CT00215
--
-- AUTHOR:
--
--    G. Tominovich
--
-- TEST OBJECTIVES:
--
--    8.1 (5)
--
-- DESIGN UNIT ORDERING:
--
--    ENT00215(ARCH00215)
--    ENT00215_Test_Bench(ARCH00215_Test_Bench)
--
-- REVISION HISTORY:
--
--    10-JUL-1987   - initial revision
--
-- NOTES:
--
--    self-checking
--    automatically generated
--
use WORK.STANDARD_TYPES.all ;
entity ENT00215 is
   generic (G : integer) ;
--
   constant CG : integer := G+1;
   attribute attr : integer ;
   attribute attr of CG : constant is CG+1;
--
end ENT00215 ;
--
--
architecture ARCH00215 of ENT00215 is
   signal s_st_arr1_vector : st_arr1_vector
     := c_st_arr1_vector_1 ;
--
   subtype chk_sig_type is integer range -1 to 100 ;
   signal chk_st_arr1_vector : chk_sig_type := -1 ;
--
begin
   P1 :
   process
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time := 0 ns ;
   begin
      case counter is
         when 0
         =>
            s_st_arr1_vector(1)(1) <= transport
                c_st_arr1_vector_2(1)(1) ;
            s_st_arr1_vector(2)(2) <= transport
                c_st_arr1_vector_2(2)(2) after 10 ns ;
            wait until s_st_arr1_vector(2)(2) =
                       c_st_arr1_vector_2(2)(2) ;
            Test_Report (
              "ENT00215",
              "Wait statement longest static prefix check",
              ((savtime + 10 ns) = Std.Standard.Now) and
              (s_st_arr1_vector(2)(2) =
                   c_st_arr1_vector_2(2)(2) )) ;
--
         when 1
         =>
            s_st_arr1_vector(1)(1) <= transport
                c_st_arr1_vector_1(1)(1) ;
            s_st_arr1_vector(G)(G) <= transport
                c_st_arr1_vector_2(G)(G) after 10 ns ;
            wait until s_st_arr1_vector(G)(G) =
                       c_st_arr1_vector_2(G)(G) ;
            Test_Report (
              "ENT00215",
              "Wait statement longest static prefix check",
              ((savtime + 10 ns) = Std.Standard.Now) and
              (s_st_arr1_vector(G)(G) =
                   c_st_arr1_vector_2(G)(G) )) ;
--
         when 2
         =>
            s_st_arr1_vector(1)(1) <= transport
                c_st_arr1_vector_2(1)(1) ;
            s_st_arr1_vector(CG)(CG) <= transport
                c_st_arr1_vector_2(CG)(CG) after 10 ns ;
            wait until s_st_arr1_vector(CG)(CG) =
                       c_st_arr1_vector_2(CG)(CG) ;
            Test_Report (
              "ENT00215",
              "Wait statement longest static prefix check",
              ((savtime + 10 ns) = Std.Standard.Now) and
              (s_st_arr1_vector(CG)(CG) =
                   c_st_arr1_vector_2(CG)(CG) )) ;
--
         when 3
         =>
            s_st_arr1_vector(1)(1) <= transport
                c_st_arr1_vector_1(1)(1) ;
            s_st_arr1_vector(CG'Attr)(CG'Attr) <= transport
                c_st_arr1_vector_2(CG'Attr)(CG'Attr) after 10 ns ;
            wait until s_st_arr1_vector(CG'Attr)(CG'Attr) =
                       c_st_arr1_vector_2(CG'Attr)(CG'Attr) ;
            Test_Report (
              "ENT00215",
              "Wait statement longest static prefix check",
              ((savtime + 10 ns) = Std.Standard.Now) and
              (s_st_arr1_vector(CG'Attr)(CG'Attr) =
                   c_st_arr1_vector_2(CG'Attr)(CG'Attr) )) ;
--
         when others
         => wait ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_arr1_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end process P1 ;
--
   PGEN_CHKP_1 :
   process ( chk_st_arr1_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P1" ,
           "Wait longest static prefix test completed",
           chk_st_arr1_vector = 3 ) ;
      end if ;
   end process PGEN_CHKP_1 ;
--
--
end ARCH00215 ;
--
--
use WORK.STANDARD_TYPES.all ;
entity ENT00215_Test_Bench is
end ENT00215_Test_Bench ;
--
--
architecture ARCH00215_Test_Bench of ENT00215_Test_Bench is
begin
   L1:
   block
      component UUT
         generic (G : integer) ;
      end component ;
--
      for CIS1 : UUT use entity WORK.ENT00215 ( ARCH00215 ) ;
   begin
      CIS1 : UUT
         generic map (lowb+2)
      ;
   end block L1 ;
end ARCH00215_Test_Bench ;
