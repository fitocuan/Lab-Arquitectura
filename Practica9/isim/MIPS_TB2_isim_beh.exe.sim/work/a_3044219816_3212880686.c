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
static const char *ng0 = "//vboxsrv/SHAREDFOLDER/Practica9/remote_sources/_/Practica7/ALU_CONTROL.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_3044219816_3212880686_p_0(char *t0)
{
    char t1[16];
    char t6[16];
    char t9[16];
    char *t2;
    char *t3;
    char *t5;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t2 = (t0 + 4945);
    t7 = ((IEEE_P_2592010699) + 2332);
    t8 = (t0 + 4836U);
    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 2;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t12 = (2 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t5 = xsi_base_array_concat(t5, t6, t7, (char)97, t3, t8, (char)97, t2, t9, (char)101);
    t11 = (t0 + 684U);
    t14 = *((char **)t11);
    t11 = (t0 + 4820U);
    t15 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t1, t5, t6, t14, t11);
    t16 = (t1 + 12U);
    t13 = *((unsigned int *)t16);
    t17 = (1U * t13);
    t18 = (6U != t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    t19 = (t0 + 2652);
    t20 = (t19 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    memcpy(t23, t15, 6U);
    xsi_driver_first_trans_fast(t19);

LAB2:    t24 = (t0 + 2576);
    *((int *)t24) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(6U, t17, 0);
    goto LAB6;

}

static void work_a_3044219816_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 2688);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 2584);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3044219816_3212880686_p_2(char *t0)
{
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
    int t14;
    char *t15;
    int t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    t1 = (t0 + 2092U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 4948);
    t5 = xsi_mem_cmp(t2, t3, 6U);
    if (t5 == 1)
        goto LAB5;

LAB11:    t6 = (t0 + 4954);
    t8 = xsi_mem_cmp(t6, t3, 6U);
    if (t8 == 1)
        goto LAB6;

LAB12:    t9 = (t0 + 4960);
    t11 = xsi_mem_cmp(t9, t3, 6U);
    if (t11 == 1)
        goto LAB7;

LAB13:    t12 = (t0 + 4966);
    t14 = xsi_mem_cmp(t12, t3, 6U);
    if (t14 == 1)
        goto LAB8;

LAB14:    t15 = (t0 + 4972);
    t17 = xsi_mem_cmp(t15, t3, 6U);
    if (t17 == 1)
        goto LAB9;

LAB15:
LAB10:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4993);
    t4 = (t0 + 2724);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(53, ng0);

LAB19:    t2 = (t0 + 2592);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB20;

LAB1:    return;
LAB5:    xsi_set_current_line(54, ng0);
    t18 = (t0 + 4978);
    t20 = (t0 + 2724);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 3U);
    xsi_driver_first_trans_fast(t20);
    goto LAB4;

LAB6:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4981);
    t4 = (t0 + 2724);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4984);
    t4 = (t0 + 2724);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4987);
    t4 = (t0 + 2724);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4990);
    t4 = (t0 + 2724);
    t6 = (t4 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB16:;
LAB17:    t3 = (t0 + 2592);
    *((int *)t3) = 0;
    goto LAB2;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

}

static void work_a_3044219816_3212880686_p_3(char *t0)
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

LAB0:    t1 = (t0 + 2236U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1144U);
    t3 = *((char **)t2);
    t2 = (t0 + 4996);
    t5 = xsi_mem_cmp(t2, t3, 6U);
    if (t5 == 1)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2760);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t6 = (t4 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(61, ng0);

LAB11:    t2 = (t0 + 2600);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB12;

LAB1:    return;
LAB5:    xsi_set_current_line(62, ng0);
    t6 = (t0 + 2760);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB4;

LAB8:;
LAB9:    t3 = (t0 + 2600);
    *((int *)t3) = 0;
    goto LAB2;

LAB10:    goto LAB9;

LAB12:    goto LAB10;

}

static void work_a_3044219816_3212880686_p_4(char *t0)
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
    char *t11;

LAB0:    t1 = (t0 + 2380U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t2 = (t0 + 5002);
    t5 = xsi_mem_cmp(t2, t3, 3U);
    if (t5 == 1)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 960U);
    t3 = *((char **)t2);
    t2 = (t0 + 2796);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 3U);
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(65, ng0);

LAB11:    t2 = (t0 + 2608);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB12;

LAB1:    return;
LAB5:    xsi_set_current_line(66, ng0);
    t6 = (t0 + 1052U);
    t7 = *((char **)t6);
    t6 = (t0 + 2796);
    t8 = (t6 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 3U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB4;

LAB8:;
LAB9:    t3 = (t0 + 2608);
    *((int *)t3) = 0;
    goto LAB2;

LAB10:    goto LAB9;

LAB12:    goto LAB10;

}


extern void work_a_3044219816_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3044219816_3212880686_p_0,(void *)work_a_3044219816_3212880686_p_1,(void *)work_a_3044219816_3212880686_p_2,(void *)work_a_3044219816_3212880686_p_3,(void *)work_a_3044219816_3212880686_p_4};
	xsi_register_didat("work_a_3044219816_3212880686", "isim/MIPS_TB2_isim_beh.exe.sim/work/a_3044219816_3212880686.didat");
	xsi_register_executes(pe);
}
