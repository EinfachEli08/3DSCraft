# 0 "C:/Users/Elias/CLionProjects/3DSCraft/source/misc/Collision.c"
# 1 "C:\\Users\\Elias\\CLionProjects\\3DSCraft\\build//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "C:/Users/Elias/CLionProjects/3DSCraft/source/misc/Collision.c"
# 1 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Collision.h" 1
       

# 1 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stdbool.h" 1 3 4
# 4 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Collision.h" 2

# 1 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/VecMath.h" 1
       

# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/math.h" 1 3




# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 10 "C:/devkitPro/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 10 "C:/devkitPro/devkitARM/arm-none-eabi/include/newlib.h" 3
# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3
# 11 "C:/devkitPro/devkitARM/arm-none-eabi/include/newlib.h" 2 3
# 11 "C:/devkitPro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3
# 6 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 12 "C:/devkitPro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 14 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h" 1 3 4
# 145 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h" 3 4

# 145 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 214 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 329 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 425 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 436 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h" 3 4
} max_align_t;
# 15 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 1 3
# 45 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3
# 41 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 46 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3

# 1 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h" 1 3 4
# 48 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3
# 16 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h" 1 3 4
# 359 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 25 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_types.h" 1 3






typedef __int64_t _off_t;


typedef __int64_t _fpos_t;


typedef __uint32_t __ino_t;


typedef __uint32_t __dev_t;
# 28 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;
# 52 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef int __pid_t;







typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;
# 90 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;
# 131 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 147 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 158 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef long __daddr_t;



typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;







typedef __builtin_va_list __va_list;
# 17 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 35 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3




# 1 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stdint.h" 1 3 4
# 9 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stdint.h" 3 4
# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 13 "C:/devkitPro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
       
# 190 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
       
# 14 "C:/devkitPro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "C:/devkitPro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "C:/devkitPro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "C:/devkitPro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "C:/devkitPro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "C:/devkitPro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stdint.h" 2 3 4
# 6 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/lock.h" 2 3

typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

typedef uint32_t _COND_T;
# 27 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/lock.h" 3
static inline void __libc_lock_init(_LOCK_T *lock) {
        *lock = ((_LOCK_T)0);
}

static inline void __libc_lock_close(_LOCK_T *lock ) {}

static inline void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock) {
        *lock = ((_LOCK_RECURSIVE_T){((_LOCK_T)0),0,0});
}

static inline void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock ) {}

extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);


static inline int __libc_cond_init(_COND_T *cond) {
        *cond = ((_COND_T)0);
}

extern int __libc_cond_signal(_COND_T *cond);
extern int __libc_cond_broadcast(_COND_T *cond);
extern int __libc_cond_wait(_COND_T *cond, _LOCK_T *lock, uint64_t timeout_ns);
extern int __libc_cond_wait_recursive(_COND_T *cond, _LOCK_RECURSIVE_T *lock, uint64_t timeout_ns);
# 36 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
typedef _LOCK_RECURSIVE_T _flock_t;







struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 99 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 116 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 153 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 270 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



extern __FILE __sf[3];

struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};

extern struct _glue __sglue;
# 306 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 570 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];




  struct __locale_t *_locale;





  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {



          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
# 636 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
        } _reent;







    } _new;







  void (**_sig_func)(int);

  void *deviceData;
};
# 786 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;





extern struct _reent _impure_data ;





  struct _reent * __getreent (void);
# 904 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _atexit *__atexit;
extern struct _atexit __atexit0;

extern void (*__stdio_exit_handler) (void);

void _reclaim_reent (struct _reent *);

extern int _fwalk_sglue (struct _reent *, int (*)(struct _reent *, __FILE *),
    struct _glue *);
# 6 "C:/devkitPro/devkitARM/arm-none-eabi/include/math.h" 2 3

# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 8 "C:/devkitPro/devkitARM/arm-none-eabi/include/math.h" 2 3
# 1 "C:/devkitPro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 9 "C:/devkitPro/devkitARM/arm-none-eabi/include/math.h" 2 3


# 86 "C:/devkitPro/devkitARM/arm-none-eabi/include/math.h" 3
extern double atan (double);
extern double cos (double);
extern double sin (double);
extern double tan (double);
extern double tanh (double);
extern double frexp (double, int *);
extern double modf (double, double *);
extern double ceil (double);
extern double fabs (double);
extern double floor (double);






