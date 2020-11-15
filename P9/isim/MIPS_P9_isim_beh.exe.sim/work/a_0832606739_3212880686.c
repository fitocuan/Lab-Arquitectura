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
static const char *ng0 = "//VBoxSvr/TE2031/lab-repo/P9/remote_sources/_/P2/ALU.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    static char *nl0[] = {&&LAB6, &&LAB5};

LAB0:    t1 = (t0 + 1804U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 4308U);
    t4 = (t0 + 776U);
    t5 = *((char **)t4);
    t4 = (t0 + 4324U);
    t6 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t3, t2, t5, t4);
    t7 = (char *)((nl0) + t6);
    goto **((char **)t7);

LAB4:    xsi_set_current_line(48, ng0);

LAB9:    t2 = (t0 + 2432);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB10;

LAB1:    return;
LAB5:    xsi_set_current_line(49, ng0);
    t8 = (t0 + 4527);
    t10 = (t0 + 2500);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 32U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB6:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 4559);
    t4 = (t0 + 2500);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    t3 = (t0 + 2432);
    *((int *)t3) = 0;
    goto LAB2;

LAB8:    goto LAB7;

LAB10:    goto LAB8;

}

static void work_a_0832606739_3212880686_p_1(char *t0)
{
    char t21[16];
    char t37[16];
    char t39[16];
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
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    int t17;
    char *t18;
    char *t19;
    int t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t38;

LAB0:    t1 = (t0 + 1948U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t2 = (t0 + 4591);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB12:    t6 = (t0 + 4594);
    t8 = xsi_mem_cmp(t6, t3, 3U);
    if (t8 == 1)
        goto LAB6;

LAB13:    t9 = (t0 + 4597);
    t11 = xsi_mem_cmp(t9, t3, 3U);
    if (t11 == 1)
        goto LAB7;

LAB14:    t12 = (t0 + 4600);
    t14 = xsi_mem_cmp(t12, t3, 3U);
    if (t14 == 1)
        goto LAB8;

LAB15:    t15 = (t0 + 4603);
    t17 = xsi_mem_cmp(t15, t3, 3U);
    if (t17 == 1)
        goto LAB9;

LAB16:    t18 = (t0 + 4606);
    t20 = xsi_mem_cmp(t18, t3, 3U);
    if (t20 == 1)
        goto LAB10;

LAB17:
LAB11:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1144U);
    t3 = *((char **)t2);
    t2 = (t0 + 2536);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 40U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 32U);
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(52, ng0);

LAB31:    t2 = (t0 + 2440);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB32;

LAB1:    return;
LAB5:    xsi_set_current_line(53, ng0);
    t22 = (t0 + 684U);
    t23 = *((char **)t22);
    t22 = (t0 + 4308U);
    t24 = (t0 + 776U);
    t25 = *((char **)t24);
    t24 = (t0 + 4324U);
    t26 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t21, t23, t22, t25, t24);
    t27 = (t21 + 12U);
    t28 = *((unsigned int *)t27);
    t29 = (1U * t28);
    t30 = (32U != t29);
    if (t30 == 1)
        goto LAB19;

LAB20:    t31 = (t0 + 2536);
    t32 = (t31 + 32U);
    t33 = *((char **)t32);
    t34 = (t33 + 40U);
    t35 = *((char **)t34);
    memcpy(t35, t26, 32U);
    xsi_driver_first_trans_fast(t31);
    goto LAB4;

LAB6:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 4308U);
    t4 = (t0 + 776U);
    t6 = *((char **)t4);
    t4 = (t0 + 4324U);
    t7 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t21, t3, t2, t6, t4);
    t9 = (t21 + 12U);
    t28 = *((unsigned int *)t9);
    t29 = (1U * t28);
    t30 = (32U != t29);
    if (t30 == 1)
        goto LAB21;

