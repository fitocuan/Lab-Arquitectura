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
static const char *ng0 = "//VBoxSvr/TE2031/lab-repo/P1/sign_extender_tb.vhd";



static void work_a_3513884998_2372691052_p_0(char *t0)
{
    int64 t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int64 t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    int64 t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t1 = (100 * 1000LL);
    t2 = (t0 + 2928);
    t4 = (t0 + 1576);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t4, 0U, 16U, t1);
    t9 = (200 * 1000LL);
    t10 = (t0 + 2944);
    t12 = (t0 + 1576);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 16U);
    xsi_driver_subsequent_trans_delta(t12, 0U, 16U, t9);
    t17 = (300 * 1000LL);
    t18 = (t0 + 2960);
    t20 = (t0 + 1576);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 16U);
    xsi_driver_subsequent_trans_delta(t20, 0U, 16U, t17);
    t25 = (400 * 1000LL);
    t26 = (t0 + 2976);
    t28 = (t0 + 1576);
    t29 = (t28 + 32U);
    t30 = *((char **)t29);
    t31 = (t30 + 40U);
    t32 = *((char **)t31);
    memcpy(t32, t26, 16U);
    xsi_driver_subsequent_trans_delta(t28, 0U, 16U, t25);
    t33 = (t0 + 1576);
    xsi_driver_intertial_reject(t33, t1, t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3513884998_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3513884998_2372691052_p_0};
	xsi_register_didat("work_a_3513884998_2372691052", "isim/sign_extender_tb_isim_beh.exe.sim/work/a_3513884998_2372691052.didat");
	xsi_register_executes(pe);
}
