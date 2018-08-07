//
//  SHGenAlgos.h
//  SH_CTools
//
//  Created by Joel Pridgen on 4/28/18.
//  Copyright © 2018 Joel Gillette. All rights reserved.
//

#ifndef SHGenAlgos_h
#define SHGenAlgos_h

#if defined(__clang__)
#ifndef blockoptimazation
#define blockoptimazation __attribute__ ((optnone))
#endif
#elif defined(__GNUC__)
#ifndef blockoptimazation
#define blockoptimazation __attribute__((optimize("O0")))
#endif
#endif 

#include <stdio.h>
long calcStrHash(char const *str);
double kahanSum(const double* const nums,int len);
#endif /* SHGenAlgos_h */
