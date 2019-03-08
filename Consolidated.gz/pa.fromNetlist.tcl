
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name lab1_project -dir "Z:/VM_Shared_folder/Thesis/Consolidated.gz/planAhead_run_2" -part xc6slx45csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "Z:/VM_Shared_folder/Thesis/Consolidated.gz/main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {Z:/VM_Shared_folder/Thesis/Consolidated.gz} }
set_property target_constrs_file "atlys.ucf" [current_fileset -constrset]
add_files [list {atlys.ucf}] -fileset [get_property constrset [current_run]]
link_design
