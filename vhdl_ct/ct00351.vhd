-- NEED RESULT: ARCH00351.P1: Multi transport transactions occurred on concurrent signal asg passed
-- NEED RESULT: ARCH00351.P2: Multi transport transactions occurred on concurrent signal asg passed
-- NEED RESULT: ARCH00351.P3: Multi transport transactions occurred on concurrent signal asg passed
-- NEED RESULT: ARCH00351: One transport transaction occurred on a concurrent signal asg passed
-- NEED RESULT: ARCH00351: Old transactions were removed on a concurrent signal asg passed
-- NEED RESULT: ARCH00351: One transport transaction occurred on a concurrent signal asg passed
-- NEED RESULT: ARCH00351: Old transactions were removed on a concurrent signal asg passed
-- NEED RESULT: ARCH00351: One transport transaction occurred on a concurrent signal asg passed
-- NEED RESULT: ARCH00351: Old transactions were removed on a concurrent signal asg passed
-- NEED RESULT: P3: Transport transactions completed entirely passed
-- NEED RESULT: P2: Transport transactions completed entirely passed
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
--    CT00351
--
-- AUTHOR:
--
--    G. Tominovich
--
-- TEST OBJECTIVES:
--
--    9.5 (2)
--    9.5.2 (1)
--
-- DESIGN UNIT ORDERING:
--
--    ENT00351(ARCH00351)
--    ENT00351_Test_Bench(ARCH00351_Test_Bench)
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
entity ENT00351 is
end ENT00351 ;
--
--
architecture ARCH00351 of ENT00351 is
   subtype chk_sig_type is integer range -1 to 100 ;
   signal chk_st_rec1 : chk_sig_type := -1 ;
   signal chk_st_rec2 : chk_sig_type := -1 ;
   signal chk_st_rec3 : chk_sig_type := -1 ;
--
   subtype chk_time_type is Time ;
   signal s_st_rec1_savt : chk_time_type := 0 ns ;
   signal s_st_rec2_savt : chk_time_type := 0 ns ;
   signal s_st_rec3_savt : chk_time_type := 0 ns ;
--
   subtype chk_cnt_type is Integer ;
   signal s_st_rec1_cnt : chk_cnt_type := 0 ;
   signal s_st_rec2_cnt : chk_cnt_type := 0 ;
   signal s_st_rec3_cnt : chk_cnt_type := 0 ;
--
   type select_type is range 1 to 3 ;
   signal st_rec1_select : select_type := 1 ;
   signal st_rec2_select : select_type := 1 ;
   signal st_rec3_select : select_type := 1 ;
--
   signal s_st_rec1 : st_rec1
     := c_st_rec1_1 ;
   signal s_st_rec2 : st_rec2
     := c_st_rec2_1 ;
   signal s_st_rec3 : st_rec3
     := c_st_rec3_1 ;
--
begin
   CHG1 :
   process ( s_st_rec1 )
      variable correct : boolean ;
   begin
      case s_st_rec1_cnt is
         when 0
         => null ;
              -- s_st_rec1.f2 <= transport
              --   c_st_rec1_2.f2 after 10 ns,
              --   c_st_rec1_1.f2 after 20 ns ;
