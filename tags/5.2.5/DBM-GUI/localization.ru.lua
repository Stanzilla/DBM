﻿if GetLocale() ~= "ruRU" then return end

if not DBM_GUI_Translations then DBM_GUI_Translations = {} end
local L = DBM_GUI_Translations

L.MainFrame = "Deadly Boss Mods"

L.TranslationBy 			= "Swix"

L.OTabBosses				= "Боссы"
L.OTabOptions				= "Настройки"

L.TabCategory_Options	 	= "Общие параметры"
L.TabCategory_MOP	 		= "Туманы Пандарии"
L.TabCategory_CATA	 		= "Катаклизм"
L.TabCategory_WOTLK 		= "Wrath of the Lich King"
L.TabCategory_BC 			= "The Burning Crusade"
L.TabCategory_CLASSIC		= "Классическая игра"
L.TabCategory_OTHER    		= "Другие боссы"

L.BossModLoaded 			= "%s - статистика"
L.BossModLoad_now 			= [[Модуль для этих боссов не загружен. 
Он будет загружен сразу после входа в подземелье. 
Также вы можете нажать кнопку, чтобы загрузить модуль вручную.]]

L.PosX						= 'Позиция X'
L.PosY						= 'Позиция Y'

L.MoveMe 					= 'Передвинь меня'
L.Button_OK 				= 'OK'
L.Button_Cancel 			= 'Отмена'
L.Button_LoadMod			= 'Загрузить модуль'
L.Mod_Enabled				= "Включить модуль"
L.Mod_Reset					= "Восстановить настройки по умолчанию для этого модуля"
L.Reset 					= "Сброс"

L.Enable  					= "Вкл."
L.Disable					= "Откл."

L.NoSound					= "Без звука"

L.IconsInUse				= "Используемые метки"

L.QuestComplete				= "Уже получена еженедельная награда за этого босса (репутация/лут в Поиск Рейда/легендарный квест)."
L.QuestIncomplete			= "Все еще можно получить еженедельную награду за этого босса (репутация/лут в Поиск Рейда/легендарный квест). Обратите внимание: перезагрузка интерфейса или перезаход в игру вскоре после запроса статуса преведет к неправильному результату \"награда еще не получена\""

-- Tab: Boss Statistics
L.BossStatistics			= "Статистика босса"
L.Statistic_Kills			= "Убийства:"
L.Statistic_Wipes			= "Поражения:"
L.Statistic_Incompletes		= "Не завершено:"
L.Statistic_BestKill		= "Лучший бой:"

-- Tab: General Options
L.General 					= "Общие параметры DBM"
L.EnableDBM 				= "Включить DBM"
L.EnableMiniMapIcon			= "Отображать кнопку на мини-карте"
L.SetPlayerRole				= "Автоматически устанавливать роль игрока"
L.UseMasterVolume			= "Использовать общий аудио канал для проигрывания звуковых файлов"
L.DisableCinematics			= "Отключить внутриигровые ролики в подземельях"
L.DisableCinematicsOutside	= "Отключить внутриигровые ролики вне подземелий"
L.SKT_Enabled				= "Всегда отображать таймер быстрого убийства\n(переопределяет настройку для конкретного босса)"
L.AutologBosses				= "Автоматически записывать бои с боссами используя журнал боя Blizzard"
L.AdvancedAutologBosses		= "Автоматически записывать бои с боссами используя Transcriptor"
L.LogOnlyRaidBosses			= "Записывать только бои с рейдовыми боссами (искл. Поиск Рейдов/5 ппл/сценарии)"
L.Latency_Text				= "Макс. задержка для синхронизации: %d"

L.ModelOptions				= "Настройки 3D моделей на странице боссов"
L.EnableModels				= "Показывать 3D модели боссов"
L.ModelSoundOptions			= "Выбор голосового приветствия"
L.ModelSoundShort			= "Короткое"
L.ModelSoundLong			= "Длинное"

