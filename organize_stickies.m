#import <Foundation/Foundation.h>

typedef int CGSConnection;
typedef int CGSWindow;

extern OSStatus CGSMoveWorkspaceWindowList(const CGSConnection connection,
                                       CGSWindow *wids,
                                       int count,
                                       int toWorkspace);
extern CGSConnection _CGSDefaultConnection(void);


int main(int argc, char **argv) {
    CGSConnection con = _CGSDefaultConnection();

    // replace 2004 with window number
    // see link for details on obtaining this number
    // 2004 just happened to be a window I had open to test with
    CGSWindow wids[] = {2004};

    // replace 4 with number of destination space
    CGSMoveWorkspaceWindowList(con, wids, 1, 4);

    return 0;
}

