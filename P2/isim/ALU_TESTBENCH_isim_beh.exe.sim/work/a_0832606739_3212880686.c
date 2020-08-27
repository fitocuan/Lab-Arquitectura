/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//VBoxSvr/TE2031/lab-repo/P2/ALU.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 3451);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB7:    t5 = (t0 + 3454);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB8:    t8 = (t0 + 3457);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB9:
LAB6:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 1952);
    t3 = (t1 + 32U);
    t5 = *((char **)t3);
    t6 = (t5 + 40U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t1);

LAB2:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 3328U);
    t3 = (t0 + 3460);
    t6 = (t11 + 0U);
    t8 = (t6 + 0U);
    *((int *)t8) = 0;
    t8 = (t6 + 4U);
    *((int *)t8) = 39;
    t8 = (t6 + 8U);
    *((int *)t8) = 1;
    t4 = (39 - 0);
    t18 = (t4 * 1);
    t18 = (t18 + 1);
    t8 = (t6 + 12U);
    *((unsigned int *)t8) = t18;
    t20 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t11);
    if (t20 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1988);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t5 = (t3 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB18:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 2024);
    t3 = (t1 + 32U);
    t5 = *((char **)t3);
    t6 = (t5 + 40U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 1908);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(52, ng0);
    t12 = (t0 + 684U);
    t13 = *((char **)t12);
    t12 = (t0 + 3280U);
    t14 = (t0 + 776U);
    t15 = *((char **)t14);
    t14 = (t0 + 3296U);
    t16 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t11, t13, t12, t15, t14);
    t17 = (t11 + 12U);
    t18 = *((unsigned int *)t17);
    t19 = (1U * t18);
    t20 = (32U != t19);
    if (t20 == 1)
        goto LAB11;

LAB12:    t21 = (t0 + 1952);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    t24 = (t23 + 40U);
    t25 = *((char **)t24);
    memcpy(t25, t16, 32U);
    xsi_driver_first_trans_fast(t21);
    goto LAB2;

LAB4:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 3280U);
    t3 = (t0 + 776U);
    t5 = *((char **)t3);
    t3 = (t0 + 3296U);
    t6 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t11, t2, t1, t5, t3);
    t8 = (t11 + 12U);
    t18 = *((unsigned int *)t8);
    t19 = (1U * t18);
    t20 = (32U != t19);
    if (t20 == 1)
        goto LAB13;

LAB14:    t9 = (t0 + 1952);
    t12 = (t9 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB5:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 3280U);
    t3 = (t0 + 776U);
    t5 = *((char **)t3);
    t3 = (t0 + 3296U);
    t6 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t11, t2, t1, t5, t3);
    t8 = (t11 + 12U);
    t18 = *((unsigned int *)t8);
    t19 = (1U * t18);
    t20 = (32U != t19);
    if (t20 == 1)
        goto LAB15;

LAB16:    t9 = (t0 + 1952);
    t12 = (t9 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB10:;
LAB11:    xsi_size_not_matching(32U, t19, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(32U, t19, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(32U, t19, 0);
    goto LAB16;

LAB17:    xsi_set_current_line(63, ng0);
    t8 = (t0 + 1988);
    t9 = (t8 + 32U);
    t12 = *((char **)t9);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB18;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/ALU_TESTBENCH_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
