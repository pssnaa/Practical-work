.LC0:
        .base64 "0KPQs9Cw0LTQsNC5INGH0LjRgdC70L4g0L7RgiAxINC00L4gMTA6IAA="
.LC1:
        .base64 "0J/RgNCw0LLQuNC70YzQvdC+ISDQo9Cz0LDQtNCw0LshCgA="
.LC2:
        .base64 "0J3QtSDRg9Cz0LDQtNCw0LshINCR0YvQu9C+INC30LDQs9Cw0LTQsNC90L4gNwoA"
main:
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 40
        mov     DWORD PTR [rbp-20], 7
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)
        lea     rax, [rbp-44]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:std::cin
        call    std::istream::operator>>(int&)
        mov     eax, DWORD PTR [rbp-44]
        cmp     DWORD PTR [rbp-20], eax
        jne     .L2
        mov     QWORD PTR [rbp-40], OFFSET FLAT:.LC1
        mov     eax, 4
        mov     esi, 1
        mov     rcx, QWORD PTR [rbp-40]
        mov     edx, 20
        mov     ebx, esi
        int $0x80
        jmp     .L3
.L2:
        mov     QWORD PTR [rbp-32], OFFSET FLAT:.LC2
        mov     eax, 4
        mov     esi, 1
        mov     rcx, QWORD PTR [rbp-32]
        mov     edx, 27
        mov     ebx, esi
        int $0x80
.L3:
        mov     eax, 0
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret