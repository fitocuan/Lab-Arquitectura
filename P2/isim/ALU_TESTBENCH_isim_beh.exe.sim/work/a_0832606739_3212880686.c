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
    char t12[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    t1 = (t0 + 1712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t2 = (t0 + 3443);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB9:    t6 = (t0 + 3446);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB10:    t9 = (t0 + 3449);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB7;

LAB11:
LAB8:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 1944);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 40U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 32U);
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1052U);
    t3 = *((char **)t2);
    t2 = (t0 + 3320U);
    t4 = (t0 + 3452);
    t7 = (t12 + 0U);
    t9 = (t7 + 0U);
    *((int *)t9) = 0;
    t9 = (t7 + 4U);
    *((int *)t9) = 39;
    t9 = (t7 + 8U);
    *((int *)t9) = 1;
    t5 = (39 - 0);
    t19 = (t5 * 1);
    t19 = (t19 + 1);
    t9 = (t7 + 12U);
    *((unsigned int *)t9) = t19;
    t21 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t4, t12);
    if (t21 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1980);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t6 = (t4 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB20:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1052U);
    t3 = *((char **)t2);
    t2 = (t0 + 2016);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 40U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 32U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB2;

LAB5:    xsi_set_current_line(52, ng0);
    t13 = (t0 + 684U);
    t14 = *((char **)t13);
    t13 = (t0 + 3272U);
    t15 = (t0 + 776U);
    t16 = *((char **)t15);
    t15 = (t0 + 3288U);
    t17 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t12, t14, t13, t16, t15);
    t18 = (t12 + 12U);
    t19 = *((unsigned int *)t18);
    t20 = (1U * t19);
    t21 = (32U != t20);
    if (t21 == 1)
        goto LAB13;

LAB14:    t22 = (t0 + 1944);
    t23 = (t22 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 40U);
    t26 = *((char **)t25);
    memcpy(t26, t17, 32U);
    xsi_driver_first_trans_fast(t22);
    goto LAB4;

LAB6:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 3272U);
    t4 = (t0 + 776U);
    t6 = *((char **)t4);
    t4 = (t0 + 3288U);
    t7 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t12, t3, t2, t6, t4);
    t9 = (t12 + 12U);
    t19 = *((unsigned int *)t9);
    t20 = (1U * t19);
    t21 = (32U != t20);
    if (t21 == 1)
        goto LAB15;

LAB16:    t10 = (t0 + 1944);
    t13 = (t10 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 32U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB7:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 3272U);
    t4 = (t0 + 776U);
    t6 = *((char **)t4);
    t4 = (t0 + 3288U);
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t12, t3, t2, t6, t4);
    t9 = (t12 + 12U);
    t19 = *((unsigned int *)t9);
    t20 = (1U * t19);
    t21 = (32U != t20);
    if (t21 == 1)
        goto LAB17;

LAB18:    t10 = (t0 + 1944);
    t13 = (t10 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 32U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB12:;
LAB13:    xsi_size_not_matching(32U, t20, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(32U, t20, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(32U, t20, 0);
    goto LAB18;

LAB19:    xsi_set_current_line(63, ng0);
    t9 = (t0 + 1980);
    t10 = (t9 + 32U);
    t13 = *((char **)t10);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB20;

LAB1:    return;
}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/ALU_TESTBENCH_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
