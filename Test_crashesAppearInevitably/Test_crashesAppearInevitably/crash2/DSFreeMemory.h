//
//  DSFreeMemory.h
//  Test_crashAppearInevitably
//
//  Created by 罗富中 on 2017/12/19.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#ifndef DSFreeMemory_h
#define DSFreeMemory_h

#include <stdio.h>
#include "DSQueue.h"




void init_safe_free(void);
void safe_free(void *);
void free_some_mem(size_t freeNum);

#endif /* DSFreeMemory_h */
