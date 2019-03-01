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
static const char *ng0 = "//vmware-host/Shared Folders/VM_Shared_folder/Thesis/Consolidated.gz/image_transmit_fsm.v";
static unsigned int ng1[] = {7U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {3U, 0U};



static void Always_66_0(char *t0)
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

LAB0:    t1 = (t0 + 4296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 4636);
    *((int *)t2) = 1;
    t3 = (t0 + 4324);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(66, ng0);

LAB5:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(70, ng0);

LAB10:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3220);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3128);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(68, ng0);

LAB9:    xsi_set_current_line(69, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3128);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    goto LAB8;

}

static void Always_77_1(char *t0)
{
    char t11[8];
    char t25[8];
    char t42[8];
    char t88[8];
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
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    char *t87;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    char *t103;

LAB0:    t1 = (t0 + 4440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 4644);
    *((int *)t2) = 1;
    t3 = (t0 + 4468);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(77, ng0);

LAB5:    xsi_set_current_line(79, ng0);

LAB6:    xsi_set_current_line(80, ng0);
    t4 = (t0 + 3128);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);

LAB7:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB16;

LAB17:
LAB18:    goto LAB2;

LAB8:    xsi_set_current_line(82, ng0);

LAB19:    xsi_set_current_line(83, ng0);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 2944);
    xsi_vlogvar_wait_assign_value(t10, t9, 0, 0, 1, 0LL);
    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3404);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3588);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3772);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1336U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t3 + 4);
    t12 = *((unsigned int *)t2);
    t13 = (~(t12));
    t14 = *((unsigned int *)t3);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB23;

LAB21:    if (*((unsigned int *)t2) == 0)
        goto LAB20;

LAB22:    t4 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t4) = 1;

LAB23:    t5 = (t11 + 4);
    t7 = (t3 + 4);
    t17 = *((unsigned int *)t3);
    t18 = (~(t17));
    *((unsigned int *)t11) = t18;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t7) != 0)
        goto LAB25;

LAB24:    t23 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t23 & 1U);
    t24 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t24 & 1U);
    t9 = (t0 + 1520U);
    t10 = *((char **)t9);
    memset(t25, 0, 8);
    t9 = (t10 + 4);
    t26 = *((unsigned int *)t9);
    t27 = (~(t26));
    t28 = *((unsigned int *)t10);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB29;

LAB27:    if (*((unsigned int *)t9) == 0)
        goto LAB26;

LAB28:    t31 = (t25 + 4);
    *((unsigned int *)t25) = 1;
    *((unsigned int *)t31) = 1;

LAB29:    t32 = (t25 + 4);
    t33 = (t10 + 4);
    t34 = *((unsigned int *)t10);
    t35 = (~(t34));
    *((unsigned int *)t25) = t35;
    *((unsigned int *)t32) = 0;
    if (*((unsigned int *)t33) != 0)
        goto LAB31;

LAB30:    t40 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t40 & 1U);
    t41 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t41 & 1U);
    t43 = *((unsigned int *)t11);
    t44 = *((unsigned int *)t25);
    t45 = (t43 & t44);
    *((unsigned int *)t42) = t45;
    t46 = (t11 + 4);
    t47 = (t25 + 4);
    t48 = (t42 + 4);
    t49 = *((unsigned int *)t46);
    t50 = *((unsigned int *)t47);
    t51 = (t49 | t50);
    *((unsigned int *)t48) = t51;
    t52 = *((unsigned int *)t48);
    t53 = (t52 != 0);
    if (t53 == 1)
        goto LAB32;

LAB33:
LAB34:    t73 = (t42 + 4);
    t74 = *((unsigned int *)t73);
    t75 = (~(t74));
    t76 = *((unsigned int *)t42);
    t77 = (t76 & t75);
    t78 = (t77 != 0);
    if (t78 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(104, ng0);

LAB49:    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3220);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB37:    goto LAB18;

LAB10:    xsi_set_current_line(111, ng0);

