-- NEED RESULT: ARCH00497: Aggregates in constant declarations (locally static) passed
-- NEED RESULT: ARCH00497: Aggregates in variable declarations (locally static) passed
-------------------------------------------------------------------------------
 --
 --    Copyright (c) 1989 by Intermetrics, Inc.
 --                All rights reserved.
 --
-------------------------------------------------------------------------------
--
-- TEST NAME:
--
--    CT00497
--
-- AUTHOR:
--
--    A. Wilmot
--
-- TEST OBJECTIVES:
--
--    7.3.2.2 (7)
--    7.3.2.2 (11)
--
-- DESIGN UNIT ORDERING:
--
--    ENT00497(ARCH00497)
--    ENT00497_Test_Bench(ARCH00497_Test_Bench)
--
-- REVISION HISTORY:
--
--    10-AUG-1987   - initial revision
--
-- NOTES:
--
--    self-checking
--    automatically generated
--
use WORK.STANDARD_TYPES.all ;
entity ENT00497 is
   generic (
            constant g_a11 : boolean := false ;
            constant g_a12 : boolean := true ;
            constant g_a21 : integer := 1 ;
            constant g_a22 : integer := 5 ;
            constant g_b11 : integer := 0 ;
            constant g_b12 : integer := 0 ;
            constant g_b21 : integer := -5 ;
            constant g_b22 : integer := -3 ;
            constant g_c1 : integer := 0 ;
            constant g_c2 : integer := 4 ;
            constant g_d1 : integer := 3 ;
            constant g_d2 : integer := 5 ;
             constant g_r1 : integer := 1
             ) ;
   constant r1 : integer := 1 ;
   constant a11 : boolean := false ;
   constant a12 : boolean := true ;
   constant a21 : integer := 1 ;
   constant a22 : integer := 5 ;
   constant b11 : integer := 0 ;
   constant b12 : integer := 0 ;
   constant b21 : integer := -5 ;
   constant b22 : integer := -3 ;
   constant c1 : integer := 0 ;
   constant c2 : integer := 4 ;
   constant d1 : integer := 3 ;
   constant d2 : integer := 5 ;
--
   type rec_arr is array ( integer range <> ) of boolean ;
   type rec_1 is record
       f1 : integer range - r1 to r1 ;
--       f2 : rec_arr (-r1 to r1) ;
       f3, f4 : integer ;
           end record ;
--   constant c_rec_arr : rec_arr (-r1 to r1) :=
--                                  (true, false, false) ;
--   constant c_rec_1_1 : rec_1 := (1, (true, false, false), 1, 0) ;
--   constant c_rec_1_2 : rec_1 := (0, (true, false, false), 0, 1) ;
   constant c_rec_1_1 : rec_1 := (1, 1, 0) ;
   constant c_rec_1_2 : rec_1 := (0, 0, 1) ;
--
   type arr_1 is array ( boolean range <> , integer range <> )
    of rec_1 ;
   type time_matrix is array ( integer range <> , integer range <> )
    of time ;
--
--
   subtype arange1 is boolean range a11 to a12 ;
   subtype arange2 is integer range a21 to a22 ;
   subtype brange1 is integer range b11 to b12 ;
   subtype brange2 is integer range b21 to b22 ;
   subtype crange is integer range c1 to c2 ;
   subtype drange is integer range d1 to d2 ;
--
   subtype st_arr_1 is arr_1 ( arange1 , arange2 ) ;
   subtype st_time_matrix is time_matrix ( brange1 , brange2 ) ;
   subtype st_bit_vector is bit_vector ( crange ) ;
   subtype st_string is string ( drange ) ;
--
--
end ENT00497 ;
--
architecture ARCH00497 of ENT00497 is
begin
   B1 :
   block