extern double acos (double);
extern double asin (double);
extern double atan2 (double, double);
extern double cosh (double);
extern double sinh (double);
extern double exp (double);
extern double ldexp (double, int);
extern double log (double);
extern double log10 (double);
extern double pow (double, double);
extern double sqrt (double);
extern double fmod (double, double);




extern int finite (double);
extern int finitef (float);
extern int finitel (long double);
extern int isinff (float);
extern int isnanf (float);





extern int isinf (double);




extern int isnan (double);
# 160 "C:/devkitPro/devkitARM/arm-none-eabi/include/math.h" 3
    typedef float float_t;
    typedef double double_t;
# 223 "C:/devkitPro/devkitARM/arm-none-eabi/include/math.h" 3
extern int __isinff (float);
extern int __isinfd (double);
extern int __isnanf (float);
extern int __isnand (double);
extern int __fpclassifyf (float);
extern int __fpclassifyd (double);
extern int __signbitf (float);
extern int __signbitd (double);
# 319 "C:/devkitPro/devkitARM/arm-none-eabi/include/math.h" 3
extern double infinity (void);
extern double nan (const char *);
extern double copysign (double, double);
extern double logb (double);
extern int ilogb (double);

extern double asinh (double);
extern double cbrt (double);
extern double nextafter (double, double);
extern double rint (double);
extern double scalbn (double, int);

extern double exp2 (double);
extern double scalbln (double, long int);
extern double tgamma (double);
extern double nearbyint (double);
extern long int lrint (double);
extern long long int llrint (double);
extern double round (double);
extern long int lround (double);
extern long long int llround (double);
extern double trunc (double);
extern double remquo (double, double, int *);
extern double fdim (double, double);
extern double fmax (double, double);
extern double fmin (double, double);
extern double fma (double, double, double);


extern double log1p (double);
extern double expm1 (double);



extern double acosh (double);
extern double atanh (double);
extern double remainder (double, double);
extern double gamma (double);
extern double lgamma (double);
extern double erf (double);
extern double erfc (double);
extern double log2 (double);





extern double hypot (double, double);






extern float atanf (float);
extern float cosf (float);
extern float sinf (float);
extern float tanf (float);
extern float tanhf (float);
extern float frexpf (float, int *);
extern float modff (float, float *);
extern float ceilf (float);
extern float fabsf (float);
extern float floorf (float);


extern float acosf (float);
extern float asinf (float);
extern float atan2f (float, float);
extern float coshf (float);
extern float sinhf (float);
extern float expf (float);
extern float ldexpf (float, int);
extern float logf (float);
extern float log10f (float);
extern float powf (float, float);
extern float sqrtf (float);
extern float fmodf (float, float);




extern float exp2f (float);
extern float scalblnf (float, long int);
extern float tgammaf (float);
extern float nearbyintf (float);
extern long int lrintf (float);
extern long long int llrintf (float);
extern float roundf (float);
extern long int lroundf (float);
extern long long int llroundf (float);
extern float truncf (float);
extern float remquof (float, float, int *);
extern float fdimf (float, float);
extern float fmaxf (float, float);
extern float fminf (float, float);
extern float fmaf (float, float, float);

extern float infinityf (void);
extern float nanf (const char *);
extern float copysignf (float, float);
extern float logbf (float);
extern int ilogbf (float);

extern float asinhf (float);
extern float cbrtf (float);
extern float nextafterf (float, float);
extern float rintf (float);
extern float scalbnf (float, int);
extern float log1pf (float);
extern float expm1f (float);


extern float acoshf (float);
extern float atanhf (float);
extern float remainderf (float, float);
extern float gammaf (float);
extern float lgammaf (float);
extern float erff (float);
extern float erfcf (float);
extern float log2f (float);
extern float hypotf (float, float);
# 453 "C:/devkitPro/devkitARM/arm-none-eabi/include/math.h" 3
extern long double atanl (long double);
extern long double cosl (long double);
extern long double sinl (long double);
extern long double tanl (long double);
extern long double tanhl (long double);
extern long double frexpl (long double, int *);
extern long double modfl (long double, long double *);
extern long double ceill (long double);
extern long double fabsl (long double);
extern long double floorl (long double);
extern long double log1pl (long double);
extern long double expm1l (long double);




