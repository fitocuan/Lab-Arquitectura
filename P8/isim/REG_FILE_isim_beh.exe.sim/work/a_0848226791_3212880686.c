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
static const char *ng0 = "//vboxsrv/SHAREDFOLDER/Practica4/REG_FILE_REGISTERS.vhd";



static void work_a_0848226791_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    int t12;
    int t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 3284);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB2;

LAB3:    t4 = (t0 + 1836);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_delta(t4, 0U, 32U, 0LL);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 752U);
    t9 = xsi_signal_has_event(t1);
    if (t9 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB4;

LAB6:
LAB5:    t1 = (t0 + 1792);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB3;

LAB4:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3316);
    *((int *)t2) = 1;
    t5 = (t0 + 3320);
    *((int *)t5) = 31;
    t12 = 1;
    t13 = 31;

LAB10:    if (t12 <= t13)
        goto LAB11;

LAB13:    goto LAB5;

LAB7:    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    t3 = t11;
    goto LAB9;

LAB11:    xsi_set_current_line(56, ng0);
    t6 = (t0 + 592U);
    t7 = *((char **)t6);
    t6 = (t0 + 3316);
    t14 = *((int *)t6);
    t15 = (t14 - 31);
    t16 = (t15 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, *((int *)t6));
    t17 = (1U * t16);
    t18 = (0 + t17);
    t8 = (t7 + t18);
    t19 = *((unsigned char *)t8);
    t20 = (t19 == (unsigned char)3);
    if (t20 != 0)
        goto LAB14;

LAB16:
LAB15:
LAB12:    t1 = (t0 + 3316);
    t12 = *((int *)t1);
    t2 = (t0 + 3320);
    t13 = *((int *)t2);
    if (t12 == t13)
        goto LAB13;

LAB17:    t14 = (t12 + 1);
    t12 = t14;
    t4 = (t0 + 3316);
    *((int *)t4) = t12;
    goto LAB10;

LAB14:    xsi_set_current_line(57, ng0);
    t21 = (t0 + 684U);
    t22 = *((char **)t21);
    t21 = (t0 + 3316);
    t23 = *((int *)t21);
    t24 = (t23 - 0);
    t25 = (t24 * 1);
    t26 = (32U * t25);
    t27 = (0U + t26);
    t28 = (t0 + 1836);
    t29 = (t28 + 32U);
    t30 = *((char **)t29);
    t31 = (t30 + 40U);
    t32 = *((char **)t31);
    memcpy(t32, t22, 32U);
    xsi_driver_first_trans_delta(t28, t27, 32U, 0LL);
    goto LAB15;

}


extern void work_a_0848226791_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0848226791_3212880686_p_0};
	xsi_register_didat("work_a_0848226791_3212880686", "isim/REG_FILE_isim_beh.exe.sim/work/a_0848226791_3212880686.didat");
	xsi_register_executes(pe);
}
