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
static const char *ng0 = "//vmware-host/Shared Folders/VM_Shared_folder/ThesisD1/Transmit_counter.v";
static unsigned int ng1[] = {3U, 0U};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {5U, 0U};
static int ng6[] = {1, 0};
static unsigned int ng7[] = {2U, 0U};
static unsigned int ng8[] = {4U, 0U};



static void Always_54_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 2892U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3232);
    *((int *)t2) = 1;
    t3 = (t0 + 2920);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(54, ng0);

LAB5:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 852U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(58, ng0);

LAB10:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2368);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2276);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(56, ng0);

LAB9:    xsi_set_current_line(57, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2276);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    goto LAB8;

}

static void Always_65_1(char *t0)
{
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;

LAB0:    t1 = (t0 + 3036U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3240);
    *((int *)t2) = 1;
    t3 = (t0 + 3064);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(65, ng0);

LAB5:    xsi_set_current_line(67, ng0);

LAB6:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 2276);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);

LAB7:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB16;

LAB17:
LAB18:    goto LAB2;

LAB8:    xsi_set_current_line(70, ng0);

LAB19:    xsi_set_current_line(71, ng0);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 1908);
    xsi_vlogvar_wait_assign_value(t10, t9, 0, 0, 16, 0LL);
    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1724);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1632);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1816);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1312U);
    t3 = *((char **)t2);
    t2 = (t0 + 2092);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2184);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1036U);
    t3 = *((char **)t2);
    t2 = (t0 + 944U);
    t4 = *((char **)t2);
    t12 = *((unsigned int *)t3);
    t13 = *((unsigned int *)t4);
    t14 = (t12 & t13);
    *((unsigned int *)t11) = t14;
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t7 = (t11 + 4);
    t15 = *((unsigned int *)t2);
    t16 = *((unsigned int *)t5);
    t17 = (t15 | t16);
    *((unsigned int *)t7) = t17;
    t18 = *((unsigned int *)t7);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB20;

LAB21:
LAB22:    t37 = (t11 + 4);
    t38 = *((unsigned int *)t37);
    t39 = (~(t38));
    t40 = *((unsigned int *)t11);
    t41 = (t40 & t39);
    t42 = (t41 != 0);
    if (t42 > 0)
        goto LAB23;

LAB24:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1036U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t12 = *((unsigned int *)t2);
    t13 = (~(t12));
    t14 = *((unsigned int *)t3);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(83, ng0);

LAB31:    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB29:
LAB25:    goto LAB18;

LAB10:    xsi_set_current_line(88, ng0);

LAB32:    xsi_set_current_line(89, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1908);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB18;

LAB12:    xsi_set_current_line(102, ng0);

LAB33:    xsi_set_current_line(103, ng0);
    t3 = (t0 + 1908);
    t4 = (t3 + 36U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng6)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t5, 16, t7, 32);
    t9 = (t0 + 1908);
    xsi_vlogvar_wait_assign_value(t9, t11, 0, 0, 16, 0LL);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(109, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2184);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 1908);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2092);
    t7 = (t5 + 36U);
    t9 = *((char **)t7);
    memset(t11, 0, 8);
    t10 = (t4 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB35;

LAB34:    t37 = (t9 + 4);
    if (*((unsigned int *)t37) != 0)
        goto LAB35;

LAB38:    if (*((unsigned int *)t4) > *((unsigned int *)t9))
        goto LAB37;

LAB36:    *((unsigned int *)t11) = 1;

LAB37:    t44 = (t11 + 4);
    t12 = *((unsigned int *)t44);
    t13 = (~(t12));
    t14 = *((unsigned int *)t11);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB39;

LAB40:    xsi_set_current_line(113, ng0);

LAB43:    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB41:    goto LAB18;

LAB14:    xsi_set_current_line(118, ng0);

LAB44:    xsi_set_current_line(120, ng0);
    t3 = (t0 + 1404U);
    t4 = *((char **)t3);
    t3 = (t0 + 1724);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(121, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1632);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(122, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 2184);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_lshift(t11, 32, t4, 32, t5, 32);
    t7 = (t0 + 2184);
    xsi_vlogvar_wait_assign_value(t7, t11, 0, 0, 32, 0LL);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 2184);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    memset(t11, 0, 8);
    t5 = (t11 + 4);
    t7 = (t4 + 4);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 31);
    t14 = (t13 & 1);
    *((unsigned int *)t11) = t14;
    t15 = *((unsigned int *)t7);
    t16 = (t15 >> 31);
    t17 = (t16 & 1);
    *((unsigned int *)t5) = t17;
    t9 = (t11 + 4);
    t18 = *((unsigned int *)t9);
    t19 = (~(t18));
    t20 = *((unsigned int *)t11);
    t21 = (t20 & t19);
    t22 = (t21 != 0);
    if (t22 > 0)
        goto LAB45;

LAB46:    xsi_set_current_line(129, ng0);

LAB49:    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB47:    goto LAB18;

LAB16:    xsi_set_current_line(136, ng0);

LAB50:    xsi_set_current_line(138, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1724);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(141, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1816);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(145, ng0);
    t2 = (t0 + 1128U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t12 = *((unsigned int *)t2);
    t13 = (~(t12));
    t14 = *((unsigned int *)t3);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(147, ng0);

LAB55:    xsi_set_current_line(148, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB53:    goto LAB18;

LAB20:    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t7);
    *((unsigned int *)t11) = (t20 | t21);
    t9 = (t3 + 4);
    t10 = (t4 + 4);
    t22 = *((unsigned int *)t3);
    t23 = (~(t22));
    t24 = *((unsigned int *)t9);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (~(t26));
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t8 = (t23 & t25);
    t30 = (t27 & t29);
    t31 = (~(t8));
    t32 = (~(t30));
    t33 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t33 & t31);
    t34 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t34 & t32);
    t35 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t35 & t31);
    t36 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t36 & t32);
    goto LAB22;

LAB23:    xsi_set_current_line(79, ng0);

LAB26:    xsi_set_current_line(80, ng0);
    t43 = ((char*)((ng4)));
    t44 = (t0 + 2368);
    xsi_vlogvar_wait_assign_value(t44, t43, 0, 0, 3, 0LL);
    goto LAB25;

LAB27:    xsi_set_current_line(81, ng0);

LAB30:    xsi_set_current_line(82, ng0);
    t4 = ((char*)((ng5)));
    t5 = (t0 + 2368);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    goto LAB29;

LAB35:    t43 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t43) = 1;
    goto LAB37;

LAB39:    xsi_set_current_line(111, ng0);

LAB42:    xsi_set_current_line(112, ng0);
    t45 = ((char*)((ng7)));
    t46 = (t0 + 2368);
    xsi_vlogvar_wait_assign_value(t46, t45, 0, 0, 3, 0LL);
    goto LAB41;

LAB45:    xsi_set_current_line(127, ng0);

LAB48:    xsi_set_current_line(128, ng0);
    t10 = ((char*)((ng5)));
    t37 = (t0 + 2368);
    xsi_vlogvar_wait_assign_value(t37, t10, 0, 0, 3, 0LL);
    goto LAB47;

LAB51:    xsi_set_current_line(145, ng0);

LAB54:    xsi_set_current_line(146, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2368);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    goto LAB53;

}


extern void work_m_00000000002385715812_0691271365_init()
{
	static char *pe[] = {(void *)Always_54_0,(void *)Always_65_1};
	xsi_register_didat("work_m_00000000002385715812_0691271365", "isim/transmit_Test_isim_beh.exe.sim/work/m_00000000002385715812_0691271365.didat");
	xsi_register_executes(pe);
}
