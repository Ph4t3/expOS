## Minor BUG in all interrupts
I might be pre calculating pointer to return values, but during PAGING physical page of stack might get changed and proper return value will not be returned. Have fixed it for INT_OPEN and other bugs have not popped up yet. Leaving the rest to you. Peace :)