LAB50:    xsi_set_current_line(112, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2944);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3312);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3404);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 1428U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t12 = *((unsigned int *)t2);
    t13 = (~(t12));
    t14 = *((unsigned int *)t3);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(120, ng0);

LAB55:    xsi_set_current_line(121, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3220);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB53:    goto LAB18;

LAB12:    xsi_set_current_line(126, ng0);

LAB56:    xsi_set_current_line(129, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3404);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3588);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 1520U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t12 = *((unsigned int *)t2);
    t13 = (~(t12));
    t14 = *((unsigned int *)t3);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB57;

LAB58:    xsi_set_current_line(136, ng0);

LAB61:    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3220);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB59:    goto LAB18;

LAB14:    xsi_set_current_line(142, ng0);

LAB62:    xsi_set_current_line(146, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3588);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(150, ng0);
    t2 = (t0 + 1796U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t12 = *((unsigned int *)t2);
    t13 = (~(t12));
    t14 = *((unsigned int *)t3);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB63;

LAB64:    xsi_set_current_line(152, ng0);

LAB67:    xsi_set_current_line(153, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3220);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(154, ng0);
    t2 = (t0 + 3772);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t4, 4, t5, 32);
    t7 = (t0 + 3772);
    xsi_vlogvar_wait_assign_value(t7, t11, 0, 0, 4, 0LL);

LAB65:    goto LAB18;

LAB16:    xsi_set_current_line(159, ng0);

LAB68:    xsi_set_current_line(164, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(165, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3588);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(168, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t12 = *((unsigned int *)t2);
    t13 = (~(t12));
    t14 = *((unsigned int *)t3);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB69;

LAB70:    xsi_set_current_line(174, ng0);

LAB83:    xsi_set_current_line(175, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3220);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB71:    goto LAB18;

LAB20:    *((unsigned int *)t11) = 1;
    goto LAB23;

LAB25:    t19 = *((unsigned int *)t11);
    t20 = *((unsigned int *)t7);
    *((unsigned int *)t11) = (t19 | t20);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    *((unsigned int *)t5) = (t21 | t22);
    goto LAB24;

LAB26:    *((unsigned int *)t25) = 1;
    goto LAB29;

LAB31:    t36 = *((unsigned int *)t25);
    t37 = *((unsigned int *)t33);
    *((unsigned int *)t25) = (t36 | t37);
    t38 = *((unsigned int *)t32);
    t39 = *((unsigned int *)t33);
    *((unsigned int *)t32) = (t38 | t39);
    goto LAB30;

LAB32:    t54 = *((unsigned int *)t42);
    t55 = *((unsigned int *)t48);
    *((unsigned int *)t42) = (t54 | t55);
    t56 = (t11 + 4);
    t57 = (t25 + 4);
    t58 = *((unsigned int *)t11);
    t59 = (~(t58));
    t60 = *((unsigned int *)t56);
    t61 = (~(t60));
    t62 = *((unsigned int *)t25);
    t63 = (~(t62));
    t64 = *((unsigned int *)t57);
    t65 = (~(t64));
    t8 = (t59 & t61);
    t66 = (t63 & t65);
    t67 = (~(t8));
    t68 = (~(t66));
    t69 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t69 & t67);
    t70 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t70 & t68);
    t71 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t71 & t67);
    t72 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t72 & t68);
    goto LAB34;

LAB35:    xsi_set_current_line(91, ng0);

LAB38:    xsi_set_current_line(92, ng0);
    t79 = (t0 + 784U);
    t80 = *((char **)t79);
    t79 = (t80 + 4);
    t81 = *((unsigned int *)t79);
    t82 = (~(t81));
    t83 = *((unsigned int *)t80);
    t84 = (t83 & t82);
    t85 = (t84 != 0);
    if (t85 > 0)
        goto LAB39;

LAB40:    xsi_set_current_line(100, ng0);

LAB48:    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3220);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB41:    goto LAB37;

LAB39:    xsi_set_current_line(92, ng0);

