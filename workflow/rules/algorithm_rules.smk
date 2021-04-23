rule glasso:
    input:
        data = alg_input_data(),
        glasso="workflow/scripts/glasso.py"
    output:
        adjmat = alg_output_adjmat_path("glasso"),
        time = alg_output_time_path("glasso")
    singularity:
        docker_image("pydatascience")
    message:
        "Executing glasso algorithm on the following files: {input}."
    script:
        "../scripts/glasso.py"
    #shell:
    #    alg_shell("glasso")

rule summarise_glasso:
    input:
        "workflow/scripts/run_summarise.R",
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("glasso"),
        time = summarise_alg_input_time_path("glasso")
    output:
        res = summarise_alg_output_res_path("glasso")
    message:
        "Summarising glasso results based on the files: {input}."
    shell:
        summarise_alg_shell("glasso")
       
rule join_summaries_glasso:
    input:
        conf=configfilename,
        res=join_string_sampled_model("glasso")
    output:
        join_summaries_output("glasso")
    script:
        "../scripts/join_csv_files.R"


rule greenthomas:
    input:
        data = alg_input_data()
    output:
        adjmat = alg_output_adjmat_path("greenthomas"),
        time = alg_output_time_path("greenthomas")
    singularity:
        docker_image("thomasjava")
    message:
        "Executing greenthomas algorithm on the following files: {input}."
    shell:
        alg_shell("greenthomas")

rule summarise_greenthomas:
    input:
        "workflow/scripts/run_summarise.R",
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("greenthomas"),
        time = summarise_alg_input_time_path("greenthomas")
    output:
        res = summarise_alg_output_res_path("greenthomas")
    message:
        "Summarising greenthomas results based on the files: {input}."
    shell:
        summarise_alg_shell("greenthomas")
       
rule join_summaries_greenthomas:
    input:
        conf=configfilename,
        res=join_string_sampled_model("greenthomas")
    output:
        join_summaries_output("greenthomas")
    script:
        "../scripts/join_csv_files.R"

rule gg_singlepair:
    input:
        data = alg_input_data()
    output:
        adjmat = alg_output_adjmat_path("gg_singlepair"),
        time = alg_output_time_path("gg_singlepair")
    singularity:
        docker_image("thomasjava")
    message:
        "Executing gg_singlepair algorithm on the following files: {input}."
    shell:
        alg_shell("gg_singlepair")


rule summarise_gg_singlepair:
    input:
        "workflow/scripts/run_summarise.R",
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("gg_singlepair"),
        time = summarise_alg_input_time_path("gg_singlepair")
    output:
        res = summarise_alg_output_res_path("gg_singlepair")
    message:
        "Summarising gg_singlepair results based on the files: {input}."
    shell:
        summarise_alg_shell("gg_singlepair")
       
rule join_summaries_gg_singlepair:
    input:
        conf=configfilename,
        res=join_string_sampled_model("gg_singlepair")
    output:
        join_summaries_output("gg_singlepair")
    script:
        "../scripts/join_csv_files.R"

rule tabu:
    input:
        data = alg_input_data()
    output:
        adjmat = alg_output_adjmat_path("tabu"),
        time = alg_output_time_path("tabu")
    message:
        "Executing tabu algorithm on the following files: {input}."
    shell:
        alg_shell("tabu")

rule summarise_tabu:
    input:
        "workflow/scripts/run_summarise.R",
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("tabu"),
        time = summarise_alg_input_time_path("tabu")
    output:
        res = summarise_alg_output_res_path("tabu")
    message:
        "Summarising tabu results based on the files: {input}."
    shell:
        summarise_alg_shell("tabu")
       
rule join_summaries_tabu:
    input:
        conf=configfilename,
        res=join_string_sampled_model("tabu")
    output:
        join_summaries_output("tabu")
    script:
        "../scripts/join_csv_files.R"

rule notears:
    input:
        data = alg_input_data()
    output:
        adjmat = alg_output_adjmat_path("notears"),
        time = alg_output_time_path("notears")
    singularity:
        docker_image("notears")
    message:
        "Executing notears algorithm on the following files: {input}."
    shell:
        alg_shell("notears")

rule summarise_notears:
    input:
        "workflow/scripts/run_summarise.R",
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("notears"),
        time = summarise_alg_input_time_path("notears")
    output:
        res = summarise_alg_output_res_path("notears")
    message:
        "Summarising notears results based on the files: {input}."
    shell:
        summarise_alg_shell("notears")
       
rule join_summaries_notears:
    input:
        conf=configfilename,
        res=join_string_sampled_model("notears")
    output:
        join_summaries_output("notears")
    script:
        "../scripts/join_csv_files.R"