L.Button_RangeFrame			= "Окно проверки дистанции"
L.Button_RangeRadar			= "Показать/скрыть радар"
L.Button_InfoFrame			= "Показать/скрыть окно информации"
L.Button_TestBars			= "Запустить проверку"

L.PizzaTimer_Headline 		= 'Создать "Pizza Timer"'
L.PizzaTimer_Title			= 'Название (например, "Pizza!")'
L.PizzaTimer_Hours 			= "час."
L.PizzaTimer_Mins 			= "мин."
L.PizzaTimer_Secs 			= "сек."
L.PizzaTimer_ButtonStart 	= "Начать отсчет"
L.PizzaTimer_BroadCast		= "Транслировать рейду"

-- Tab: Raidwarning
L.Tab_RaidWarning 			= "Предупреждения для рейда"
L.RaidWarning_Header		= "Параметры рейд-предупреждений"
L.RaidWarnColors 			= "Цвета предупреждений для рейда"
L.RaidWarnColor_1 			= "Цвет 1"
L.RaidWarnColor_2 			= "Цвет 2"
L.RaidWarnColor_3		 	= "Цвет 3"
L.RaidWarnColor_4 			= "Цвет 4"
L.InfoRaidWarning			= [[Вы можете указать расположение и цвет предупреждений для рейда. 
Используется для сообщений вроде "Игрок X под воздействием Y"]]
L.ColorResetted 			= "Цветовые параметры для этого поля восстановлены."
L.ShowWarningsInChat 		= "Показывать предупреждения в окне чата"
L.ShowFakedRaidWarnings 	= "Показывать предупреждения в виде объявлений рейду"
L.WarningIconLeft 			= "Отображать значок с левой стороны"
L.WarningIconRight 			= "Отображать значок с правой стороны"
L.ShowCountdownText			= "Отображать текст отсчета"
L.RaidWarnMessage 			= "Спасибо за использование Deadly Boss Mods"
L.BarWhileMove 				= "Действие рейд-предупреждения"
L.RaidWarnSound				= "Звук рейд-предупреждения"
L.CountdownVoice			= "Голос для звукового отсчета"
L.SpecialWarnSound			= "Звук спец-предупреждения для вас или для вашей роли"
L.SpecialWarnSound2			= "Звук спец-предупреждения для всех"
L.SpecialWarnSound3			= "Звук очень важного спец-предупреждения (убийственно для Вас или рейда)"

-- Tab: Generalwarnings
L.Tab_GeneralMessages 		= "Общие сообщения"
L.CoreMessages				= "Параметры общих сообщений"
L.ShowLoadMessage 			= "Показывать сообщения о загрузке модулей в окне чата"
L.ShowPizzaMessage 			= "Показывать сообщения транслируемых таймеров в окне чата"
L.CombatMessages			= "Параметры сообщений в бою"
L.ShowEngageMessage 		= "Показывать сообщения о вступлении в бой в окне чата"
L.ShowKillMessage 			= "Показывать сообщения об убийстве босса в окне чата"
L.ShowWipeMessage 			= "Показывать сообщения при вайпе в окне чата"
L.ShowRecoveryMessage 		= "Показывать сообщения о восстановлении таймеров в окне чата"
L.WhisperMessages			= "Параметры приватных сообщений"
L.AutoRespond 				= "Включить авто-ответ в бою"
L.EnableStatus 				= "Отвечать на запрос статуса боя шепотом"
L.WhisperStats 				= "Добавлять статистику убийств/вайпов в авто-ответ"