--
         when 1
         => correct :=
               s_st_rec1.f2 =
                 c_st_rec1_2.f2 and
               (s_st_rec1_savt + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_rec1.f2 =
                 c_st_rec1_1.f2 and
               (s_st_rec1_savt + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00351.P1" ,
              "Multi transport transactions occurred on " &
              "concurrent signal asg",
              correct ) ;
--
            st_rec1_select <= transport 2 ;
              -- s_st_rec1.f2 <= transport
              --   c_st_rec1_2.f2 after 10 ns ,
              --   c_st_rec1_1.f2 after 20 ns ,
              --   c_st_rec1_2.f2 after 30 ns ,
              --   c_st_rec1_1.f2 after 40 ns ;
--
         when 3
         => correct :=
               s_st_rec1.f2 =
                 c_st_rec1_2.f2 and
               (s_st_rec1_savt + 10 ns) = Std.Standard.Now ;
            st_rec1_select <= transport 3 ;
              -- s_st_rec1.f2 <= transport
              --   c_st_rec1_1.f2 after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_rec1.f2 =
                 c_st_rec1_1.f2 and
               (s_st_rec1_savt + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00351" ,
              "One transport transaction occurred on a " &
              "concurrent signal asg",
              correct ) ;
            test_report ( "ARCH00351" ,
              "Old transactions were removed on a " &
              "concurrent signal asg",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00351" ,
              "Old transactions were removed on a " &
              "concurrent signal asg",
              false ) ;
--
      end case ;
--
      s_st_rec1_savt <= transport Std.Standard.Now ;
      chk_st_rec1 <= transport s_st_rec1_cnt
          after (1 us - Std.Standard.Now) ;
      s_st_rec1_cnt <= transport s_st_rec1_cnt + 1 ;
--
   end process CHG1 ;
--
   PGEN_CHKP_1 :
   process ( chk_st_rec1 )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P1" ,
           "Transport transactions completed entirely",
           chk_st_rec1 = 4 ) ;
      end if ;
   end process PGEN_CHKP_1 ;
--
--
   with st_rec1_select select
      s_st_rec1.f2 <= transport
        c_st_rec1_2.f2 after 10 ns,
        c_st_rec1_1.f2 after 20 ns
        when 1,
--
        c_st_rec1_2.f2 after 10 ns ,
        c_st_rec1_1.f2 after 20 ns ,
        c_st_rec1_2.f2 after 30 ns ,
        c_st_rec1_1.f2 after 40 ns
        when 2,
--
        c_st_rec1_1.f2 after 5 ns  when 3 ;
--
   CHG2 :
   process ( s_st_rec2 )
      variable correct : boolean ;
   begin
      case s_st_rec2_cnt is
         when 0
         => null ;
              -- s_st_rec2.f2 <= transport
              --   c_st_rec2_2.f2 after 10 ns,
              --   c_st_rec2_1.f2 after 20 ns ;
--
         when 1
         => correct :=
               s_st_rec2.f2 =
                 c_st_rec2_2.f2 and
               (s_st_rec2_savt + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_rec2.f2 =
                 c_st_rec2_1.f2 and
               (s_st_rec2_savt + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00351.P2" ,
              "Multi transport transactions occurred on " &
              "concurrent signal asg",
              correct ) ;
--
            st_rec2_select <= transport 2 ;
              -- s_st_rec2.f2 <= transport
              --   c_st_rec2_2.f2 after 10 ns ,
              --   c_st_rec2_1.f2 after 20 ns ,
              --   c_st_rec2_2.f2 after 30 ns ,
              --   c_st_rec2_1.f2 after 40 ns ;
--
         when 3
         => correct :=
               s_st_rec2.f2 =
                 c_st_rec2_2.f2 and
               (s_st_rec2_savt + 10 ns) = Std.Standard.Now ;
            st_rec2_select <= transport 3 ;
              -- s_st_rec2.f2 <= transport
              --   c_st_rec2_1.f2 after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_rec2.f2 =
                 c_st_rec2_1.f2 and
               (s_st_rec2_savt + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00351" ,
              "One transport transaction occurred on a " &
              "concurrent signal asg",
              correct ) ;
            test_report ( "ARCH00351" ,
              "Old transactions were removed on a " &
              "concurrent signal asg",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00351" ,
              "Old transactions were removed on a " &
              "concurrent signal asg",
              false ) ;
--
      end case ;
--
      s_st_rec2_savt <= transport Std.Standard.Now ;
      chk_st_rec2 <= transport s_st_rec2_cnt
          after (1 us - Std.Standard.Now) ;
      s_st_rec2_cnt <= transport s_st_rec2_cnt + 1 ;
--
   end process CHG2 ;
--
   PGEN_CHKP_2 :
   process ( chk_st_rec2 )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P2" ,
           "Transport transactions completed entirely",
           chk_st_rec2 = 4 ) ;
      end if ;
   end process PGEN_CHKP_2 ;
