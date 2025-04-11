
#[[ $@ -gt 1 ]] || echo "USAGE: $0 <util> <flags>" && exit 1

export RBIN_PATH="$PWD/binr/"
export LD_LIBRARY_PATH="$PWD/libr/main/:$PWD/libr/config/:$PWD/libr/cons/:$PWD/libr/io/:$PWD/libr/util/:$PWD/libr/flag/:$PWD/libr/asm/:$PWD/libr/core/:$PWD/libr/arch/:$PWD/libr/debug/:$PWD/libr/bin/:$PWD/libr/anal/:$PWD/libr/bp/:$PWD/libr/egg/:$PWD/libr/reg/:$PWD/libr/search/:$PWD/libr/syscall/:$PWD/libr/socket/:$PWD/libr/fs/:$PWD/libr/magic/:$PWD/libr/crypto/:$PWD/libr/esil:$PWD/libr/lang/"

for UTIL in radare2 rasm2; do
	export PATH="$PATH:${RBIN_PATH}/${UTIL}/"
done

[ -z "${1}" ] && "Usage $0 <util>" && exit 1

if [ -e "${RBIN_PATH}/${1}/${1}" ]; then
	UTIL=$1
	shift
	${RBIN_PATH}/${UTIL}/${UTIL} "$@"
else
	bash -x "$@"
fi


