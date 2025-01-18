# Default parameters
PROBLEM = simple
SAVE_PATH = ./${PROBLEM}

train-quadratic-settings: clean
	python train.py \
		--problem=${PROBLEM} \
		--save_path=${SAVE_PATH} \
		--num_steps=100 \
		--unroll_length=20 \
		--num_epochs=1000 \
		--log_period=100 \
		--evaluation_period=100 \
		--evaluation_epochs=20 \

clean:
	rm -rf ${SAVE_PATH}