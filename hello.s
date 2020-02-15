# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    hello.s                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ytaousi <yassir.taous@student.1337.ma>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/22 18:12:34 by ytaousi           #+#    #+#              #
#    Updated: 2020/01/25 01:09:25 by ytaousi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global    say_hi

          section   .text
say_hi:    mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, message            ; address of string to output
          mov       rdx, 13                 ; number of bytes
          syscall                           ; invoke operating system to do the write
          mov       rax, 0x02000001         ; system call for exit
          xor       rdi, rdi                ; exit code 0
          syscall                           ; invoke operating system to exit

          section   .data
message:  db        "Hello, World", 10      ; note the newline at the end