rule hc:
    input:
        data = alg_input_data()
    output:
        adjmat = alg_output_adjmat_path("hc"),
        time = alg_output_time_path("hc")
    message:
        "Executing hc algorithm on the following files: {input}."
    shell:
        alg_shell("hc")

rule summarise_hc:
    input:
        "workflow/scripts/run_summarise.R",
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("hc"),
        time = summarise_alg_input_time_path("hc")
    output:
        res = summarise_alg_output_res_path("hc")
    message:
        "Summarising hc results based on the files: {input}."
    shell:
        summarise_alg_shell("hc")
       
rule join_summaries_hc:
    input:
        conf=configfilename,
        res=join_string_sampled_model("hc")
    output:
        join_summaries_output("hc")
    script:
        "../scripts/join_csv_files.R"

rule interiamb:
    input:
        data = alg_input_data()
    output:
        adjmat = alg_output_adjmat_path("interiamb"),
        time = alg_output_time_path("interiamb")
    message:
        "Executing interiamb algorithm on the following files: {input}."
    script:
        "../scripts/run_inter-iamb.R"
    #shell:
    #    alg_shell("interiamb")

rule summarise_interiamb:
    input:
        "workflow/scripts/run_summarise.R",
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("interiamb"),
        time = summarise_alg_input_time_path("interiamb")
    output:
        res = summarise_alg_output_res_path("interiamb")
    message:
        "Summarising interiamb results based on the files: {input}."
    shell:
        summarise_alg_shell("interiamb")
       
rule join_summaries_interiamb:
    input:
        conf=configfilename,
        res=join_string_sampled_model("interiamb")
    output:
        join_summaries_output("interiamb")
    script:
        "../scripts/join_csv_files.R"

rule gs:
    input:
        data = alg_input_data()
    output:
        adjmat = alg_output_adjmat_path("gs"),
        time = alg_output_time_path("gs")
    message:
        "Executing gs algorithm on the following files: {input}."
    script:
        "../scripts/run_gs.R"
#    shell:
#        alg_shell("gs")

rule summarise_gs:
    input:
        "workflow/scripts/run_summarise.R",
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("gs"),
        time = summarise_alg_input_time_path("gs")
    output:
        res = summarise_alg_output_res_path("gs")
    message:
        "Summarising gs results based on the files: {input}."
    shell:
        summarise_alg_shell("gs")
       
rule join_summaries_gs:
    input:
        conf=configfilename,
        res=join_string_sampled_model("gs")
    output:
        join_summaries_output("gs")
    script:
        "../scripts/join_csv_files.R"

rule blip:
    input:
        data = alg_input_data()
    output:
        adjmat = alg_output_adjmat_path("blip"),
        time = alg_output_time_path("blip")
    message:
        "Executing blip algorithm on the following files: {input}."
    shell:        
        alg_shell("blip")

rule summarise_blip:
    input:
        "workflow/scripts/run_summarise.R",
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("blip"),
        time = summarise_alg_input_time_path("blip")
    output:
        res = summarise_alg_output_res_path("blip")
    message:
        "Summarising blip results based on the files: {input}."
    shell:
        summarise_alg_shell("blip")

rule join_summaries_blip:
    input:
        conf=configfilename,
        res=join_string_sampled_model("blip")
    output:
        join_summaries_output("blip")
    script:
        "../scripts/join_csv_files.R"

rule itsearch:
    input:
        "workflow/scripts/run_iterative_search.R",
        data = alg_input_data(),
    output:
        adjmat = alg_output_adjmat_path("itsearch"),
        time = alg_output_time_path("itsearch")
    message:
        "Executing iterative search algorithm with wildcards {wildcards} on the following data: {input}"
    singularity:
        docker_image("bidag")
    script:
        "../scripts/run_iterative_search.R"

rule summarise_itsearch:
    input:
        "workflow/scripts/run_summarise.R",
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("itsearch"),
        time = summarise_alg_input_time_path("itsearch")
    output:
        res = summarise_alg_output_res_path("itsearch")
    message:
        "Summarising iterative search algorithm with wildcards: {wildcards} on the following files: {input}"
    shell:
        summarise_alg_shell("itsearch")

rule join_summaries_itsearch:
    input:
        conf=configfilename,
        res=join_string_sampled_model("itsearch")
    output:
        join_summaries_output("itsearch")
    script:
        "../scripts/join_csv_files.R"

rule pcalg:
    input:
        data = alg_input_data()
    output:
        adjmat = alg_output_adjmat_path("pcalg"),
        time = alg_output_time_path("pcalg")
    message:
        "Executing order PC algorithm on the following files: {input}."
    script:
        "../scripts/run_pcalg.R"

