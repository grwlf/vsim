-- NEED RESULT: ARCH00085.P1: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085.P2: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085.P3: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085.P4: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085.P5: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085.P6: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085.P7: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085.P8: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085.P9: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085.P10: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085.P11: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085.P12: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085.P13: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085.P14: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085.P15: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085.P16: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085.P17: Multi transport transactions occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: One transport transaction occurred on signal asg with slice name on LHS failed
-- NEED RESULT: ARCH00085: Old transactions were removed on signal asg with slice name on LHS failed
-- NEED RESULT: P17: Transport transactions entirely completed passed
-- NEED RESULT: P16: Transport transactions entirely completed passed
-- NEED RESULT: P15: Transport transactions entirely completed passed
-- NEED RESULT: P14: Transport transactions entirely completed passed
-- NEED RESULT: P13: Transport transactions entirely completed passed
-- NEED RESULT: P12: Transport transactions entirely completed passed
-- NEED RESULT: P11: Transport transactions entirely completed passed
-- NEED RESULT: P10: Transport transactions entirely completed passed
-- NEED RESULT: P9: Transport transactions entirely completed passed
-- NEED RESULT: P8: Transport transactions entirely completed passed
-- NEED RESULT: P7: Transport transactions entirely completed passed
-- NEED RESULT: P6: Transport transactions entirely completed passed
-- NEED RESULT: P5: Transport transactions entirely completed passed
-- NEED RESULT: P4: Transport transactions entirely completed passed
-- NEED RESULT: P3: Transport transactions entirely completed passed
-- NEED RESULT: P2: Transport transactions entirely completed passed
-- NEED RESULT: P1: Transport transactions entirely completed passed
-------------------------------------------------------------------------------
	--
	--	   Copyright (c) 1989 by Intermetrics, Inc.
	--                All rights reserved.
	--
-------------------------------------------------------------------------------

--
-- TEST NAME:
--
--    CT00085
--
-- AUTHOR:
--
--    G. Tominovich
--
-- TEST OBJECTIVES:
--
--    8.3 (2)
--    8.3 (3)
--    8.3 (5)
--    8.3.1 (3)
--
-- DESIGN UNIT ORDERING:
--
--    ENT00085(ARCH00085)
--    ENT00085_Test_Bench(ARCH00085_Test_Bench)
--
-- REVISION HISTORY:
--
--    07-JUL-1987   - initial revision
--
-- NOTES:
--
--    self-checking
--    automatically generated
--
use WORK.STANDARD_TYPES.all ;
entity ENT00085 is
   subtype chk_sig_type is integer range -1 to 100 ;
   signal chk_st_boolean_vector : chk_sig_type := -1 ;
   signal chk_st_bit_vector : chk_sig_type := -1 ;
   signal chk_st_severity_level_vector : chk_sig_type := -1 ;
   signal chk_st_string : chk_sig_type := -1 ;
   signal chk_st_enum1_vector : chk_sig_type := -1 ;
   signal chk_st_integer_vector : chk_sig_type := -1 ;
   signal chk_st_int1_vector : chk_sig_type := -1 ;
   signal chk_st_time_vector : chk_sig_type := -1 ;
   signal chk_st_phys1_vector : chk_sig_type := -1 ;
   signal chk_st_real_vector : chk_sig_type := -1 ;
   signal chk_st_real1_vector : chk_sig_type := -1 ;
   signal chk_st_rec1_vector : chk_sig_type := -1 ;
   signal chk_st_rec2_vector : chk_sig_type := -1 ;
   signal chk_st_rec3_vector : chk_sig_type := -1 ;
   signal chk_st_arr1_vector : chk_sig_type := -1 ;
   signal chk_st_arr2_vector : chk_sig_type := -1 ;
   signal chk_st_arr3_vector : chk_sig_type := -1 ;