LAB42:    xsi_set_current_line(93, ng0);
    t86 = (t0 + 1888U);
    t87 = *((char **)t86);
    memset(t88, 0, 8);
    t86 = (t88 + 4);
    t89 = (t87 + 4);
    t90 = *((unsigned int *)t87);
    t91 = (t90 >> 4);
    t92 = (t91 & 1);
    *((unsigned int *)t88) = t92;
    t93 = *((unsigned int *)t89);
    t94 = (t93 >> 4);
    t95 = (t94 & 1);
    *((unsigned int *)t86) = t95;
    t96 = (t88 + 4);
    t97 = *((unsigned int *)t96);
    t98 = (~(t97));
    t99 = *((unsigned int *)t88);
    t100 = (t99 & t98);
    t101 = (t100 != 0);
    if (t101 > 0)
        goto LAB43;

LAB44:    xsi_set_current_line(96, ng0);

LAB47:    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3220);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB45:    goto LAB41;

LAB43:    xsi_set_current_line(93, ng0);

LAB46:    xsi_set_current_line(94, ng0);
    t102 = ((char*)((ng5)));
    t103 = (t0 + 3220);
    xsi_vlogvar_wait_assign_value(t103, t102, 0, 0, 3, 0LL);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3036);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB45;

LAB51:    xsi_set_current_line(118, ng0);

LAB54:    xsi_set_current_line(119, ng0);
    t4 = ((char*)((ng5)));
    t5 = (t0 + 3220);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    goto LAB53;

LAB57:    xsi_set_current_line(134, ng0);

LAB60:    xsi_set_current_line(135, ng0);
    t4 = ((char*)((ng7)));
    t5 = (t0 + 3220);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    goto LAB59;

LAB63:    xsi_set_current_line(150, ng0);

LAB66:    xsi_set_current_line(151, ng0);
    t4 = ((char*)((ng7)));
    t5 = (t0 + 3220);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    goto LAB65;

LAB69:    xsi_set_current_line(168, ng0);

LAB72:    xsi_set_current_line(169, ng0);
    t4 = (t0 + 3772);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t9 = (t0 + 1888U);
    t10 = *((char **)t9);
    memset(t11, 0, 8);
    t9 = (t11 + 4);
    t31 = (t10 + 4);
    t17 = *((unsigned int *)t10);
    t18 = (t17 >> 0);
    *((unsigned int *)t11) = t18;
    t19 = *((unsigned int *)t31);
    t20 = (t19 >> 0);
    *((unsigned int *)t9) = t20;
    t21 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t21 & 15U);
    t22 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t22 & 15U);
    memset(t25, 0, 8);
    t32 = (t7 + 4);
    if (*((unsigned int *)t32) != 0)
        goto LAB74;

LAB73:    t33 = (t11 + 4);
    if (*((unsigned int *)t33) != 0)
        goto LAB74;

LAB77:    if (*((unsigned int *)t7) < *((unsigned int *)t11))
        goto LAB75;

LAB76:    t47 = (t25 + 4);
    t23 = *((unsigned int *)t47);
    t24 = (~(t23));
    t26 = *((unsigned int *)t25);
    t27 = (t26 & t24);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB78;

LAB79:    xsi_set_current_line(171, ng0);

LAB82:    xsi_set_current_line(172, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3220);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB80:    goto LAB71;

LAB74:    t46 = (t25 + 4);
    *((unsigned int *)t25) = 1;
    *((unsigned int *)t46) = 1;
    goto LAB76;

LAB75:    *((unsigned int *)t25) = 1;
    goto LAB76;

LAB78:    xsi_set_current_line(169, ng0);

LAB81:    xsi_set_current_line(170, ng0);
    t48 = ((char*)((ng5)));
    t56 = (t0 + 3220);
    xsi_vlogvar_wait_assign_value(t56, t48, 0, 0, 3, 0LL);
    goto LAB80;

}


extern void work_m_00000000002978604419_0365043305_init()
{
	static char *pe[] = {(void *)Always_66_0,(void *)Always_77_1};
	xsi_register_didat("work_m_00000000002978604419_0365043305", "isim/image_fsm_test_isim_beh.exe.sim/work/m_00000000002978604419_0365043305.didat");
	xsi_register_executes(pe);
}
