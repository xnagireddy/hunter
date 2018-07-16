#include <stdio.h>
#include <string.h>
#include <inotifytools/inotifytools.h>
#include <inotifytools/inotify.h>

int main() {
	if ( !inotifytools_initialize()
	  || !inotifytools_watch_recursively( ".", IN_ALL_EVENTS ) ) {
		fprintf(stderr, "%s\n", strerror( inotifytools_error() ) );
		return -1;
	}

	inotifytools_set_printf_timefmt( "%T" );

	struct inotify_event * event = inotifytools_next_event( -1 );
	while ( event ) {
		inotifytools_printf( event, "%T %w%f %e\n" );
		event = inotifytools_next_event( -1 );
	}
}