--
   procedure Proc1 (
      signal   s_st_boolean_vector : inout st_boolean_vector ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_boolean_vector : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_boolean_vector (lowb+1 to lowb+3) <= transport
               c_st_boolean_vector_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_boolean_vector_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_boolean_vector (lowb+1 to lowb+3) =
                 c_st_boolean_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_boolean_vector (lowb+1 to lowb+3) =
                 c_st_boolean_vector_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P1" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_boolean_vector (lowb+1 to lowb+3) <= transport
               c_st_boolean_vector_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_boolean_vector_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_boolean_vector_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_boolean_vector_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_boolean_vector (lowb+1 to lowb+3) =
                 c_st_boolean_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_boolean_vector (lowb+1 to lowb+3) <= transport
               c_st_boolean_vector_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_boolean_vector (lowb+1 to lowb+3) =
                 c_st_boolean_vector_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_boolean_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc1 ;
--
   procedure Proc2 (
      signal   s_st_bit_vector : inout st_bit_vector ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_bit_vector : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_bit_vector (lowb+1 to lowb+3) <= transport
               c_st_bit_vector_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_bit_vector_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_bit_vector (lowb+1 to lowb+3) =
                 c_st_bit_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_bit_vector (lowb+1 to lowb+3) =
                 c_st_bit_vector_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P2" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_bit_vector (lowb+1 to lowb+3) <= transport
               c_st_bit_vector_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_bit_vector_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_bit_vector_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_bit_vector_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_bit_vector (lowb+1 to lowb+3) =
                 c_st_bit_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_bit_vector (lowb+1 to lowb+3) <= transport
               c_st_bit_vector_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_bit_vector (lowb+1 to lowb+3) =
                 c_st_bit_vector_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_bit_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc2 ;
--
   procedure Proc3 (
      signal   s_st_severity_level_vector : inout st_severity_level_vector ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_severity_level_vector : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_severity_level_vector (lowb+1 to lowb+3) <= transport
               c_st_severity_level_vector_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_severity_level_vector_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_severity_level_vector (lowb+1 to lowb+3) =
                 c_st_severity_level_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_severity_level_vector (lowb+1 to lowb+3) =
                 c_st_severity_level_vector_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P3" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_severity_level_vector (lowb+1 to lowb+3) <= transport
               c_st_severity_level_vector_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_severity_level_vector_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_severity_level_vector_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_severity_level_vector_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_severity_level_vector (lowb+1 to lowb+3) =
                 c_st_severity_level_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_severity_level_vector (lowb+1 to lowb+3) <= transport
               c_st_severity_level_vector_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_severity_level_vector (lowb+1 to lowb+3) =
                 c_st_severity_level_vector_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_severity_level_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc3 ;
--
   procedure Proc4 (
      signal   s_st_string : inout st_string ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_string : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_string (lowb+1 to lowb+3) <= transport
               c_st_string_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_string_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_string (lowb+1 to lowb+3) =
                 c_st_string_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_string (lowb+1 to lowb+3) =
                 c_st_string_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P4" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_string (lowb+1 to lowb+3) <= transport
               c_st_string_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_string_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_string_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_string_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_string (lowb+1 to lowb+3) =
                 c_st_string_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_string (lowb+1 to lowb+3) <= transport
               c_st_string_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_string (lowb+1 to lowb+3) =
                 c_st_string_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_string <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc4 ;
--
   procedure Proc5 (
      signal   s_st_enum1_vector : inout st_enum1_vector ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_enum1_vector : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_enum1_vector (lowb+1 to lowb+3) <= transport
               c_st_enum1_vector_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_enum1_vector_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_enum1_vector (lowb+1 to lowb+3) =
                 c_st_enum1_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_enum1_vector (lowb+1 to lowb+3) =
                 c_st_enum1_vector_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P5" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_enum1_vector (lowb+1 to lowb+3) <= transport
               c_st_enum1_vector_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_enum1_vector_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_enum1_vector_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_enum1_vector_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_enum1_vector (lowb+1 to lowb+3) =
                 c_st_enum1_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_enum1_vector (lowb+1 to lowb+3) <= transport
               c_st_enum1_vector_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_enum1_vector (lowb+1 to lowb+3) =
                 c_st_enum1_vector_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_enum1_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc5 ;
--
   procedure Proc6 (
      signal   s_st_integer_vector : inout st_integer_vector ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_integer_vector : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_integer_vector (lowb+1 to lowb+3) <= transport
               c_st_integer_vector_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_integer_vector_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_integer_vector (lowb+1 to lowb+3) =
                 c_st_integer_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_integer_vector (lowb+1 to lowb+3) =
                 c_st_integer_vector_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P6" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_integer_vector (lowb+1 to lowb+3) <= transport
               c_st_integer_vector_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_integer_vector_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_integer_vector_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_integer_vector_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_integer_vector (lowb+1 to lowb+3) =
                 c_st_integer_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_integer_vector (lowb+1 to lowb+3) <= transport
               c_st_integer_vector_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_integer_vector (lowb+1 to lowb+3) =
                 c_st_integer_vector_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_integer_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc6 ;
--
   procedure Proc7 (
      signal   s_st_int1_vector : inout st_int1_vector ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_int1_vector : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_int1_vector (lowb+1 to lowb+3) <= transport
               c_st_int1_vector_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_int1_vector_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_int1_vector (lowb+1 to lowb+3) =
                 c_st_int1_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_int1_vector (lowb+1 to lowb+3) =
                 c_st_int1_vector_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P7" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_int1_vector (lowb+1 to lowb+3) <= transport
               c_st_int1_vector_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_int1_vector_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_int1_vector_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_int1_vector_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_int1_vector (lowb+1 to lowb+3) =
                 c_st_int1_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_int1_vector (lowb+1 to lowb+3) <= transport
               c_st_int1_vector_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_int1_vector (lowb+1 to lowb+3) =
                 c_st_int1_vector_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_int1_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc7 ;
--
   procedure Proc8 (
      signal   s_st_time_vector : inout st_time_vector ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_time_vector : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_time_vector (lowb+1 to lowb+3) <= transport
               c_st_time_vector_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_time_vector_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_time_vector (lowb+1 to lowb+3) =
                 c_st_time_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_time_vector (lowb+1 to lowb+3) =
                 c_st_time_vector_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P8" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_time_vector (lowb+1 to lowb+3) <= transport
               c_st_time_vector_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_time_vector_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_time_vector_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_time_vector_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_time_vector (lowb+1 to lowb+3) =
                 c_st_time_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_time_vector (lowb+1 to lowb+3) <= transport
               c_st_time_vector_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_time_vector (lowb+1 to lowb+3) =
                 c_st_time_vector_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_time_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc8 ;
--
   procedure Proc9 (
      signal   s_st_phys1_vector : inout st_phys1_vector ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_phys1_vector : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_phys1_vector (lowb+1 to lowb+3) <= transport
               c_st_phys1_vector_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_phys1_vector_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_phys1_vector (lowb+1 to lowb+3) =
                 c_st_phys1_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_phys1_vector (lowb+1 to lowb+3) =
                 c_st_phys1_vector_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P9" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_phys1_vector (lowb+1 to lowb+3) <= transport
               c_st_phys1_vector_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_phys1_vector_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_phys1_vector_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_phys1_vector_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_phys1_vector (lowb+1 to lowb+3) =
                 c_st_phys1_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_phys1_vector (lowb+1 to lowb+3) <= transport
               c_st_phys1_vector_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_phys1_vector (lowb+1 to lowb+3) =
                 c_st_phys1_vector_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_phys1_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc9 ;
--
   procedure Proc10 (
      signal   s_st_real_vector : inout st_real_vector ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_real_vector : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_real_vector (lowb+1 to lowb+3) <= transport
               c_st_real_vector_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_real_vector_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_real_vector (lowb+1 to lowb+3) =
                 c_st_real_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_real_vector (lowb+1 to lowb+3) =
                 c_st_real_vector_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P10" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_real_vector (lowb+1 to lowb+3) <= transport
               c_st_real_vector_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_real_vector_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_real_vector_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_real_vector_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_real_vector (lowb+1 to lowb+3) =
                 c_st_real_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_real_vector (lowb+1 to lowb+3) <= transport
               c_st_real_vector_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_real_vector (lowb+1 to lowb+3) =
                 c_st_real_vector_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_real_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc10 ;
--
   procedure Proc11 (
      signal   s_st_real1_vector : inout st_real1_vector ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_real1_vector : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_real1_vector (lowb+1 to lowb+3) <= transport
               c_st_real1_vector_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_real1_vector_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_real1_vector (lowb+1 to lowb+3) =
                 c_st_real1_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_real1_vector (lowb+1 to lowb+3) =
                 c_st_real1_vector_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P11" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_real1_vector (lowb+1 to lowb+3) <= transport
               c_st_real1_vector_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_real1_vector_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_real1_vector_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_real1_vector_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_real1_vector (lowb+1 to lowb+3) =
                 c_st_real1_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_real1_vector (lowb+1 to lowb+3) <= transport
               c_st_real1_vector_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_real1_vector (lowb+1 to lowb+3) =
                 c_st_real1_vector_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_real1_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc11 ;
--
   procedure Proc12 (
      signal   s_st_rec1_vector : inout st_rec1_vector ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_rec1_vector : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_rec1_vector (lowb+1 to lowb+3) <= transport
               c_st_rec1_vector_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_rec1_vector_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_rec1_vector (lowb+1 to lowb+3) =
                 c_st_rec1_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_rec1_vector (lowb+1 to lowb+3) =
                 c_st_rec1_vector_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P12" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_rec1_vector (lowb+1 to lowb+3) <= transport
               c_st_rec1_vector_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_rec1_vector_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_rec1_vector_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_rec1_vector_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_rec1_vector (lowb+1 to lowb+3) =
                 c_st_rec1_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_rec1_vector (lowb+1 to lowb+3) <= transport
               c_st_rec1_vector_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_rec1_vector (lowb+1 to lowb+3) =
                 c_st_rec1_vector_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_rec1_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc12 ;
--
   procedure Proc13 (
      signal   s_st_rec2_vector : inout st_rec2_vector ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_rec2_vector : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_rec2_vector (lowb+1 to lowb+3) <= transport
               c_st_rec2_vector_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_rec2_vector_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_rec2_vector (lowb+1 to lowb+3) =
                 c_st_rec2_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_rec2_vector (lowb+1 to lowb+3) =
                 c_st_rec2_vector_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P13" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_rec2_vector (lowb+1 to lowb+3) <= transport
               c_st_rec2_vector_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_rec2_vector_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_rec2_vector_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_rec2_vector_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_rec2_vector (lowb+1 to lowb+3) =
                 c_st_rec2_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_rec2_vector (lowb+1 to lowb+3) <= transport
               c_st_rec2_vector_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_rec2_vector (lowb+1 to lowb+3) =
                 c_st_rec2_vector_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_rec2_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc13 ;
--
   procedure Proc14 (
      signal   s_st_rec3_vector : inout st_rec3_vector ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_rec3_vector : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_rec3_vector (lowb+1 to lowb+3) <= transport
               c_st_rec3_vector_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_rec3_vector_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_rec3_vector (lowb+1 to lowb+3) =
                 c_st_rec3_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_rec3_vector (lowb+1 to lowb+3) =
                 c_st_rec3_vector_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P14" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_rec3_vector (lowb+1 to lowb+3) <= transport
               c_st_rec3_vector_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_rec3_vector_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_rec3_vector_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_rec3_vector_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_rec3_vector (lowb+1 to lowb+3) =
                 c_st_rec3_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_rec3_vector (lowb+1 to lowb+3) <= transport
               c_st_rec3_vector_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_rec3_vector (lowb+1 to lowb+3) =
                 c_st_rec3_vector_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_rec3_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc14 ;
--
   procedure Proc15 (
      signal   s_st_arr1_vector : inout st_arr1_vector ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_arr1_vector : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_arr1_vector (lowb+1 to lowb+3) <= transport
               c_st_arr1_vector_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_arr1_vector_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_arr1_vector (lowb+1 to lowb+3) =
                 c_st_arr1_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_arr1_vector (lowb+1 to lowb+3) =
                 c_st_arr1_vector_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P15" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_arr1_vector (lowb+1 to lowb+3) <= transport
               c_st_arr1_vector_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_arr1_vector_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_arr1_vector_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_arr1_vector_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_arr1_vector (lowb+1 to lowb+3) =
                 c_st_arr1_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_arr1_vector (lowb+1 to lowb+3) <= transport
               c_st_arr1_vector_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_arr1_vector (lowb+1 to lowb+3) =
                 c_st_arr1_vector_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_arr1_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc15 ;
--
   procedure Proc16 (
      signal   s_st_arr2_vector : inout st_arr2_vector ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_arr2_vector : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_arr2_vector (lowb+1 to lowb+3) <= transport
               c_st_arr2_vector_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_arr2_vector_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_arr2_vector (lowb+1 to lowb+3) =
                 c_st_arr2_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_arr2_vector (lowb+1 to lowb+3) =
                 c_st_arr2_vector_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P16" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_arr2_vector (lowb+1 to lowb+3) <= transport
               c_st_arr2_vector_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_arr2_vector_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_arr2_vector_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_arr2_vector_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_arr2_vector (lowb+1 to lowb+3) =
                 c_st_arr2_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_arr2_vector (lowb+1 to lowb+3) <= transport
               c_st_arr2_vector_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_arr2_vector (lowb+1 to lowb+3) =
                 c_st_arr2_vector_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_arr2_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc16 ;
--
   procedure Proc17 (
      signal   s_st_arr3_vector : inout st_arr3_vector ;
      variable counter : inout integer ;
      variable correct : inout boolean ;
      variable savtime : inout time ;
      signal   chk_st_arr3_vector : out chk_sig_type
                   )
   is
   begin
      case counter is
         when 0
         => s_st_arr3_vector (lowb+1 to lowb+3) <= transport
               c_st_arr3_vector_2 (lowb+1 to lowb+3) after 10 ns,
               c_st_arr3_vector_1 (lowb+1 to lowb+3) after 20 ns ;
--
         when 1
         => correct :=
               s_st_arr3_vector (lowb+1 to lowb+3) =
                 c_st_arr3_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
--
         when 2
         => correct :=
               correct and
               s_st_arr3_vector (lowb+1 to lowb+3) =
                 c_st_arr3_vector_1 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085.P17" ,
              "Multi transport transactions occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            s_st_arr3_vector (lowb+1 to lowb+3) <= transport
               c_st_arr3_vector_2 (lowb+1 to lowb+3) after 10 ns ,
               c_st_arr3_vector_1 (lowb+1 to lowb+3) after 20 ns ,
               c_st_arr3_vector_2 (lowb+1 to lowb+3) after 30 ns ,
               c_st_arr3_vector_1 (lowb+1 to lowb+3) after 40 ns ;
--
         when 3
         => correct :=
               s_st_arr3_vector (lowb+1 to lowb+3) =
                 c_st_arr3_vector_2 (lowb+1 to lowb+3) and
               (savtime + 10 ns) = Std.Standard.Now ;
            s_st_arr3_vector (lowb+1 to lowb+3) <= transport
               c_st_arr3_vector_1 (lowb+1 to lowb+3) after 5 ns ;
--
         when 4
         => correct :=
               correct and
               s_st_arr3_vector (lowb+1 to lowb+3) =
                 c_st_arr3_vector_1 (lowb+1 to lowb+3) and
               (savtime + 5 ns) = Std.Standard.Now ;
            test_report ( "ARCH00085" ,
              "One transport transaction occurred on signal " &
              "asg with slice name on LHS",
              correct ) ;
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              correct ) ;
--
         when others
         => -- No more transactions should have occurred
            test_report ( "ARCH00085" ,
              "Old transactions were removed on signal " &
              "asg with slice name on LHS",
              false ) ;
--
      end case ;
--
      savtime := Std.Standard.Now ;
      chk_st_arr3_vector <= transport counter after (1 us - savtime) ;
      counter := counter + 1;
--
   end Proc17 ;
--
--
end ENT00085 ;
--
architecture ARCH00085 of ENT00085 is
   signal s_st_boolean_vector : st_boolean_vector
     := c_st_boolean_vector_1 ;
   signal s_st_bit_vector : st_bit_vector
     := c_st_bit_vector_1 ;
   signal s_st_severity_level_vector : st_severity_level_vector
     := c_st_severity_level_vector_1 ;
   signal s_st_string : st_string
     := c_st_string_1 ;
   signal s_st_enum1_vector : st_enum1_vector
     := c_st_enum1_vector_1 ;
   signal s_st_integer_vector : st_integer_vector
     := c_st_integer_vector_1 ;
   signal s_st_int1_vector : st_int1_vector
     := c_st_int1_vector_1 ;
   signal s_st_time_vector : st_time_vector
     := c_st_time_vector_1 ;
   signal s_st_phys1_vector : st_phys1_vector
     := c_st_phys1_vector_1 ;
   signal s_st_real_vector : st_real_vector
     := c_st_real_vector_1 ;
   signal s_st_real1_vector : st_real1_vector
     := c_st_real1_vector_1 ;
   signal s_st_rec1_vector : st_rec1_vector
     := c_st_rec1_vector_1 ;
   signal s_st_rec2_vector : st_rec2_vector
     := c_st_rec2_vector_1 ;
   signal s_st_rec3_vector : st_rec3_vector
     := c_st_rec3_vector_1 ;
   signal s_st_arr1_vector : st_arr1_vector
     := c_st_arr1_vector_1 ;
   signal s_st_arr2_vector : st_arr2_vector
     := c_st_arr2_vector_1 ;
   signal s_st_arr3_vector : st_arr3_vector
     := c_st_arr3_vector_1 ;
--
begin
   PGEN_CHKP_1 :
   process ( chk_st_boolean_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P1" ,
           "Transport transactions entirely completed",
           chk_st_boolean_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_1 ;
--
   P1 :
   process ( s_st_boolean_vector )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc1 (
          s_st_boolean_vector,
          counter,
          correct,
          savtime,
          chk_st_boolean_vector
         ) ;
   end process P1 ;
--
   PGEN_CHKP_2 :
   process ( chk_st_bit_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P2" ,
           "Transport transactions entirely completed",
           chk_st_bit_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_2 ;
--
   P2 :
   process ( s_st_bit_vector )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc2 (
          s_st_bit_vector,
          counter,
          correct,
          savtime,
          chk_st_bit_vector
         ) ;
   end process P2 ;
--
   PGEN_CHKP_3 :
   process ( chk_st_severity_level_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P3" ,
           "Transport transactions entirely completed",
           chk_st_severity_level_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_3 ;
--
   P3 :
   process ( s_st_severity_level_vector )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc3 (
          s_st_severity_level_vector,
          counter,
          correct,
          savtime,
          chk_st_severity_level_vector
         ) ;
   end process P3 ;
--
   PGEN_CHKP_4 :
   process ( chk_st_string )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P4" ,
           "Transport transactions entirely completed",
           chk_st_string = 4 ) ;
      end if ;
   end process PGEN_CHKP_4 ;
--
   P4 :
   process ( s_st_string )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc4 (
          s_st_string,
          counter,
          correct,
          savtime,
          chk_st_string
         ) ;
   end process P4 ;
--
   PGEN_CHKP_5 :
   process ( chk_st_enum1_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P5" ,
           "Transport transactions entirely completed",
           chk_st_enum1_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_5 ;
--
   P5 :
   process ( s_st_enum1_vector )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc5 (
          s_st_enum1_vector,
          counter,
          correct,
          savtime,
          chk_st_enum1_vector
         ) ;
   end process P5 ;
--
   PGEN_CHKP_6 :
   process ( chk_st_integer_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P6" ,
           "Transport transactions entirely completed",
           chk_st_integer_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_6 ;
--
   P6 :
   process ( s_st_integer_vector )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc6 (
          s_st_integer_vector,
          counter,
          correct,
          savtime,
          chk_st_integer_vector
         ) ;
   end process P6 ;
--
   PGEN_CHKP_7 :
   process ( chk_st_int1_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P7" ,
           "Transport transactions entirely completed",
           chk_st_int1_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_7 ;
--
   P7 :
   process ( s_st_int1_vector )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc7 (
          s_st_int1_vector,
          counter,
          correct,
          savtime,
          chk_st_int1_vector
         ) ;
   end process P7 ;
--
   PGEN_CHKP_8 :
   process ( chk_st_time_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P8" ,
           "Transport transactions entirely completed",
           chk_st_time_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_8 ;
--
   P8 :
   process ( s_st_time_vector )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc8 (
          s_st_time_vector,
          counter,
          correct,
          savtime,
          chk_st_time_vector
         ) ;
   end process P8 ;
--
   PGEN_CHKP_9 :
   process ( chk_st_phys1_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P9" ,
           "Transport transactions entirely completed",
           chk_st_phys1_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_9 ;
--
   P9 :
   process ( s_st_phys1_vector )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc9 (
          s_st_phys1_vector,
          counter,
          correct,
          savtime,
          chk_st_phys1_vector
         ) ;
   end process P9 ;
--
   PGEN_CHKP_10 :
   process ( chk_st_real_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P10" ,
           "Transport transactions entirely completed",
           chk_st_real_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_10 ;
--
   P10 :
   process ( s_st_real_vector )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc10 (
          s_st_real_vector,
          counter,
          correct,
          savtime,
          chk_st_real_vector
         ) ;
   end process P10 ;
--
   PGEN_CHKP_11 :
   process ( chk_st_real1_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P11" ,
           "Transport transactions entirely completed",
           chk_st_real1_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_11 ;
--
   P11 :
   process ( s_st_real1_vector )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc11 (
          s_st_real1_vector,
          counter,
          correct,
          savtime,
          chk_st_real1_vector
         ) ;
   end process P11 ;
--
   PGEN_CHKP_12 :
   process ( chk_st_rec1_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P12" ,
           "Transport transactions entirely completed",
           chk_st_rec1_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_12 ;
--
   P12 :
   process ( s_st_rec1_vector )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc12 (
          s_st_rec1_vector,
          counter,
          correct,
          savtime,
          chk_st_rec1_vector
         ) ;
   end process P12 ;
--
   PGEN_CHKP_13 :
   process ( chk_st_rec2_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P13" ,
           "Transport transactions entirely completed",
           chk_st_rec2_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_13 ;
--
   P13 :
   process ( s_st_rec2_vector )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc13 (
          s_st_rec2_vector,
          counter,
          correct,
          savtime,
          chk_st_rec2_vector
         ) ;
   end process P13 ;
--
   PGEN_CHKP_14 :
   process ( chk_st_rec3_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P14" ,
           "Transport transactions entirely completed",
           chk_st_rec3_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_14 ;
--
   P14 :
   process ( s_st_rec3_vector )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc14 (
          s_st_rec3_vector,
          counter,
          correct,
          savtime,
          chk_st_rec3_vector
         ) ;
   end process P14 ;
--
   PGEN_CHKP_15 :
   process ( chk_st_arr1_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P15" ,
           "Transport transactions entirely completed",
           chk_st_arr1_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_15 ;
--
   P15 :
   process ( s_st_arr1_vector )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc15 (
          s_st_arr1_vector,
          counter,
          correct,
          savtime,
          chk_st_arr1_vector
         ) ;
   end process P15 ;
--
   PGEN_CHKP_16 :
   process ( chk_st_arr2_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P16" ,
           "Transport transactions entirely completed",
           chk_st_arr2_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_16 ;
--
   P16 :
   process ( s_st_arr2_vector )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc16 (
          s_st_arr2_vector,
          counter,
          correct,
          savtime,
          chk_st_arr2_vector
         ) ;
   end process P16 ;
--
   PGEN_CHKP_17 :
   process ( chk_st_arr3_vector )
   begin
      if Std.Standard.Now > 0 ns then
         test_report ( "P17" ,
           "Transport transactions entirely completed",
           chk_st_arr3_vector = 4 ) ;
      end if ;
   end process PGEN_CHKP_17 ;
--
   P17 :
   process ( s_st_arr3_vector )
      variable counter : integer := 0 ;
      variable correct : boolean ;
      variable savtime : time ;
   begin
      Proc17 (
          s_st_arr3_vector,
          counter,
          correct,
          savtime,
          chk_st_arr3_vector
         ) ;
   end process P17 ;
--
--
end ARCH00085 ;
--
entity ENT00085_Test_Bench is
end ENT00085_Test_Bench ;
--
architecture ARCH00085_Test_Bench of ENT00085_Test_Bench is
begin
   L1:
   block
      component UUT
      end component ;
      for CIS1 : UUT use entity WORK.ENT00085 ( ARCH00085 ) ;
   begin
      CIS1 : UUT ;
   end block L1 ;
end ARCH00085_Test_Bench ;
