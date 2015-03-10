#define DEF(x,y) x=y

#ifdef mingw32_HOST_OS
# define MINGW_NUM(x) mingwNum = x+3
#endif

#ifdef linux_HOST_OS
# define LINUX_NUM(x) linuxNum = x+3
#endif
