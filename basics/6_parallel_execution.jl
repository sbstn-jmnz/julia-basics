# Julia supports execution in parallel natively using asynchronous Tasks
# or coroutines 

# Tasks are lightweight threads (fibres in rb) that don't block the main thread
# They can be start, stop, pause and resume. They can cooperate in a producer/consumer pattern
# in one-way communication channel implemented with queues

# Arrays can be processed in parallel (Multiple cores or GPUs)

