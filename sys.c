/*
 * sys.c - Syscalls implementation
 */
#include <devices.h>

#include <utils.h>

#include <io.h>

#include <mm.h>

#include <mm_address.h>

#include <sched.h>
#include <system.h>

#define LECTURA 0
#define ESCRIPTURA 1
static char buffer_sistema[1024];
int check_fd(int fd, int permissions)
{
  if (fd!=1) return -9; /*EBADF*/
  if (permissions!=ESCRIPTURA) return -13; /*EACCES*/
  return 0;
}

int sys_ni_syscall()
{
	return -38; /*ENOSYS*/
}

extern int zeos_ticks;
int sys_gettime()
{
  return zeos_ticks;
}

int sys_write(int fd, char * buffer, int size) {
  int ch_fd = check_fd(fd, ESCRIPTURA);
  if (ch_fd != 0) return ch_fd;
  else if (access_ok(VERIFY_WRITE, buffer, size) != 1) return -14; /*EFAULT*/
  else if (buffer == NULL) return -22; /*EINVAL*/
  copy_from_user(buffer, buffer_sistema, size);
  int size_cons = sys_write_console(buffer_sistema, size);
  return size_cons;

}

int sys_getpid(void) {
  struct task_struct result = current();
  return result->PID;
}

int sys_fork(void) {

}

void sys_exit(void) {

}