extern long double acosl (long double);
extern long double asinl (long double);
extern long double atan2l (long double, long double);
extern long double coshl (long double);
extern long double sinhl (long double);
extern long double expl (long double);
extern long double ldexpl (long double, int);
extern long double logl (long double);
extern long double log10l (long double);
extern long double powl (long double, long double);
extern long double sqrtl (long double);
extern long double fmodl (long double, long double);
extern long double hypotl (long double, long double);


extern long double copysignl (long double, long double);
extern long double nanl (const char *);
extern int ilogbl (long double);
extern long double asinhl (long double);
extern long double cbrtl (long double);
extern long double nextafterl (long double, long double);
extern float nexttowardf (float, long double);
extern double nexttoward (double, long double);
extern long double nexttowardl (long double, long double);
extern long double logbl (long double);
extern long double log2l (long double);
extern long double rintl (long double);
extern long double scalbnl (long double, int);
extern long double exp2l (long double);
extern long double scalblnl (long double, long);
extern long double tgammal (long double);
extern long double nearbyintl (long double);
extern long int lrintl (long double);
extern long long int llrintl (long double);
extern long double roundl (long double);
extern long lroundl (long double);
extern long long int llroundl (long double);
extern long double truncl (long double);
extern long double remquol (long double, long double, int *);
extern long double fdiml (long double, long double);
extern long double fmaxl (long double, long double);
extern long double fminl (long double, long double);
extern long double fmal (long double, long double, long double);

extern long double acoshl (long double);
extern long double atanhl (long double);
extern long double remainderl (long double, long double);
extern long double lgammal (long double);
extern long double erfl (long double);
extern long double erfcl (long double);
# 535 "C:/devkitPro/devkitARM/arm-none-eabi/include/math.h" 3
extern double drem (double, double);
extern float dremf (float, float);



extern double gamma_r (double, int *);
extern double lgamma_r (double, int *);
extern float gammaf_r (float, int *);
extern float lgammaf_r (float, int *);



extern double y0 (double);
extern double y1 (double);
extern double yn (int, double);
extern double j0 (double);
extern double j1 (double);
extern double jn (int, double);



extern float y0f (float);
extern float y1f (float);
extern float ynf (int, float);
extern float j0f (float);
extern float j1f (float);
extern float jnf (int, float);
# 597 "C:/devkitPro/devkitARM/arm-none-eabi/include/math.h" 3
extern int *__signgam (void);
# 639 "C:/devkitPro/devkitARM/arm-none-eabi/include/math.h" 3

# 4 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/VecMath.h" 2

# 1 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/NumberUtils.h" 1
       
# 25 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/NumberUtils.h"

# 25 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/NumberUtils.h"
static inline int FastFloor(float x) { return (int)(x) - (int)(x < (int)(x)); }
static inline float lerp(float start, float end, float t) { return start + ((end - start) * t); }
static inline float bilerp(float q11, float q21, float q12, float q22, float x, float y) { return lerp(lerp(q11, q21, x), lerp(q12, q22, x), y); }
static inline float trilerp(float q111, float q211, float q121, float q221, float q112, float q212, float q122, float q222, float x, float y, float z) {
 return lerp(bilerp(q111, q211, q112, q212, x, z), bilerp(q121, q221, q122, q222, x, z), y);
}

static inline 
# 32 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/NumberUtils.h" 3 4
             _Bool 
# 32 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/NumberUtils.h"
                  AABB_Overlap(float x0, float y0, float z0, float w0, float h0, float d0, float x1, float y1, float z1, float w1, float h1, float d1) {
 return (x0 <= x1 + w1 && x0 + w0 >= x1) && (y0 <= y1 + h1 && y0 + h0 >= y1) && (z0 <= z1 + d1 && z0 + d0 >= z1);
}
# 6 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/VecMath.h" 2

typedef union {
 float v[3];
 struct {
  float x, y, z;
 };
} float3;

inline float3 f3_new(float x, float y, float z) { return (float3){{x, y, z}}; }

