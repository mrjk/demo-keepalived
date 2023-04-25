
PRJ_DIR=$(git rev-parse --show-toplevel)

export ANSIBLE_HOME=$PRJ_DIR
export ANSIBLE_GALAXY_CACHE_DIR=$PRJ_DIR/tmp/galaxy_cache
export ANSIBLE_GALAXY_TOKEN_PATH=$PRJ_DIR/tmp/galaxy_token
export ANSIBLE_PERSISTENT_CONTROL_PATH_DIR=$PRJ_DIR/tmp/pc
export ANSIBLE_DEFAULT_LOCAL_TMP=$PRJ_DIR/tmp
. $PRJ_DIR/.venv/bin/activate
