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
static const char *ng0 = "//VBoxSvr/TE2031/lab-repo/Practica3/RAM.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3830602496_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2092);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 776U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    if (t8 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB13;

LAB14:    t3 = (unsigned char)0;

LAB15:    if (t3 != 0)
        goto LAB11;

LAB12:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1236U);
    t12 = *((char **)t1);
    t1 = (t0 + 960U);
    t13 = *((char **)t1);
    t1 = (t0 + 3788U);
    t14 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t13, t1);
    t15 = (t14 / 4);
    t16 = (t15 - 0);
    t17 = (t16 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t15);
    t18 = (32U * t17);
    t19 = (0 + t18);
    t20 = (t12 + t19);
    t21 = (t0 + 2136);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    t24 = (t23 + 40U);
    t25 = *((char **)t24);
    memcpy(t25, t20, 32U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB6;

LAB8:    t1 = (t0 + 684U);
    t9 = *((char **)t1);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)2);
    t5 = t11;
    goto LAB10;

LAB11:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 844U);
    t10 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t10 != 0)
        goto LAB16;

LAB18:
LAB17:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 4968);
    t6 = (t0 + 2136);
    t9 = (t6 + 32U);
    t12 = *((char **)t9);
    t13 = (t12 + 40U);
    t20 = *((char **)t13);
    memcpy(t20, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB6;

LAB13:    t1 = (t0 + 684U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t3 = t8;
    goto LAB15;

LAB16:    xsi_set_current_line(66, ng0);
    t9 = (t0 + 1052U);
    t12 = *((char **)t9);
    t9 = (t0 + 960U);
    t13 = *((char **)t9);
    t9 = (t0 + 3788U);
    t14 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t13, t9);
    t15 = (t14 / 4);
    t16 = (t15 - 0);
    t17 = (t16 * 1);
    t18 = (32U * t17);
    t19 = (0U + t18);
    t20 = (t0 + 2172);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    memcpy(t24, t12, 32U);
    xsi_driver_first_trans_delta(t20, t19, 32U, 0LL);
    goto LAB17;

}


extern void work_a_3830602496_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3830602496_3212880686_p_0};
	xsi_register_didat("work_a_3830602496_3212880686", "isim/RAM_TESTBENCH_isim_beh.exe.sim/work/a_3830602496_3212880686.didat");
	xsi_register_executes(pe);
}
