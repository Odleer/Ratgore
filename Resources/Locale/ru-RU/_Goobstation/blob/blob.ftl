ent-SpawnPointGhostBlob = Спаунер блоба
    .suffix = DEBUG, Спаунер гост-ролей
    .desc = { ent-MarkerBase.desc }
ent-MobBlobPod = Спора блоба
    .desc = Обычный боец блоба.
ent-MobBlobBlobbernaut = Блоббернаут
    .desc = Элитный боец блоба.
ent-BaseBlob = базовый блоб
    .desc = { "" }
ent-NormalBlobTile = Обычная плитка блоба
    .desc = Обычная часть блоба, необходимая для постройки более продвинутых плиток.
ent-CoreBlobTile = Ядро блоба
    .desc = Самый важный орган блоба. Уничтожив ядро, инфекция прекратится.
ent-FactoryBlobTile = Фабрика блоба
    .desc = Со временем создаёт споры блоба и блоббернаутов.
ent-ResourceBlobTile = Ресурсный блоб
    .desc = Производит ресурсы для блоба.
ent-NodeBlobTile = Узел блоба
    .desc = Мини-версия ядра, позволяющая размещать специальные плитки блоба вокруг себя.
ent-StrongBlobTile = Прочная плитка блоба
    .desc = Усиленная версия обычной плитки. Не пропускает воздух и защищает от физического урона.
ent-ReflectiveBlobTile = Отражающая плитка блоба
    .desc = Отражает лазеры, но хуже защищает от физического урона.
    .desc = { "" }
objective-issuer-blob = Блоб
ghost-role-information-blobbernaut-name = Блоббернаут
ghost-role-information-blobbernaut-description = Вы блоббернаут. Вы должны защищать ядро блоба.
ghost-role-information-blob-name = Блоб
ghost-role-information-blob-description = Вы Блоб-инфекция. Поглотите станцию.
roles-antag-blob-name = Блоб
roles-antag-blob-objective = Достичь критической массы.
guide-entry-blob = Блоб
# Popups
blob-target-normal-blob-invalid = Неверный тип блоба, выберите обычный блоб.
blob-target-factory-blob-invalid = Неверный тип блоба, выберите фабрику блоба.
blob-target-node-blob-invalid = Неверный тип блоба, выберите узел блоба.
blob-target-close-to-resource = Слишком близко к другому ресурсному блобу.
blob-target-nearby-not-node = Нет узла или ресурсного блоба поблизости.
blob-target-close-to-node = Слишком близко к другому узлу.
blob-target-already-produce-blobbernaut = Эта фабрика уже создала блоббернаута.
blob-cant-split = Нельзя разделить ядро блоба.
blob-not-have-nodes = У вас нет узлов.
blob-not-enough-resources = Недостаточно ресурсов.
blob-help = Только Бог может вам помочь.
blob-swap-chem = В разработке.
blob-mob-attack-blob = Нельзя атаковать блоб.
blob-get-resource = +{ $point }
blob-spent-resource = -{ $point }
blobberaut-not-on-blob-tile = Вы умираете, не находясь на плитках блоба.
carrier-blob-alert = У вас осталось { $second } секунд до превращения.
blob-core-under-attack = Ваше ядро атакуют!
blob-mob-zombify-second-start = { $pod } начинает превращать вас в зомби.
blob-mob-zombify-third-start = { $pod } начинает превращать { $target } в зомби.
blob-mob-zombify-second-end = { $pod } превращает вас в зомби.
blob-mob-zombify-third-end = { $pod } превращает { $target } в зомби.
blobberaut-factory-destroy = фабрика уничтожена
blob-target-already-connected = уже подключено
# UI
blob-chem-swap-ui-window-name = Смена химикатов
blob-chem-reactivespines-info =
    Реактивные шипы
    Наносит 25 физического урона.
blob-chem-blazingoil-info =
    Пылающее масло
    Наносит 15 урона от ожогов и поджигает цели.
    Делает вас уязвимым к воде.
