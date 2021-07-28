//
//  carbon.m
//  NonResponding
//
//  Created by Jens Kristian Søgaard <jens@mermaidconsulting.dk> on 28/07/2021.
//

#import <Foundation/Foundation.h>
#import <Carbon/Carbon.h>
#include <ApplicationServices/ApplicationServices.h>

extern int _CGSDefaultConnection(void);
extern bool CGSEventIsAppUnresponsive(int connection, const ProcessSerialNumber *psn);

bool isNonResponding(pid_t pid)
{
    ProcessSerialNumber psn;
    if( GetProcessForPID(pid, &psn) )
        return 0;
            
    return CGSEventIsAppUnresponsive(_CGSDefaultConnection(), &psn);
}