LAB22:    t10 = (t0 + 2536);
    t12 = (t10 + 32U);
    t13 = *((char **)t12);
    t15 = (t13 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 32U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB7:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 4308U);
    t4 = (t0 + 776U);
    t6 = *((char **)t4);
    t4 = (t0 + 4324U);
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t21, t3, t2, t6, t4);
    t9 = (t21 + 12U);
    t28 = *((unsigned int *)t9);
    t29 = (1U * t28);
    t30 = (32U != t29);
    if (t30 == 1)
        goto LAB23;

LAB24:    t10 = (t0 + 2536);
    t12 = (t10 + 32U);
    t13 = *((char **)t12);
    t15 = (t13 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 32U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB8:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 2536);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 40U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 32U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB9:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t28 = (31 - 15);
    t29 = (t28 * 1U);
    t36 = (0 + t29);
    t2 = (t3 + t36);
    t4 = (t0 + 4609);
    t9 = ((IEEE_P_2592010699) + 2332);
    t10 = (t37 + 0U);
    t12 = (t10 + 0U);
    *((int *)t12) = 15;
    t12 = (t10 + 4U);
    *((int *)t12) = 0;
    t12 = (t10 + 8U);
    *((int *)t12) = -1;
    t5 = (0 - 15);
    t38 = (t5 * -1);
    t38 = (t38 + 1);
    t12 = (t10 + 12U);
    *((unsigned int *)t12) = t38;
    t12 = (t39 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 15;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t8 = (15 - 0);
    t38 = (t8 * 1);
    t38 = (t38 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t38;
    t7 = xsi_base_array_concat(t7, t21, t9, (char)97, t2, t37, (char)97, t4, t39, (char)101);
    t38 = (16U + 16U);
    t30 = (32U != t38);
    if (t30 == 1)
        goto LAB25;

LAB26:    t13 = (t0 + 2536);
    t15 = (t13 + 32U);
    t16 = *((char **)t15);
    t18 = (t16 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 32U);
    xsi_driver_first_trans_fast(t13);
    goto LAB4;

LAB10:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 4308U);
    t4 = (t0 + 776U);
    t6 = *((char **)t4);
    t4 = (t0 + 4324U);
    t7 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t21, t3, t2, t6, t4);
    t9 = (t21 + 12U);
    t28 = *((unsigned int *)t9);
    t29 = (1U * t28);
    t30 = (32U != t29);
    if (t30 == 1)
        goto LAB27;

LAB28:    t10 = (t0 + 2536);
    t12 = (t10 + 32U);
    t13 = *((char **)t12);
    t15 = (t13 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 32U);
    xsi_driver_first_trans_fast(t10);
    goto LAB4;

LAB18:;
LAB19:    xsi_size_not_matching(32U, t29, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(32U, t29, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(32U, t29, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(32U, t38, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(32U, t29, 0);
    goto LAB28;

LAB29:    t3 = (t0 + 2440);
    *((int *)t3) = 0;
    goto LAB2;

LAB30:    goto LAB29;

LAB32:    goto LAB30;

}

static void work_a_0832606739_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 2092U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1052U);
    t3 = *((char **)t2);
    t2 = (t0 + 4625);
    t5 = xsi_mem_cmp(t2, t3, 32U);
    if (t5 == 1)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2572);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t6 = (t4 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(61, ng0);

LAB11:    t2 = (t0 + 2448);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB12;

LAB1:    return;
LAB5:    xsi_set_current_line(62, ng0);
    t6 = (t0 + 2572);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB4;

LAB8:;
LAB9:    t3 = (t0 + 2448);
    *((int *)t3) = 0;
    goto LAB2;

LAB10:    goto LAB9;

LAB12:    goto LAB10;

}

static void work_a_0832606739_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(65, ng0);

LAB3:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 2608);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2456);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0,(void *)work_a_0832606739_3212880686_p_1,(void *)work_a_0832606739_3212880686_p_2,(void *)work_a_0832606739_3212880686_p_3};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/MIPS_P9_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