blob-chem-regenerativemateria-info =
    Регенеративная материя
    Наносит 6 физического и 15 токсичного урона.
    Ядро блоба восстанавливает здоровье в 10 раз быстрее и генерирует на 1 ресурс больше.
blob-chem-explosivelattice-info =
    Взрывная решётка
    Наносит 5 урона от ожогов и взрывает цель, нанося 10 физического урона.
    Споры взрываются при смерти.
    Вы становитесь иммунны к взрывам.
    Вы получаете на 50% больше урона от ожогов и электричества.
blob-chem-electromagneticweb-info =
    Электромагнитная сеть
    Наносит 20 урона от ожогов, 20% шанс вызвать ЭМИ-импульс при атаке.
    Плитки блоба вызывают ЭМИ-импульс при уничтожении.
    Вы получаете на 25% больше физического и теплового урона.
blob-alert-out-off-station = Блоб был удалён, так как оказался за пределами станции!
# Announcment
blob-alert-recall-shuttle = Аварийный шаттл не может быть отправлен, пока на станции присутствует биоугроза 5-го уровня.
blob-alert-detect = Подтверждёна вспышка биоугрозы 5-го уровня на станции. Весь персонал должен сдерживать вспышку.
blob-alert-critical = Уровень биоугрозы критический, коды автентификации ядерной боеголовки отправлены на станцию. Центральное командование приказывает оставшемуся персоналу активировать механизм самоуничтожения.
blob-alert-critical-NoNukeCode = Уровень биоугрозы критический. Центральное командование приказывает оставшемуся персоналу искать укрытие и ожидать спасения.
# Actions
blob-create-factory-action-name = Создать фабрику блоба (40)
blob-create-factory-action-desc = Превращает выбранный обычный блоб в фабрику, которая может производить миньонов, если рядом есть узел или ядро.
blob-create-storage-action-name = Создать хранилище блоба (50)
blob-create-storage-action-desc = Превращает выбранный обычный блоб в хранилище, увеличивая максимум ресурсов.
blob-create-turret-action-name = Создать турель блоба (75)
blob-create-turret-action-desc = Превращает выбранный обычный блоб в турель, стреляющую по врагам спорами, расходуя ресурсы.
blob-create-resource-action-name = Разместить ресурсный блоб (60)
blob-create-resource-action-desc = Превращает выбранный обычный блоб в ресурсный, который генерирует ресурсы рядом с ядром или узлом.
blob-create-node-action-name = Разместить узел блоба (50)
blob-create-node-action-desc =
    Превращает выбранный обычный блоб в узел.
    Узел активирует эффекты фабрик и ресурсных блобов, лечит другие блобы и медленно расширяется, разрушая стены.
blob-produce-blobbernaut-action-name = Произвести блоббернаута (60)
blob-produce-blobbernaut-action-desc = Создаёт блоббернаута на выбранной фабрике. Каждая фабрика может сделать это только один раз. Блоббернаут получает урон вне плиток блоба и лечится рядом с узлами.
blob-split-core-action-name = Разделить ядро (400)
blob-split-core-action-desc = Можно сделать только один раз. Превращает выбранный узел в независимое ядро.
blob-swap-core-action-name = Переместить ядро (200)
blob-swap-core-action-desc = Меняет местами ваше ядро и выбранный узел.
blob-teleport-to-core-action-name = Перейти к ядру (0)
blob-teleport-to-core-action-desc = Телепортирует к вашему ядру блоба.
blob-teleport-to-node-action-name = Перейти к узлу (0)
blob-teleport-to-node-action-desc = Телепортирует к случайному узлу блоба.
blob-help-action-name = Помощь
blob-help-action-desc = Получите базовую информацию об игре за блоба.
blob-swap-chem-action-name = Сменить химикаты (70)
blob-swap-chem-action-desc = Позволяет сменить текущий химикат.
blob-carrier-transform-to-blob-action-name = Превратиться в блоба
blob-carrier-transform-to-blob-action-desc = Мгновенно уничтожает ваше тело и создаёт ядро блоба. Убедитесь, что стоите на полу.
blob-downgrade-action-name = Понизить блоб (0)
blob-downgrade-action-desc = Превращает выбранную плитку обратно в обычный блоб.
# Ghost role
blob-carrier-role-name = Носитель блоба
blob-carrier-role-desc = Существо, заражённое блобом.
blob-carrier-role-rules =
    Вы антагонист. У вас есть 10 минут до превращения в блоба.
    Используйте это время, чтобы найти безопасное место. Помните, что сразу после превращения вы будете очень слабы.
