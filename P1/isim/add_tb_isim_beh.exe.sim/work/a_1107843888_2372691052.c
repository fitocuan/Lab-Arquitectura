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
static const char *ng0 = "//VBoxSvr/TE2031/lab-repo/P1/add_tb.vhd";



static void work_a_1107843888_2372691052_p_0(char *t0)
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
    char *t25;

LAB0:    xsi_set_current_line(70, ng0);

LAB3:    t1 = (100 * 1000LL);
    t2 = (t0 + 3264);
    t4 = (t0 + 1812);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_delta(t4, 0U, 32U, t1);
    t9 = (200 * 1000LL);
    t10 = (t0 + 3296);
    t12 = (t0 + 1812);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 32U);
    xsi_driver_subsequent_trans_delta(t12, 0U, 32U, t9);
    t17 = (300 * 1000LL);
    t18 = (t0 + 3328);
    t20 = (t0 + 1812);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 32U);
    xsi_driver_subsequent_trans_delta(t20, 0U, 32U, t17);
    t25 = (t0 + 1812);
    xsi_driver_intertial_reject(t25, t1, t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1107843888_2372691052_p_1(char *t0)
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
    char *t25;

LAB0:    xsi_set_current_line(74, ng0);

LAB3:    t1 = (100 * 1000LL);
    t2 = (t0 + 3360);
    t4 = (t0 + 1848);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_delta(t4, 0U, 32U, t1);
    t9 = (200 * 1000LL);
    t10 = (t0 + 3392);
    t12 = (t0 + 1848);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 32U);
    xsi_driver_subsequent_trans_delta(t12, 0U, 32U, t9);
    t17 = (300 * 1000LL);
    t18 = (t0 + 3424);
    t20 = (t0 + 1848);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 32U);
    xsi_driver_subsequent_trans_delta(t20, 0U, 32U, t17);
    t25 = (t0 + 1848);
    xsi_driver_intertial_reject(t25, t1, t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1107843888_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1107843888_2372691052_p_0,(void *)work_a_1107843888_2372691052_p_1};
	xsi_register_didat("work_a_1107843888_2372691052", "isim/add_tb_isim_beh.exe.sim/work/a_1107843888_2372691052.didat");
	xsi_register_executes(pe);
}
