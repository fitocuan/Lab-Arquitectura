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
static const char *ng0 = "//VBoxSvr/TE2031/lab-repo/P1/left_shift_3d_tb.vhd";



static void work_a_0851532783_2372691052_p_0(char *t0)
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
    int64 t33;
    char *t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;

LAB0:    xsi_set_current_line(67, ng0);

LAB3:    t1 = (100 * 1000LL);
    t2 = (t0 + 2948);
    t4 = (t0 + 1576);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_delta(t4, 0U, 32U, t1);
    t9 = (200 * 1000LL);
    t10 = (t0 + 2980);
    t12 = (t0 + 1576);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 32U);
    xsi_driver_subsequent_trans_delta(t12, 0U, 32U, t9);
    t17 = (300 * 1000LL);
    t18 = (t0 + 3012);
    t20 = (t0 + 1576);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 32U);
    xsi_driver_subsequent_trans_delta(t20, 0U, 32U, t17);
    t25 = (400 * 1000LL);
    t26 = (t0 + 3044);
    t28 = (t0 + 1576);
    t29 = (t28 + 32U);
    t30 = *((char **)t29);
    t31 = (t30 + 40U);
    t32 = *((char **)t31);
    memcpy(t32, t26, 32U);
    xsi_driver_subsequent_trans_delta(t28, 0U, 32U, t25);
    t33 = (500 * 1000LL);
    t34 = (t0 + 3076);
    t36 = (t0 + 1576);
    t37 = (t36 + 32U);
    t38 = *((char **)t37);
    t39 = (t38 + 40U);
    t40 = *((char **)t39);
    memcpy(t40, t34, 32U);
    xsi_driver_subsequent_trans_delta(t36, 0U, 32U, t33);
    t41 = (t0 + 1576);
    xsi_driver_intertial_reject(t41, t1, t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0851532783_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0851532783_2372691052_p_0};
	xsi_register_didat("work_a_0851532783_2372691052", "isim/left_shift_3d_tb_isim_beh.exe.sim/work/a_0851532783_2372691052.didat");
	xsi_register_executes(pe);
}
