//
//  main.m
//  Test_crashAppearInevitably
//
//  Created by 罗富中 on 2017/12/18.
//  Copyright © 2017年 罗富中. All rights reserved.
//

//#import <UIKit/UIKit.h>
//#import "AppDelegate.h"
//
//int main(int argc, char * argv[]) {
//    @autoreleasepool {
//        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
//    }
//}
//

#import <dlfcn.h>

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "fishhook.h"
#import <malloc/malloc.h>
#import "DSFreeMemory.h"

static int (*orig_close)(int);
static int (*orig_open)(const char *, int, ...);
static void (*orig_free)(void *);

int my_close(int fd) {
    printf("Calling real close(%d)\n", fd);
    return orig_close(fd);
}

int my_open(const char *path, int oflag, ...) {
    va_list ap = {0};
    mode_t mode = 0;
    
    if ((oflag & O_CREAT) != 0) {
        // mode only applies to O_CREAT
        va_start(ap, oflag);
        mode = va_arg(ap, int);
        va_end(ap);
        printf("Calling real open('%s', %d, %d)\n", path, oflag, mode);
        return orig_open(path, oflag, mode);
    } else {
        printf("Calling real open('%s', %d)\n", path, oflag);
        return orig_open(path, oflag, mode);
    }
}

//void safe_free(void* p){
//    size_t memSiziee= malloc_size(p);
//    memset(p, 0x10, memSiziee);
//    orig_free(p);
//}
int main(int argc, char * argv[])
{
    @autoreleasepool {
//        rebind_symbols((struct rebinding[2]){{"close", my_close, (void *)&orig_close}, {"open", my_open, (void *)&orig_open}}, 2);
//        
//        // Open our own binary and print out first 4 bytes (which is the same
//        // for all Mach-O binaries on a given architecture)
//        int fd = open(argv[0], O_RDONLY);
//        uint32_t magic_number = 0;
//        read(fd, &magic_number, 4);
//        printf("Mach-O Magic Number: %x \n", magic_number);
//        close(fd);
        // 重定向free方法
//        rebind_symbols((struct rebinding[1]){"free",safe_free,(void *)&orig_free}, 1);
//        init_safe_free();
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