inline float3 f3_add(float3 a, float3 b) { return f3_new(a.x + b.x, a.y + b.y, a.z + b.z); }
inline float3 f3_sub(float3 a, float3 b) { return f3_new(a.x - b.x, a.y - b.y, a.z - b.z); }
inline float3 f3_scl(float3 a, float b) { return f3_new(a.x * b, a.y * b, a.z * b); }

inline float f3_dot(float3 a, float3 b) { return a.x * b.x + a.y * b.y + a.z * b.z; }
inline float3 f3_crs(float3 a, float3 b) { return f3_new(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x); }

inline float f3_mag(float3 vec) { return sqrtf(f3_dot(vec, vec)); }
inline float f3_magSqr(float3 vec) { return f3_dot(vec, vec); }
inline float3 f3_nrm(float3 vec) {
 float m = f3_mag(vec);
 return f3_new(vec.x / m, vec.y / m, vec.z / m);
}

inline float f3_dst(float3 a, float3 b) { return f3_mag(f3_sub(a, b)); }

inline float3 f3_min(float3 a, float3 b) { return f3_new(((a.x) < (b.x) ? (a.x) : (b.x)), ((a.y) < (b.y) ? (a.y) : (b.y)), ((a.z) < (b.z) ? (a.z) : (b.z))); }
inline float3 f3_max(float3 a, float3 b) { return f3_new(((a.x) > (b.x) ? (a.x) : (b.x)), ((a.y) > (b.y) ? (a.y) : (b.y)), ((a.z) > (b.z) ? (a.z) : (b.z))); }

inline float3 f3_clamp(float3 a, float3 min, float3 max) { return f3_min(f3_max(a, min), max); }

inline float3 f3_neg(float3 vec) { return f3_new(-vec.x, -vec.y, -vec.z); }
# 6 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Collision.h" 2

typedef struct { float3 min, max; } Box;

inline Box Box_Create(float x, float y, float z, float w, float h, float d) { return (Box){f3_new(x, y, z), f3_new(x + w, y + h, z + d)}; }
inline 
# 10 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Collision.h" 3 4
      _Bool 
# 10 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Collision.h"
           Box_Contains(Box box, float x, float y, float z) {
 return box.min.x <= x && box.min.y <= y && box.min.z <= z && box.max.x > x && box.max.y > y && box.max.z > z;
}


# 14 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Collision.h" 3 4
_Bool 
# 14 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Collision.h"
    Collision_BoxIntersect(Box a, Box b, int ignore_faces, float3* ncoll,float* dcoll,int* fcoll);
# 2 "C:/Users/Elias/CLionProjects/3DSCraft/source/misc/Collision.c" 2






# 7 "C:/Users/Elias/CLionProjects/3DSCraft/source/misc/Collision.c" 3 4
_Bool 
# 7 "C:/Users/Elias/CLionProjects/3DSCraft/source/misc/Collision.c"
    Collision_BoxIntersect(Box a, Box b, int ignore_faces,
       float3* ncoll,
       float* dcoll,
       int* fcoll)

{

 static const float3 faces[6] = {
     {{-1, 0, 0}},
     {{1, 0, 0}},
     {{0, -1, 0}},
     {{0, 1, 0}},
     {{0, 0, -1}},
     {{0, 0, 1}},
 };


 float distances[6] = {
     (b.max.x - a.min.x),
     (a.max.x - b.min.x),
     (b.max.y - a.min.y),
     (a.max.y - b.min.y),
     (b.max.z - a.min.z),
     (a.max.z - b.min.z),
 };







 for (int i = 0; i < 6; i++) {


  if (distances[i] < 0.0f) return 
# 42 "C:/Users/Elias/CLionProjects/3DSCraft/source/misc/Collision.c" 3 4
                                 0
# 42 "C:/Users/Elias/CLionProjects/3DSCraft/source/misc/Collision.c"
                                      ;

  if (ignore_faces & (1 << i)) continue;



  if ((i == 0) || (distances[i] < *dcoll)) {
   *fcoll = i;
   *ncoll = faces[i];
   *dcoll = distances[i];
  }
 }

 return 
# 55 "C:/Users/Elias/CLionProjects/3DSCraft/source/misc/Collision.c" 3 4
       1
# 55 "C:/Users/Elias/CLionProjects/3DSCraft/source/misc/Collision.c"
           ;
}
