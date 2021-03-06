-- NEED RESULT: ARCH00360.P1: Multi transport transactions occurred on concurrent signal asg passed
-- NEED RESULT: ARCH00360: One transport transaction occurred on a concurrent signal asg passed
-- NEED RESULT: ARCH00360: Old transactions were removed on a concurrent signal asg passed
-- NEED RESULT: P1: Transport transactions completed entirely passed
-------------------------------------------------------------------------------
 --
 --    Copyright (c) 1989 by Intermetrics, Inc.
 --                All rights reserved.
 --
-------------------------------------------------------------------------------
--
-- TEST NAME:
--
--    CT00360
--
-- AUTHOR:
--
--    G. Tominovich
--
-- TEST OBJECTIVES:
--
--    9.5 (2)
--    9.5.1 (1)
--    9.5.1 (2)
--
-- DESIGN UNIT ORDERING:
--
--    ENT00360(ARCH00360)
--    ENT00360_Test_Bench(ARCH00360_Test_Bench)
--
-- REVISION HISTORY:
--
--    30-JUL-1987   - initial revision
--
-- NOTES:
--
--    self-checking
--    automatically generated
--
use WORK.STANDARD_TYPES.all ;
entity ENT00360 is
end ENT00360 ;
--
--
architecture ARCH00360 of ENT00360 is
   subtype chk_sig_type is integer range -1 to 100 ;
   signal chk_st_arr1_vector : chk_sig_type := -1 ;
--
   subtype chk_time_type is Time ;
   signal s_st_arr1_vector_savt : chk_time_type := 0 ns ;
--
   subtype chk_cnt_type is Integer ;
   signal s_st_arr1_vector_cnt : chk_cnt_type := 0 ;
--
   type select_type is range 1 to 3 ;
   signal st_arr1_vector_select : select_type := 1 ;
--
   signal s_st_arr1_vector : st_arr1_vector
     := c_st_arr1_vector_1 ;
--
begin
   CHG1 :
   process ( s_st_arr1_vector )
      variable correct : boolean ;
   begin
      case s_st_arr1_vector_cnt is
         when 0
         => null ;
              -- s_st_arr1_vector(highb)(lowb to highb-1) <= transport
              --   c_st_arr1_vector_2(highb)(lowb to highb-1) after 10 ns,
              --   c_st_arr1_vector_1(highb)(lowb to highb-1) after 20 ns ;
--
         when 1
         => correct :=
               s_st_arr1_vector(highb)(lowb to highb-1) =
                 c_st_arr1_vector_2(highb)(lowb to highb-1) and
               (s_st_arr1_vector_savt + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_arr1_vector(highb)(lowb to highb-1) =
                 c_st_arr1_vector_1(highb)(lowb to highb-1) and
               (s_st_arr1_vector_savt + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00360.P1" ,
              "Multi transport transactions occurred on " &
              "concurrent signal asg",
              correct ) ;
--
            st_arr1_vector_select <= transport 2 ;
              -- s_st_arr1_vector(highb)(lowb to highb-1) <= transport
              --   c_st_arr1_vector_2(highb)(lowb to highb-1) after 10 ns ,
              --   c_st_arr1_vector_1(highb)(lowb to highb-1) after 20 ns ,
              --   c_st_arr1_vector_2(highb)(lowb to highb-1) after 30 ns ,
              --   c_st_arr1_vector_1(highb)(lowb to highb-1) after 40 ns ;
--
         when 3
         => correct :=
               s_st_arr1_vector(highb)(lowb to highb-1) =
                 c_st_arr1_vector_2(highb)(lowb to highb-1) and
               (s_st_arr1_vector_savt + 10 ns) = Std.Standard.Now ;
            st_arr1_vector_select <= transport 3 ;
              -- s_st_arr1_vector(highb)(lowb to highb-1) <= transport
              --   c_st_arr1_vector_1(highb)(lowb to highb-1) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_arr1_vector(highb)(lowb to highb-1) =
                 c_st_arr1_vector_1(highb)(lowb to highb-1) and
               (s_st_arr1_vector_savt + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00360" ,
              "One transport transaction occurred on a " &
              "concurrent signal asg",
              correct ) ;
            test_report ( "ARCH00360" ,
              "Old transactions were removed on a " &
              "concurrent signal asg",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00360" ,
              "Old transactions were removed on a " &
              "concurrent signal asg",
              false ) ;
--
      end case ;
--
      s_st_arr1_vector_savt <= transport Std.Standard.Now ;
      chk_st_arr1_vector <= transport s_st_arr1_vector_cnt
          after (1 us - Std.Standard.Now) ;
      s_st_arr1_vector_cnt <= transport s_st_arr1_vector_cnt + 1 ;
--
   end process CHG1 ;
--
   PGEN_CHKP_1 :
   process ( chk_st_arr1_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P1" ,
           "Transport transactions completed entirely",
           chk_st_arr1_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_1 ;
--
--
      s_st_arr1_vector(highb)(lowb to highb-1) <= transport
        c_st_arr1_vector_2(highb)(lowb to highb-1) after 10 ns,
        c_st_arr1_vector_1(highb)(lowb to highb-1) after 20 ns
        when st_arr1_vector_select = 1 else
--
        c_st_arr1_vector_2(highb)(lowb to highb-1) after 10 ns ,
        c_st_arr1_vector_1(highb)(lowb to highb-1) after 20 ns ,
        c_st_arr1_vector_2(highb)(lowb to highb-1) after 30 ns ,
        c_st_arr1_vector_1(highb)(lowb to highb-1) after 40 ns
        when st_arr1_vector_select = 2 else
--
        c_st_arr1_vector_1(highb)(lowb to highb-1) after 5 ns ;
--
end ARCH00360 ;
--
--
use WORK.STANDARD_TYPES.all ;
entity ENT00360_Test_Bench is
end ENT00360_Test_Bench ;
--
--
architecture ARCH00360_Test_Bench of ENT00360_Test_Bench is
begin
   L1:
   block
      component UUT
      end component ;
--
      for CIS1 : UUT use entity WORK.ENT00360 ( ARCH00360 ) ;
   begin
      CIS1 : UUT
         ;
   end block L1 ;
end ARCH00360_Test_Bench ;
