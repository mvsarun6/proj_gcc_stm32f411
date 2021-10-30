#ifndef __ENTER_CPP_H__
#define  __ENTER_CPP_H__

#ifdef __cplusplus
    extern "C" int test_cppfunction (void); //extern "C" can be understand by only C++ compiler
#else
    int test_cppfunction (void);    //C compiler cannot understand extern "C"
#endif


#endif //__ENTER_CPP_H__