-- Tab: Barsetup
L.BarSetup   				= "Стиль индикатора"
L.BarTexture 				= "Текстура индикатора"
L.BarStartColor				= "Цвет в начале"
L.BarEndColor 				= "Цвет в конце"
L.ExpandUpwards				= "Выровнять по верху"
L.Bar_Font					= "Шрифт для индикатора"
L.Bar_FontSize				= "Размер шрифта"
L.Slider_BarOffSetX 		= "Сдвиг X: %d"
L.Slider_BarOffSetY 		= "Сдвиг Y: %d"
L.Slider_BarWidth 			= "Ширина: %d"
L.Slider_BarScale 			= "Масштаб: %0.2f"
L.AreaTitle_BarSetup		= "Параметры основного индикатора"
L.AreaTitle_BarSetupSmall 	= "Параметры уменьшенного индикатора"
L.AreaTitle_BarSetupHuge	= "Параметры увеличенного индикатора"
L.BarIconLeft 				= "Значок слева"
L.BarIconRight 				= "Значок справа"
L.EnableHugeBar 			= "Включить увеличенный индикатор (Полоса 2)"
L.FillUpBars				= "Наполняющая заливка полос"
L.ClickThrough				= "Отключить события мыши (позволяет вам щелкать мышью сквозь полосы индикаторов)"

-- Tab: Spec Warn Frame
L.Panel_SpecWarnFrame		= "Специальные предупреждения"
L.Area_SpecWarn				= "Настройка специальных предупреждений"
L.SpecWarn_Enabled			= "Отображать спец-предупреждения для способностей босса"
L.SpecWarn_LHFrame			= "Мигать экраном во время специальных предупреждений"
L.SpecWarn_Font				= "Выбор шрифта для специальных предупреждений"
L.SpecWarn_DemoButton		= "Показать пример"
L.SpecWarn_MoveMe			= "Расположение"
L.SpecWarn_FontSize			= "Размер шрифта"
L.SpecWarn_FontColor		= "Цвет шрифта"
L.SpecWarn_FontType			= "Выбор шрифта"
L.SpecWarn_ResetMe			= "Восстановить умолчания"

-- Tab: HealthFrame
L.Panel_HPFrame				= "Здоровье босса"
L.Area_HPFrame				= "Настройка здоровья босса"
L.HP_Enabled				= "Всегда отображать здоровье босса\n(переопределяет настройку для конкретного босса)"
L.HP_GrowUpwards			= "Выровнять индикатор здоровья по верху"
L.HP_ShowDemo				= "Индикатор здоровья"
L.BarWidth					= "Ширина индикатора: %d"

-- Tab: Spam Filter
L.Panel_SpamFilter				= "Общие и спам-фильтры"
L.Area_SpamFilter				= "Параметры спам-фильтра"
L.HideBossEmoteFrame			= "Скрывать эмоции рейдового босса"
L.StripServerName				= "Удалять имя сервера в предупреждениях и таймерах"
L.SpamBlockBossWhispers			= "Фильтрация <DBM> предупреждений шепотом в бою"
L.BlockVersionUpdateNotice		= "Отключить уведомление о доступном обновлении"
L.ShowBigBrotherOnCombatStart	= "Выполнять проверку положительных эффектов Big Brother в начале боя"
L.BigBrotherAnnounceToRaid		= "Объявлять результаты проверки Big Brother в рейд"
L.SpamBlockSayYell				= "Скрыть текст оповещений в облачках из окна чата"

L.Area_SpamFilter_Outgoing		= "Параметры общего фильтра"
L.SpamBlockNoShowAnnounce		= "Не объявлять или предупреждать звуком игрока"
L.SpamBlockNoSendWhisper		= "Не отправлять предупреждения шепотом другим игрокам"
L.SpamBlockNoSetIcon			= "Не устанавливать метки на цели"
L.SpamBlockNoRangeFrame			= "Не отображать окно проверки дистанции"
L.SpamBlockNoInfoFrame			= "Не отображать информационное окно"

L.Area_PullTimer				= "Параметры фильтра таймера пулла"
L.DontShowPT					= "Не отображать таймер пулла"
L.DontShowPTCountdownText		= "Не отображать текст отсчета таймера пулла"
L.DontPlayPTCountdown			= "Не воспроизводить звук отсчета таймера пулла"

-- Misc
L.FontHeight	= 16