--
--
   with st_rec2_select select
      s_st_rec2.f2 <= transport
        c_st_rec2_2.f2 after 10 ns,
        c_st_rec2_1.f2 after 20 ns
        when 1,
--
        c_st_rec2_2.f2 after 10 ns ,
        c_st_rec2_1.f2 after 20 ns ,
        c_st_rec2_2.f2 after 30 ns ,
        c_st_rec2_1.f2 after 40 ns
        when 2,
--
        c_st_rec2_1.f2 after 5 ns  when 3 ;
--
   CHG3 :
   process ( s_st_rec3 )
      variable correct : boolean ;
   begin
      case s_st_rec3_cnt is
         when 0
         => null ;
              -- s_st_rec3.f2 <= transport
              --   c_st_rec3_2.f2 after 10 ns,
              --   c_st_rec3_1.f2 after 20 ns ;
--
         when 1
         => correct :=
               s_st_rec3.f2 =
                 c_st_rec3_2.f2 and
               (s_st_rec3_savt + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_rec3.f2 =
                 c_st_rec3_1.f2 and
               (s_st_rec3_savt + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00351.P3" ,
              "Multi transport transactions occurred on " &
              "concurrent signal asg",
              correct ) ;
--
            st_rec3_select <= transport 2 ;
              -- s_st_rec3.f2 <= transport
              --   c_st_rec3_2.f2 after 10 ns ,
              --   c_st_rec3_1.f2 after 20 ns ,
              --   c_st_rec3_2.f2 after 30 ns ,
              --   c_st_rec3_1.f2 after 40 ns ;
--
         when 3
         => correct :=
               s_st_rec3.f2 =
                 c_st_rec3_2.f2 and
               (s_st_rec3_savt + 10 ns) = Std.Standard.Now ;
            st_rec3_select <= transport 3 ;
              -- s_st_rec3.f2 <= transport
              --   c_st_rec3_1.f2 after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_rec3.f2 =
                 c_st_rec3_1.f2 and
               (s_st_rec3_savt + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00351" ,
              "One transport transaction occurred on a " &
              "concurrent signal asg",
              correct ) ;
            test_report ( "ARCH00351" ,
              "Old transactions were removed on a " &
              "concurrent signal asg",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00351" ,
              "Old transactions were removed on a " &
              "concurrent signal asg",
              false ) ;
--
      end case ;
--
      s_st_rec3_savt <= transport Std.Standard.Now ;
      chk_st_rec3 <= transport s_st_rec3_cnt
          after (1 us - Std.Standard.Now) ;
      s_st_rec3_cnt <= transport s_st_rec3_cnt + 1 ;
--
   end process CHG3 ;
--
   PGEN_CHKP_3 :
   process ( chk_st_rec3 )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P3" ,
           "Transport transactions completed entirely",
           chk_st_rec3 = 4 ) ;
      end if ;
   end process PGEN_CHKP_3 ;
--
--
   with st_rec3_select select
      s_st_rec3.f2 <= transport
        c_st_rec3_2.f2 after 10 ns,
        c_st_rec3_1.f2 after 20 ns
        when 1,
--
        c_st_rec3_2.f2 after 10 ns ,
        c_st_rec3_1.f2 after 20 ns ,
        c_st_rec3_2.f2 after 30 ns ,
        c_st_rec3_1.f2 after 40 ns
        when 2,
--
        c_st_rec3_1.f2 after 5 ns  when 3 ;
--
end ARCH00351 ;
--
--
use WORK.STANDARD_TYPES.all ;
entity ENT00351_Test_Bench is
end ENT00351_Test_Bench ;
--
--
architecture ARCH00351_Test_Bench of ENT00351_Test_Bench is
begin
   L1:
   block
      component UUT
      end component ;
--
      for CIS1 : UUT use entity WORK.ENT00351 ( ARCH00351 ) ;
   begin
      CIS1 : UUT
         ;
   end block L1 ;
end ARCH00351_Test_Bench ;
