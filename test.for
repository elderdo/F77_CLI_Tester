	PROGRAM MAIN
	IMPLICIT NONE

1000	Format(A3)
	CHARACTER RCDTYP*3
	CHARACTER filename*256
	CHARACTER recx*80

	CHARACTER*50 ARG
	INTEGER I

	PRINT *, IARGC()

	DO I = 1, IARGC() 
		CALL GETARG(I, ARG) 
		PRINT*, 'ARG #', I, ' IS ', ARG 
	ENDDO
	read(*,'(A)') filename

	OPEN (UNIT = 1, FILE = 'INPUT\\stuff.txt')
	OPEN (UNIT = 2, FILE = 'output\\out.txt')
	OPEN (UNIT = 3, FILE = filename,status='old')
	
	read(3,'(A)') recx
	write (*,'(A)') recx // ' Doug was here '

	CLOSE (2)
	STOP
	END