rule summarise_pcalg:
    input:
        "workflow/scripts/run_summarise.R",
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("pcalg"),
        time = summarise_alg_input_time_path("pcalg")
    output:
        res = summarise_alg_output_res_path("pcalg")
    message:
        "Summarising pc algorithm based on the following files: {input}."
    shell:
        summarise_alg_shell("pcalg")

rule join_summaries_pcalg:
    input:
        conf=configfilename,
        res=join_string_sampled_model("pcalg")
    output:
        join_summaries_output("pcalg")
    script:
        "../scripts/join_csv_files.R"

rule mmhc:
    input:        
        data = alg_input_data()
    output:
        adjmat = alg_output_adjmat_path("mmhc"),
        time = alg_output_time_path("mmhc")
    message:
        "Executing the mmhc algorithm on the following files: {input}."
    script:
        "../scripts/run_mmhc.R"

rule summarise_mmhc:
    input:
        "workflow/scripts/run_summarise.R",
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("mmhc"),
        time = summarise_alg_input_time_path("mmhc")
    output:
        res = summarise_alg_output_res_path("mmhc")
    shell:
       summarise_alg_shell("mmhc")

rule join_summaries_mmhc:
    input:
        conf=configfilename,
        res=join_string_sampled_model("mmhc")
    output:
        join_summaries_output("mmhc")  
    script:
        "../scripts/join_csv_files.R"

rule gobnilp:
    input:
        data = alg_input_data()
    output:
        adjmat = alg_output_adjmat_path("gobnilp"),
        time = alg_output_time_path("gobnilp")
    singularity:
        docker_image("gobnilp")        
    shell: 
        alg_shell("gobnilp")

rule summarise_gobnilp:
    input:
        "workflow/scripts/run_summarise.R",
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("gobnilp"),
        time = summarise_alg_input_time_path("gobnilp")
    output:
        res = summarise_alg_output_res_path("gobnilp")
    shell:
        summarise_alg_shell("gobnilp")

rule join_summaries_gobnilp:
    input:
        conf=configfilename,
        res=join_string_sampled_model("gobnilp")
    output:
        join_summaries_output("gobnilp")
    script:
        "../scripts/join_csv_files.R"

rule fges:
    input:
        data = alg_input_data()
    output:
        adjmat = alg_output_adjmat_path("fges"), # maybe fges-cont...
        time = alg_output_time_path("fges") # maybe fges-cont...
    message:
        "Executing fges algorithm on the following files: {input}."
    script:
        "../scripts/run_fges.py"
    #shell:
    #    alg_shell("fges") # maybe fges-cont...

rule summarise_fges:
    input:
        "workflow/scripts/run_summarise.R",
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("fges"),
        time = summarise_alg_input_time_path("fges")
    output:
        res = summarise_alg_output_res_path("fges")
    message:
        "Summarising fges results based on the files: {input}."
    shell:
        summarise_alg_shell("fges")

rule join_summaries_fges:
    input:
        conf=configfilename,
        res=join_string_sampled_model("fges")
    output:
        join_summaries_output("fges")
    script:
        "../scripts/join_csv_files.R"

rule fci:
    input:
        data = alg_input_data()
    output:
        adjmat = alg_output_adjmat_path("fci"),
        time = alg_output_time_path("fci")
    message:
        "Executing fci algorithm on the following files: {input}."
    script:
        "../scripts/run_fci.py"

rule summarise_fci:
    input:
        "workflow/scripts/run_summarise.R",
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("fci"),
        time = summarise_alg_input_time_path("fci")
    output:
        res = summarise_alg_output_res_path("fci")
    message:
        "Summarising fci results based on the files: {input}."
    shell:
        summarise_alg_shell("fci")

rule join_summaries_fci:
    input: # This could be a funciton since no pattern mathing is going on here
        conf=configfilename,
        res=join_string_sampled_model("fci")
    output:
        join_summaries_output("fci")
    script:
        "../scripts/join_csv_files.R"

rule gfci:
    input:
        data = alg_input_data()
    output:
        adjmat = alg_output_adjmat_path("gfci"),
        time = alg_output_time_path("gfci")
    message:
        "Executing gfci algorithm on the following files: {input}."
    #shell:
    #    alg_shell("gfci")
    script:
        "../scripts/run_gfci.py"
        
rule summarise_gfci:
    input:
        "workflow/scripts/run_summarise.R",
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("gfci"),
        time = summarise_alg_input_time_path("gfci")
    output:
        res = summarise_alg_output_res_path("gfci")
    message:
        "Summarising gfci results based on the files: {input}."
    shell:
        summarise_alg_shell("gfci")