blob-carrier-role-greeting = Вы носитель Блоба. Найдите уединённое место на станции и превратитесь. Превратите станцию в массу, а её жителей - в слуг. Мы все - Блобы.
# Verbs
blob-pod-verb-zombify = Зомбифицировать
blob-verb-upgrade-to-strong = Улучшить до прочного
blob-verb-upgrade-to-reflective = Улучшить до отражающего
blob-verb-remove-blob-tile = Удалить блоб
# Alerts
blob-resource-alert-name = Ресурсы ядра
blob-resource-alert-desc = Ваши ресурсы, производимые ядром и ресурсными блобами. Используйте их для расширения и создания специальных блобов.
blob-health-alert-name = Здоровье ядра
blob-health-alert-desc = Здоровье вашего ядра. Вы умрёте, если оно достигнет нуля.
# Greeting
blob-role-greeting =
    Вы - блоб, паразитическое космическое существо, способное уничтожить целые станции.
        Ваша цель - выжить и вырасти как можно больше.
    	Вы почти неуязвимы к физическому урону, но тепло может повредить вас.
        Используйте Alt+ЛКМ для улучшения обычных блобов до прочных, а прочных - до отражающих.
    	Обязательно размещайте ресурсные блобы для генерации ресурсов.
        Помните, что ресурсные блобы и фабрики работают только рядом с узлами или ядром.
blob-zombie-greeting = Вас заразила и подняла спора блоба. Теперь вы должны помочь блобу захватить станцию.
# End round
blob-round-end-result =
    { $blobCount ->
        [one] Была одна блоб-инфекция.
       *[other] Было { $blobCount } блобов.
    }
blob-user-was-a-blob = [color=gray]{ $user }[/color] был блобом.
blob-user-was-a-blob-named = [color=White]{ $name }[/color] ([color=gray]{ $user }[/color]) был блобом.
blob-was-a-blob-named = [color=White]{ $name }[/color] был блобом.
blob-objective-percentage = Захватил [color=White]{ $progress }%[/color] до победы.
blob-end-victory = [color=Red]Блоб(ы) успешно поглотили станцию![/color]
blob-end-fail = [color=Green]Блоб(ы) не смогли поглотить станцию.[/color]
blob-end-fail-progress = Все блобы захватили [color=Yellow]{ $progress }%[/color] до победы.
preset-blob-objective-issuer-blob = [color=#33cc00]Блоб[/color]
blob-user-was-a-blob-with-objectives = [color=gray]{ $user }[/color] был блобом:
blob-user-was-a-blob-with-objectives-named = [color=White]{ $name }[/color] ([color=gray]{ $user }[/color]) был блобом:
blob-was-a-blob-with-objectives-named = [color=White]{ $name }[/color] был блобом:
# Objectivies
objective-condition-blob-capture-title = Захватить станцию
objective-condition-blob-capture-description = Ваша единственная цель - захватить всю станцию. Вам нужно минимум { $count } плиток блоба.
objective-condition-success = { $condition } | [color={ $markupColor }]Успех![/color]
objective-condition-fail = { $condition } | [color={ $markupColor }]Провал![/color] ({ $progress }%)
# Radio names
speak-vv-blob = Блоб
speak-vv-blob-core = Ядро блоба
# Language
language-Blob-name = Блоб
chat-language-Blob-name = Блоб
language-Blob-description = Bleeb bob! Blob blob!
