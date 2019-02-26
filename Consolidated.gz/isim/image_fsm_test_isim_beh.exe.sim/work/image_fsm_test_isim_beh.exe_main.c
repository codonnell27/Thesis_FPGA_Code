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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    unisims_ver_m_00000000002825692851_1489144173_init();
    work_m_00000000000221004521_1139322371_init();
    work_m_00000000000653940550_2669742355_init();
    work_m_00000000001649615911_3808141324_init();
    work_m_00000000002385715812_0691271365_init();
    work_m_00000000002037744401_2153050886_init();
    work_m_00000000001837996822_0365043305_init();
    work_m_00000000000505475693_3437558658_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000505475693_3437558658");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
