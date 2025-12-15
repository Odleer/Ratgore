whitelist-not-whitelisted = Вас нет в вайтлисте.
# proper handling for having a min/max or not
whitelist-playercount-invalid =
    { $min ->
        [0] Вайтлист для этого сервера применяется только для числа игроков ниже { $max }.
       *[other]
            Вайтлист для этого сервера применяется только для числа игроков выше { $min } { $max ->
                [2147483647] ->  так что, возможно, вы сможете присоединиться позже.
               *[other] ->  и ниже { $max } игроков, так что, возможно, вы сможете присоединиться позже.
            }
    }
whitelist-not-whitelisted-rp = Вас нет в вайтлисте. Чтобы попасть в вайтлист, посетите наш Discord (ссылку можно найти по адресу https://discord.station14.ru).
cmd-whitelistadd-desc = Добавить игрока в вайтлист сервера.
cmd-whitelistadd-help = Использование: whitelistadd <username>
cmd-whitelistadd-existing = { $username } уже находится в вайтлисте!
cmd-whitelistadd-added = { $username } добавлен в вайтлист
cmd-whitelistadd-not-found = Не удалось найти игрока '{ $username }'
cmd-whitelistadd-arg-player = [player]
cmd-whitelistremove-desc = Удалить игрока с вайтлиста сервера.
cmd-whitelistremove-help = Использование: whitelistremove <username>
cmd-whitelistremove-existing = { $username } не находится в вайтлисте!
cmd-whitelistremove-removed = { $username } удалён с вайтлиста
cmd-whitelistremove-not-found = Не удалось найти игрока '{ $username }'
cmd-whitelistremove-arg-player = [player]
cmd-kicknonwhitelisted-desc = Кикнуть всех игроков не в белом списке с сервера.
cmd-kicknonwhitelisted-help = Использование: kicknonwhitelisted
ban-banned-permanent = Этот бан можно только обжаловать. Для этого посетите { $link }.
ban-banned-permanent-appeal = Этот бан можно только обжаловать. Для этого посетите { $link }.
ban-expires = Вы получили бан на { $duration } минут, и он истечёт { $time } по UTC (для московского времени добавьте 3 часа).
ban-banned-1 = Вам, или другому пользователю этого компьютера или соединения, запрещено здесь играть.
ban-banned-2 = Причина бана: "{ $reason }"
ban-banned-3 = Попытки обойти этот бан, например, путём создания нового аккаунта, будут фиксироваться.
ban-banned-4 = Попытки обойти этот бан, например путём создания нового аккаунта, приведут к эскалации вплоть до бана сообщества.
soft-player-cap-full = Сервер заполнен!
whitelist-playtime = У вас недостаточно отыгранного времени для входа на этот сервер. Вам необходимо минимум { $hours } минут игрового времени для входа на этот сервер.
whitelist-player-count = Этот сервер в данный момент не принимает игроков. Попробуйте позже.
whitelist-notes = У вас слишком много админ-заметок для входа на этот сервер. Вы можете проверить свои заметки, написав /adminremarks в чате.
whitelist-manual = Вас нет в вайтлисте на этом сервере.
whitelist-blacklisted = Вы находитесь в чёрном списке этого сервера.
whitelist-always-deny = Вам не разрешён вход на этот сервер.
whitelist-fail-prefix = Не в вайтлисте: { $msg }
whitelist-misconfigured = Сервер неправильно настроен и не принимает игроков. Пожалуйста, свяжитесь с владельцем сервера и попробуйте позже.
cmd-blacklistadd-desc = Добавить игрока с указанным именем в чёрный список сервера.
cmd-blacklistadd-help = Использование: blacklistadd <username>
cmd-blacklistadd-existing = { $username } уже находится в чёрном списке!
cmd-blacklistadd-added = { $username } добавлен в чёрный список
cmd-blacklistadd-not-found = Не удалось найти '{ $username }'
cmd-blacklistadd-arg-player = [player]
cmd-blacklistremove-desc = Удалить игрока с указанным именем из чёрного списка сервера.
cmd-blacklistremove-help = Использование: blacklistremove <username>
cmd-blacklistremove-existing = { $username } не находится в чёрном списке!
cmd-blacklistremove-removed = { $username } удалён из чёрного списка
cmd-blacklistremove-not-found = Не удалось найти '{ $username }'
cmd-blacklistremove-arg-player = [player]
baby-jail-account-denied = Этот сервер предназначен для новичков и тех, кто хочет им помочь. Новые подключения от слишком старых аккаунтов или тех, что не находятся в вайтлисте, не принимаются. Попробуйте другие серверы и посмотрите всё, что может предложить Space Station 14. Приятной игры!
baby-jail-account-denied-reason = Этот сервер предназначен для новичков и тех, кто хочет им помочь. Новые подключения от слишком старых аккаунтов или тех, что не находятся в вайтлисте, не принимаются. Попробуйте другие серверы и посмотрите всё, что может предложить Space Station 14. Приятной игры! Причина: "{ $reason }"
baby-jail-account-reason-account = Ваш аккаунт Space Station 14 слишком старый. Он должен быть моложе { $hours } часов.
generic-misconfigured = The server is misconfigured and is not accepting players. Please contact the server owner and try again later.
ipintel-server-ratelimited = This server uses a security system with external verification, which has reached its maximum verification limit. Please contact the administration team of the server for assistance and try again later.
ipintel-unknown = This server uses a security system with external verification, but it encountered an error. Please contact the administration team of the server for assistance and try again later.
ipintel-suspicious = You seem to be connecting through a datacenter or VPN. For administrative reasons we do not allow VPN connections to play. Please contact the administration team of the server for assistance if you believe this is false.
baby-jail-account-reason-overall = Ваше общее время игры на сервере должно быть меньше { $hours } часов.
panic-bunker-account-denied = Этот сервер находится в режиме "Бункер", часто используемом в качестве меры предосторожности против рейдов. Новые подключения от аккаунтов, не соответствующих определённым требованиям, временно не принимаются. Повторите попытку позже
panic-bunker-account-denied-reason = Этот сервер находится в режиме "Бункер", часто используемом в качестве меры предосторожности против рейдов. Новые подключения от аккаунтов, не соответствующих определённым требованиям, временно не принимаются. Повторите попытку позже Причина: "{ $reason }"
panic-bunker-account-reason-account = Ваш аккаунт Space Station 14 слишком новый. Он должен быть старше { $minutes } минут
panic-bunker-account-reason-overall =
    Необходимо минимальное отыгранное Вами время на сервере — { $hours } { $hours ->
        [one] час
        [few] часа
       *[other] часов
    }.
