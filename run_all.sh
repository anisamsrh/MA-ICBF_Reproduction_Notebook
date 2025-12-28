#!/bin/bash
curl -s -X POST https://api.telegram.org/bot[BOT_ID]/sendMessage -d chat_id=[USER_ID] -d chat_id=1143555876 -d text="Batch Eval : Job Start!"

# Empty
python eval.py --env Empty --num_agents 4 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1
python eval.py --env Empty --num_agents 8 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1
python eval.py --env Empty --num_agents 16 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1
python eval.py --env Empty --num_agents 32 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1
python eval.py --env Empty --num_agents 64 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1
python eval.py --env Empty --num_agents 128 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1
python eval.py --env Empty --num_agents 256 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1
python eval.py --env Empty --num_agents 512 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1
python eval.py --env Empty --num_agents 1024 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1

# Maze
python eval.py --env Maze --num_agents 4 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1
python eval.py --env Maze --num_agents 8 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1
python eval.py --env Maze --num_agents 16 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1
python eval.py --env Maze --num_agents 32 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1
python eval.py --env Maze --num_agents 64 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1
python eval.py --env Maze --num_agents 128 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1
python eval.py --env Maze --num_agents 256 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1
python eval.py --env Maze --num_agents 512 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1
python eval.py --env Maze --num_agents 1024 --model_path ~/Documents/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999 --vis 1

wait
echo "All done!"
echo "Start to upload data to bucket"

source ~/openrc.sh 
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Empty_4_agents.csv --object-name 'summary_Empty_4_agents.csv' 
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Empty_8_agents.csv --object-name 'summary_Empty_8_agents.csv'
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Empty_16_agents.csv --object-name 'summary_Empty_16_agents.csv'
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Empty_32_agents.csv --object-name 'summary_Empty_32_agents.csv'
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Empty_64_agents.csv --object-name 'summary_Empty_64_agents.csv'
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Empty_128_agents.csv --object-name 'summary_Empty_128_agents.csv'
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Empty_256_agents.csv --object-name 'summary_Empty_256_agents.csv'
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Empty_512_agents.csv --object-name 'summary_Empty_512_agents.csv'
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Empty_1024_agents.csv --object-name 'summary_Empty_1024_agents.csv'


swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Maze_4_agents.csv --object-name 'summary_Maze_4_agents.csv'
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Maze_8_agents.csv --object-name 'summary_Maze_8_agents.csv'
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Maze_16_agents.csv --object-name 'summary_Maze_16_agents.csv'
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Maze_32_agents.csv --object-name 'summary_Maze_32_agents.csv'
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Maze_64_agents.csv --object-name 'summary_Maze_64_agents.csv'
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Maze_128_agents.csv --object-name 'summary_Maze_128_agents.csv'
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Maze_256_agents.csv --object-name 'summary_Maze_256_agents.csv'
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Maze_512_agents.csv --object-name 'summary_Maze_512_agents.csv'
swift upload maicbf ~/Documents/maicbf/csv_data/metrics_summary/summary_Maze_1024_agents.csv --object-name 'summary_Maze_1024_agents.csv'


wait
echo "All done!"

curl -s -X POST https://api.telegram.org/bot[BOT_ID]/sendMessage -d chat_id=[USER_ID] -d text="Batch Eval : Job Done!"