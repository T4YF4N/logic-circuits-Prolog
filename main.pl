:-use_module(library(filesex)).

:-initialization(main).

main:-
    working_directory(Dir, Dir),
    consult(Dir / 'project/src/custom-circuits.pl'),
    consult(Dir / 'project/src/defined-circuits.pl'),
    writeln('This Prolog application allows users to verify logical circuits.'),
    write('If you are unsure of how to use the application, you can use the `info.` command for assistance.').

reload:-
    working_directory(Dir, Dir),
    consult(Dir / 'project/main.pl').

info:-
    writeln('Welcome to the logical circuit verification application!\n'),
    writeln('With this application, you can test and verify the functionality of different logical circuits. You can choose to either analyze predefined circuits or create and test your own custom circuits.\n'),
    writeln('To see a list of predefined circuits and their usage, use the `defined_circuits.` command.\n'),
    writeln('To get information about how to create and test your own circuits, use the `custom_circuits.` command.').