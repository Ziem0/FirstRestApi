
    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        team_id int8,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    create table Team_Player (
       Team_id int8 not null,
        players_id int8 not null
    )

    alter table Team_Player 
       add constraint UK_lt6twux8si61iu0txcd5bmpp4 unique (players_id)

    alter table Hall 
       add constraint FKqgf3co16t6pq7pai2mgbd3too 
       foreign key (team_id) 
       references Team

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    alter table Team_Player 
       add constraint FKj5rmaxldq79frdgcesevltyrm 
       foreign key (players_id) 
       references Player

    alter table Team_Player 
       add constraint FKmt1fx9vhs5o9chvmo1gijys89 
       foreign key (Team_id) 
       references Team

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        team_id int8,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    create table Team_Player (
       Team_id int8 not null,
        players_id int8 not null
    )

    alter table Team_Player 
       add constraint UK_lt6twux8si61iu0txcd5bmpp4 unique (players_id)

    alter table Hall 
       add constraint FKqgf3co16t6pq7pai2mgbd3too 
       foreign key (team_id) 
       references Team

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    alter table Team_Player 
       add constraint FKj5rmaxldq79frdgcesevltyrm 
       foreign key (players_id) 
       references Player

    alter table Team_Player 
       add constraint FKmt1fx9vhs5o9chvmo1gijys89 
       foreign key (Team_id) 
       references Team

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        team_id int8,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    create table Team_Player (
       Team_id int8 not null,
        players_id int8 not null
    )

    alter table Team_Player 
       add constraint UK_lt6twux8si61iu0txcd5bmpp4 unique (players_id)

    alter table Hall 
       add constraint FKqgf3co16t6pq7pai2mgbd3too 
       foreign key (team_id) 
       references Team

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    alter table Team_Player 
       add constraint FKj5rmaxldq79frdgcesevltyrm 
       foreign key (players_id) 
       references Player

    alter table Team_Player 
       add constraint FKmt1fx9vhs5o9chvmo1gijys89 
       foreign key (Team_id) 
       references Team

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        team_id int8,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    create table Team_Player (
       Team_id int8 not null,
        players_id int8 not null
    )

    alter table Team_Player 
       add constraint UK_lt6twux8si61iu0txcd5bmpp4 unique (players_id)

    alter table Hall 
       add constraint FKqgf3co16t6pq7pai2mgbd3too 
       foreign key (team_id) 
       references Team

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    alter table Team_Player 
       add constraint FKj5rmaxldq79frdgcesevltyrm 
       foreign key (players_id) 
       references Player

    alter table Team_Player 
       add constraint FKmt1fx9vhs5o9chvmo1gijys89 
       foreign key (Team_id) 
       references Team

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        team_id int8,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    create table Team_Player (
       Team_id int8 not null,
        players_id int8 not null
    )

    alter table Team_Player 
       add constraint UK_lt6twux8si61iu0txcd5bmpp4 unique (players_id)

    alter table Hall 
       add constraint FKqgf3co16t6pq7pai2mgbd3too 
       foreign key (team_id) 
       references Team

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    alter table Team_Player 
       add constraint FKj5rmaxldq79frdgcesevltyrm 
       foreign key (players_id) 
       references Player

    alter table Team_Player 
       add constraint FKmt1fx9vhs5o9chvmo1gijys89 
       foreign key (Team_id) 
       references Team

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        team_id int8,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    create table Team_Player (
       Team_id int8 not null,
        players_id int8 not null
    )

    alter table Team_Player 
       add constraint UK_lt6twux8si61iu0txcd5bmpp4 unique (players_id)

    alter table Hall 
       add constraint FKqgf3co16t6pq7pai2mgbd3too 
       foreign key (team_id) 
       references Team

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    alter table Team_Player 
       add constraint FKj5rmaxldq79frdgcesevltyrm 
       foreign key (players_id) 
       references Player

    alter table Team_Player 
       add constraint FKmt1fx9vhs5o9chvmo1gijys89 
       foreign key (Team_id) 
       references Team

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        team_id int8,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    create table Team_Player (
       Team_id int8 not null,
        players_id int8 not null
    )

    alter table Team_Player 
       add constraint UK_lt6twux8si61iu0txcd5bmpp4 unique (players_id)

    alter table Hall 
       add constraint FKqgf3co16t6pq7pai2mgbd3too 
       foreign key (team_id) 
       references Team

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    alter table Team_Player 
       add constraint FKj5rmaxldq79frdgcesevltyrm 
       foreign key (players_id) 
       references Player

    alter table Team_Player 
       add constraint FKmt1fx9vhs5o9chvmo1gijys89 
       foreign key (Team_id) 
       references Team

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        team_id int8,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    create table Team_Player (
       Team_id int8 not null,
        players_id int8 not null
    )

    alter table Team_Player 
       add constraint UK_lt6twux8si61iu0txcd5bmpp4 unique (players_id)

    alter table Hall 
       add constraint FKqgf3co16t6pq7pai2mgbd3too 
       foreign key (team_id) 
       references Team

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    alter table Team_Player 
       add constraint FKj5rmaxldq79frdgcesevltyrm 
       foreign key (players_id) 
       references Player

    alter table Team_Player 
       add constraint FKmt1fx9vhs5o9chvmo1gijys89 
       foreign key (Team_id) 
       references Team

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        team_id int8,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Hall 
       add constraint FKqgf3co16t6pq7pai2mgbd3too 
       foreign key (team_id) 
       references Team

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        team_id int8,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        primary key (id)
    )

    alter table Hall 
       add constraint FKqgf3co16t6pq7pai2mgbd3too 
       foreign key (team_id) 
       references Team

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        team_id int8,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        primary key (id)
    )

    alter table Hall 
       add constraint FKqgf3co16t6pq7pai2mgbd3too 
       foreign key (team_id) 
       references Team

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        team_id int8,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        primary key (id)
    )

    alter table Hall 
       add constraint FKqgf3co16t6pq7pai2mgbd3too 
       foreign key (team_id) 
       references Team

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall

    create table Hall (
       id  bigserial not null,
        capacity int4 not null,
        name varchar(255) not null,
        primary key (id)
    )

    create table Player (
       id  bigserial not null,
        name varchar(255) not null,
        position varchar(255),
        team_id int8,
        primary key (id)
    )

    create table Team (
       id  bigserial not null,
        name varchar(255) not null,
        hall_id int8,
        primary key (id)
    )

    alter table Player 
       add constraint FKqfn7q18rx1dwkwui2tyl30e08 
       foreign key (team_id) 
       references Team

    alter table Team 
       add constraint FK7f2rycgpntgbegxdp04nk15q4 
       foreign key (hall_id) 
       references Hall
