//
//  main.m
//  karuta
//
//  Created by Ryo Fujita on 12/24/2012.
//  Copyright (c) 2012 Ryo Fujita. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <MacRuby/MacRuby.h>

int main(int argc, char *argv[])
{
    return macruby_main("rb_main.rb", argc, argv);
}
