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
static const char *ng0 = "//vmware-host/Shared Folders/VM_Shared_folder/Thesis/Consolidated.gz/transmit_fsm.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {6U, 0U};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {5U, 0U};



static void Cont_76_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;

LAB0:    t1 = (t0 + 3708U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2128U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t4 + 4);
    t5 = *((unsigned int *)t4);
    t6 = *((unsigned int *)t2);
    t7 = (t5 | t6);
    if (t7 != 255U)
        goto LAB5;

LAB4:    if (*((unsigned int *)t2) == 0)
        goto LAB6;

LAB7:    t8 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t8) = 1;

LAB5:    t9 = (t0 + 4252);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memset(t13, 0, 8);
    t14 = 1U;
    t15 = t14;
    t16 = (t3 + 4);
    t17 = *((unsigned int *)t3);
    t14 = (t14 & t17);
    t18 = *((unsigned int *)t16);
    t15 = (t15 & t18);
    t19 = (t13 + 4);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t20 | t14);
    t21 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t21 | t15);
    xsi_driver_vfirst_trans(t9, 0, 0);
    t22 = (t0 + 4192);
    *((int *)t22) = 1;

LAB1:    return;
LAB6:    *((unsigned int *)t3) = 1;
    goto LAB5;

}

static void Always_168_1(char *t0)
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

LAB0:    t1 = (t0 + 3852U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(168, ng0);
    t2 = (t0 + 4200);
    *((int *)t2) = 1;
    t3 = (t0 + 3880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(168, ng0);

LAB5:    xsi_set_current_line(170, ng0);
    t4 = (t0 + 932U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(173, ng0);

LAB10:    xsi_set_current_line(174, ng0);
    t2 = (t0 + 3184);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3092);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(170, ng0);

LAB9:    xsi_set_current_line(171, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3092);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    goto LAB8;

}

static void Always_179_2(char *t0)
{
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
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 3996U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(179, ng0);
    t2 = (t0 + 4208);
    *((int *)t2) = 1;
    t3 = (t0 + 4024);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(179, ng0);

LAB5:    xsi_set_current_line(181, ng0);

LAB6:    xsi_set_current_line(182, ng0);
    t4 = (t0 + 3092);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);

LAB7:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB20;

LAB21:
LAB22:    goto LAB2;

LAB8:    xsi_set_current_line(184, ng0);

LAB23:    xsi_set_current_line(186, ng0);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 2632);
    xsi_vlogvar_wait_assign_value(t10, t9, 0, 0, 1, 0LL);
    xsi_set_current_line(188, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2816);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(189, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2908);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(190, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(192, ng0);
    t2 = (t0 + 932U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB24;

LAB25:
LAB26:    xsi_set_current_line(196, ng0);
    t2 = (t0 + 1116U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(198, ng0);

LAB32:    xsi_set_current_line(199, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3184);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB30:    goto LAB22;

LAB10:    xsi_set_current_line(203, ng0);

LAB33:    xsi_set_current_line(206, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2816);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(208, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(210, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3184);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB22;

LAB12:    xsi_set_current_line(214, ng0);

LAB34:    xsi_set_current_line(217, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2816);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(219, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(221, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3184);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB22;

LAB14:    xsi_set_current_line(228, ng0);

LAB35:    xsi_set_current_line(230, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2632);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(232, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2816);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(233, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2908);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(234, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(235, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 3184);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB22;

LAB16:    xsi_set_current_line(239, ng0);

LAB36:    xsi_set_current_line(240, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2632);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(241, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2724);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(242, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2816);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(243, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2908);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(246, ng0);
    t2 = (t0 + 2404U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(248, ng0);

LAB41:    xsi_set_current_line(249, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 3184);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB39:    goto LAB22;

LAB18:    xsi_set_current_line(255, ng0);

LAB42:    xsi_set_current_line(256, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2632);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(257, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2724);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(258, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2816);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(259, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2908);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(260, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(263, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3184);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB22;

LAB20:    xsi_set_current_line(267, ng0);

LAB43:    xsi_set_current_line(269, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2632);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(270, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2724);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(271, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2816);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(272, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2908);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(273, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(275, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3184);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB22;

LAB24:    xsi_set_current_line(192, ng0);

LAB27:    xsi_set_current_line(193, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 2724);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    goto LAB26;

LAB28:    xsi_set_current_line(196, ng0);

LAB31:    xsi_set_current_line(197, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t0 + 3184);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    goto LAB30;

LAB37:    xsi_set_current_line(246, ng0);

LAB40:    xsi_set_current_line(247, ng0);
    t4 = ((char*)((ng8)));
    t5 = (t0 + 3184);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    goto LAB39;

}


extern void work_m_00000000003102580287_2153050886_init()
{
	static char *pe[] = {(void *)Cont_76_0,(void *)Always_168_1,(void *)Always_179_2};
	xsi_register_didat("work_m_00000000003102580287_2153050886", "isim/image_fsm_test_isim_beh.exe.sim/work/m_00000000003102580287_2153050886.didat");
	xsi_register_executes(pe);
}
