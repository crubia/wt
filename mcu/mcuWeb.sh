#! /bin/sh
### BEGIN INIT INFO
# Provides:          mcuWeb
# Required-Start:
# Required-Stop:
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: mcuWeb startup script
# Description:       mcuWeb startup script
### END INIT INFO
 
# Author: Sergio Garcia Murillo ?sergio.garcia@fontventa.com?
 
PATH=/sbin:/usr/sbin:/bin:/usr/bin
DESC="Start Sailfin domian domain1"
NAME="asadmin"
DAEMON=/usr/local/sailfin/bin/$NAME
START_ARGS="start-domain domain1"
STOP_ARGS="stop-domain domain1"
PIDFILE=/var/run/$NAME.pid
SCRIPTNAME=/etc/init.d/$NAME
 
# Exit if the package is not installed
[ -x "$DAEMON" ] || exit 0
 
# Read configuration variable file if it is present
[ -r /etc/default/$NAME ] && . /etc/default/$NAME
 
 
#
# Function that starts the daemon/service
#
do_start()
{
        # Return
        #   0 if daemon has been started
        #   1 if daemon was already running
        #   2 if daemon could not be started
        $DAEMON $START_ARGS || return 2
}
 
#
# Function that stops the daemon/service
#
do_stop()
{
        # Return
        #   0 if daemon has been stopped
        #   1 if daemon was already stopped
        #   2 if daemon could not be stopped
        $DAEMON $STOP_ARGS || return 2
}
 
case "$1" in
  start)
        [ "$VERBOSE" != no ] && echo "Starting $DESC" "$NAME"
        do_start
        case "$?" in
                0|1) [ "$VERBOSE" != no ] && echo "Done" ;;
                2) [ "$VERBOSE" != no ] && echo "Failed" ;;
        esac
        ;;
  stop)
        [ "$VERBOSE" != no ] && echo "Stopping $DESC" "$NAME"
        do_stop
        case "$?" in
                0|1) [ "$VERBOSE" != no ] && echo "Done" ;;
                2) [ "$VERBOSE" != no ] && echo "Failed" ;;
    esac
        ;;
  restart|force-reload)
        #
        # If the "reload" option is implemented then remove the
        # 'force-reload' alias
        #
        echo "Restarting $DESC" "$NAME"
        do_stop
        case "$?" in
          0|1)
                do_start
                case "$?" in
                        0) echo "Done" ;;
                        1) echo "Old process is still running" ;; # Old process is still running
                        *) echo "Failed to start" ;; # Failed to start
                esac
                ;;
          *)
                # Failed to stop
                echo "Failed"
                ;;
        esac
        ;;
  *)
        #echo "Usage: $SCRIPTNAME {start|stop|restart|reload|force-reload}" >&2
        echo "Usage: $SCRIPTNAME {start|stop|restart|force-reload}" >&2
        exit 3
        ;;
esac