rule join_summaries_gfci:
    input: # This could be a funciton since no pattern mathing is going on here
        conf=configfilename,
        res=join_string_sampled_model("gfci")
    output:
        join_summaries_output("gfci")
    script:
        "../scripts/join_csv_files.R"

rule rfci:
    input:
        data = alg_input_data()
    output:
        adjmat = alg_output_adjmat_path("rfci"),
        time = alg_output_time_path("rfci")
    message:
        "Executing rfci algorithm on the following files: {input}."
    shell:
        alg_shell("rfci")

rule summarise_rfci:
    input:
        data = summarise_alg_input_data_path(),
        adjmat_true = summarise_alg_input_adjmat_true_path(),
        adjmat_est = summarise_alg_input_adjmat_est_path("rfci"),
        time = summarise_alg_input_time_path("rfci")
    output:
        res = summarise_alg_output_res_path("rfci")
    message:
        "Summarising rfci results based on the files: {input}."
    shell:
        summarise_alg_shell("rfci")

rule join_summaries_rfci:
    input: # This could be a funciton since no pattern mathing is going on here
        conf=configfilename,
        res=join_string_sampled_model("rfci")
    output:
        join_summaries_output("rfci")
    script:
        "../scripts/join_csv_files.R"

rule order_mcmc:
    input:
        "workflow/scripts/run_order_mcmc.R",
        data = alg_input_data(),
        startspace = "{output_dir}/adjmat_estimate/{data}/algorithm=/{startspace_algorithm}/seed={replicate}/adjmat.csv"
    output:
        #adjvecs = alg_output_adjvecs_path("order_mcmc"),
        seqgraph = alg_output_seqgraph_path("order_mcmc"),
        time = alg_output_time_path("order_mcmc")
    message:
        "Executing order mcmc algorithm with startspace on the following files: {input}.\n Output: {output}"
    singularity:
        docker_image("bidag")
    script:
        "../scripts/run_order_mcmc.R"

# rule order_mcmc_est:
#     input:
#         "workflow/scripts/run_order_mcmc.R",
#         seqgraph = alg_output_seqgraph_path("order_mcmc")
#     output:
#         #adjmat = alg_output_adjmat_path("order_mcmc"),
#         adjmat_est = adjmat_estimate_path_mcmc("order_mcmc")
#     singularity:
#         docker_image("trilearn")
#     script:
#         "../scripts/est_from_graphseq.py"

rule summarise_order_mcmc:
    input:
        "workflow/scripts/run_summarise.R",
        data = data_path(),
        adjmat_true = adjmat_true_path(),
        adjmat_est = adjmat_estimate_path_mcmc("order_mcmc"),
        time = time_path("order_mcmc")
    output:
        res = result_path_mcmc("order_mcmc")
    message:
        "Summarizing order mcmc algorithm with startspace on the following files: {input}."
    shell: 
        summarise_alg_shell("order_mcmc")

rule join_summaries_order_mcmc:
    input: 
        conf=configfilename,
        res=join_string_sampled_model("order_mcmc")
    output:
        join_summaries_output("order_mcmc")
    script:
        "../scripts/join_csv_files.R"

rule trilearn_loglin:
    input:
        data=alg_input_data()
    output:
        adjvecs = alg_output_seqgraph_path("trilearn_loglin"),
        time = alg_output_time_path("trilearn_loglin")
    message:
        "Executing trilearn algorithm on the following files: {input}, output: {output}. wildcards {wildcards}"
    singularity:
        docker_image("trilearn_loglin")
    shell:
        alg_shell("trilearn_loglin")

rule summarise_trilearn_loglin:
    input:
        "workflow/scripts/run_summarise.R",
        data = data_path(),
        adjmat_true = adjmat_true_path(),
        adjmat_est = adjmat_estimate_path_mcmc("trilearn_loglin"),
        time = time_path("trilearn_loglin")
    output:
        res = result_path_mcmc("trilearn_loglin")
    message:
        "Summarizing trilearn algorithm with startspace on the following files: {input}, output: {output}."
    shell: 
        summarise_alg_shell("trilearn_loglin")

rule join_summaries_trilearn_loglin:
    input: 
        conf=configfilename,
        res=join_string_sampled_model("trilearn_loglin")
    output:
        join_summaries_output("trilearn_loglin")
    message:
        "Input: {input}"
    script:
        "../scripts/join_csv_files.R"

rule gg_singlepair_fortran:
    input:
        data = alg_input_data()
    output:
        adjvecs = alg_output_seqgraph_path("gg_singlepair_fortran"),
        time = alg_output_time_path("gg_singlepair_fortran")
    singularity:
        docker_image("greenfortran")
    shell:
        alg_shell("gg_singlepair_fortran")