--
   begin
      process
         variable v_arr_1 : st_arr_1 :=
              ( ( c_rec_1_1, others => c_rec_1_2 ),
                others => (others => c_rec_1_1) ) ;
         variable v_time_matrix : st_time_matrix :=
              ( st_time_matrix'right(1) =>
                          ( st_time_matrix'right(2) => 10 ns, others => 5 fs),
                others => (brange2'left => 10 ps, others => 15ms) ) ;
         variable v_bit_vector : st_bit_vector :=
              ( 0 => '1', 2 => '1', others => '0' ) ;
         variable v_string : st_string :=
              ( 3 => 'a', 4 => 'b', others => '0' ) ;
         variable v_rec_1 : rec_1 :=
--            ( f2 => (r1 => true, others => false), f3 => 1, others => 0) ;
            ( f3 => 1, others => 0) ;
         constant c_arr_1 : st_arr_1 :=
              ( ( c_rec_1_1, others => c_rec_1_2 ),
                others => (others => c_rec_1_1) ) ;
         constant c_time_matrix : st_time_matrix :=
              ( st_time_matrix'right(1) =>
                          ( st_time_matrix'right(2) => 10 ns, others => 5 fs),
                others => (brange2'left => 10 ps, others => 15ms) ) ;
         constant c_bit_vector : st_bit_vector :=
              ( 0 => '1', 2 => '1', others => '0' ) ;
         constant c_string : st_string :=
              ( 3 => 'a', 4 => 'b', others => '0' ) ;
         constant c_rec_1 : rec_1 :=
--            ( f2 => (r1 => true, others => false), f3 => 1, others => 0) ;
            ( f3 => 1, others => 0) ;
         variable bool : boolean := true;
--
      begin
         bool := bool and c_arr_1(false, 1) = c_rec_1_1 ;
         for i in 2 to 5 loop
            bool := bool and c_arr_1(false, i) = c_rec_1_2 ;
         end loop ;
         for i in 1 to 5 loop
            bool := bool and c_arr_1(true, i) = c_rec_1_1 ;
         end loop ;
--
         bool := bool and c_time_matrix(0, -3) = 10 ns ;
         for i in integer'(-5) to -4 loop
            bool := bool and c_time_matrix(0, i) = 5 fs ;
         end loop ;
--
         bool := bool and c_bit_vector = B"10100" ;
--
         bool := bool and c_string = "ab0" ;
--
         bool := bool and c_rec_1.f1 = 0 and c_rec_1.f4 = 0
                      and c_rec_1.f3 = 1 ;
--         bool := bool and c_rec_1.f2(1) = true
--                      and c_rec_1.f2(0) = false and
--                    c_rec_1.f2(-1) = false ;
--
--
         test_report ( "ARCH00497" ,
                       "Aggregates in constant declarations"
                       & " (locally static)" ,
                       bool ) ;
--
         bool := true;
         bool := bool and v_arr_1(false, 1) = c_rec_1_1 ;
         for i in 2 to 5 loop
            bool := bool and v_arr_1(false, i) = c_rec_1_2 ;
         end loop ;
         for i in 1 to 5 loop
            bool := bool and v_arr_1(true, i) = c_rec_1_1 ;
         end loop ;
--
         bool := bool and v_time_matrix(0, -3) = 10 ns ;
         for i in integer'(-5) to -4 loop
            bool := bool and v_time_matrix(0, i) = 5 fs ;
         end loop ;
--
         bool := bool and v_bit_vector = B"10100" ;
--
         bool := bool and v_string = "ab0" ;
--
         bool := bool and v_rec_1.f1 = 0 and v_rec_1.f4 = 0
                      and v_rec_1.f3 = 1 ;
--         bool := bool and v_rec_1.f2(1) = true
--                      and v_rec_1.f2(0) = false and
--                    v_rec_1.f2(-1) = false ;
--
--
         test_report ( "ARCH00497" ,
                       "Aggregates in variable declarations"
                       & " (locally static)" ,
                       bool ) ;
         wait ;
      end process ;
   end block B1 ;
end ARCH00497 ;
--
entity ENT00497_Test_Bench is
end ENT00497_Test_Bench ;
--
architecture ARCH00497_Test_Bench of ENT00497_Test_Bench is
begin
   L1:
   block
      component UUT
      end component ;
--
      for CIS1 : UUT use entity WORK.ENT00497 ( ARCH00497 ) ;
   begin
      CIS1 : UUT ;
   end block L1 ;
end ARCH00497_Test_Bench ;
