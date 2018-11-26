.class public Lcom/miui/luckymoney/config/CommonConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sInstance:Lcom/miui/luckymoney/config/CommonConfig;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/config/CommonConfig;->mContext:Landroid/content/Context;

    return-void
.end method

.method private base64EncodeFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;
    .locals 2

    const-class v1, Lcom/miui/luckymoney/config/CommonConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/luckymoney/config/CommonConfig;->sInstance:Lcom/miui/luckymoney/config/CommonConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/luckymoney/config/CommonConfig;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/config/CommonConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/luckymoney/config/CommonConfig;->sInstance:Lcom/miui/luckymoney/config/CommonConfig;

    :cond_0
    sget-object v0, Lcom/miui/luckymoney/config/CommonConfig;->sInstance:Lcom/miui/luckymoney/config/CommonConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAdsConfig()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ads_config"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBusinessLuckyWarningEnable()Z
    .locals 2

    const-string/jumbo v0, "business_lucky_warning_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDNDModeLevel()I
    .locals 2

    const-string/jumbo v0, "do_not_disturb_mode_level"

    sget v1, Lcom/miui/luckymoney/config/CommonPerConstants$DEFAULT;->DO_NOT_DISTURB_MODE_LEVEL_DEFAULT:I

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDNDStartTime()J
    .locals 4

    const-string/jumbo v0, "dnd_start_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDNDStopTime()J
    .locals 4

    const-string/jumbo v0, "dnd_stop_time"

    const-wide/32 v2, 0x1808580

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUpdateFrequency()J
    .locals 4

    const-string/jumbo v0, "default_update_frequency"

    const-wide/32 v2, 0xa4cb800

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDesktopFloatWindowEnable()Z
    .locals 2

    const-string/jumbo v0, "desktop_float_window_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getFastOpenConfig()Ljava/util/ArrayList;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenConfigFirstLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/config/CommonConfig;->setFastOpenConfigFirstLoad(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "fast_open_config"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFloatActivityDefaultConfig()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "float_activity_default_config"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFloatAssistantConfig()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "float_assistant_view_config_data"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFloatTipsConfig()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "float_tips_alarm_config_data"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFloatTipsDuration()J
    .locals 2

    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public getFloatTipsImageLeft()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "float_tips_image_left"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFloatTipsImageRight()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "float_tips_image_right"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFloatTipsStartTime()J
    .locals 4

    const-string/jumbo v0, "float_tips_start_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFloatTipsStopTime()J
    .locals 4

    const-string/jumbo v0, "float_tips_stop_time"

    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFloatTipsUpdateTime()J
    .locals 4

    const-string/jumbo v0, "float_tips_update_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHotEndTime()J
    .locals 4

    const-string/jumbo v0, "hot_end_time"

    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHotFrequency()J
    .locals 4

    const-string/jumbo v0, "hot_update_frequency"

    const-wide/32 v2, 0x1499700

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHotStartTime()J
    .locals 4

    const-string/jumbo v0, "hot_start_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastFloatViewXPos()I
    .locals 2

    const-string/jumbo v0, "LAST_FLOAT_VIEW_X_POS"

    const/16 v1, 0x2ee

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastFloatViewYPos()I
    .locals 2

    const-string/jumbo v0, "LAST_FLOAT_VIEW_Y_POS"

    const/16 v1, 0x1ae

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastRecordMoneyTime()J
    .locals 4

    const-string/jumbo v0, "last_record_money_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastTimeCheckUpdateConfig()J
    .locals 4

    const-string/jumbo v0, "last_time_check_update_config"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLuckyAlarmConfig()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "lucky_alarm_config"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLuckyAlarmEnable()Z
    .locals 2

    const-string/jumbo v0, "lucky_alarm_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLuckyAlarmPackageOpen(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lucky_alarm_settings_package_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/config/CommonConfig;->base64EncodeFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLuckyAlarmSoundEnable()Z
    .locals 2

    const-string/jumbo v0, "lucky_alarm_sound_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLuckyCountFrom(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lucky_count_from_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/config/CommonConfig;->base64EncodeFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLuckyMaxSource()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "lucky_max_source"

    const-string/jumbo v1, "\u6682\u65e0"

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLuckySoundWarningEnable()Z
    .locals 2

    const-string/jumbo v0, "lucky_sound_warning_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLuckySoundWarningLevel()I
    .locals 2

    const-string/jumbo v0, "lucky_sound_warning_level"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMMMoney()J
    .locals 4

    const-string/jumbo v0, "mm_money"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMasterSwitchConfig()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "master_switch_config"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMiliaoLuckyWarningEnable()Z
    .locals 2

    const-string/jumbo v0, "miliao_lucky_warning_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getOnlyNotiGroupLuckuMoneyConfig()Z
    .locals 2

    const-string/jumbo v0, "only_noti_group_lucky_money"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPersonalLuckyCountFrom(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "personal_lucky_count_from_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/config/CommonConfig;->base64EncodeFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPersonalLuckyMaxSource()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "personal_lucky_max_source"

    const-string/jumbo v1, "\u6682\u65e0"

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQQLuckyWarningEnable()Z
    .locals 2

    const-string/jumbo v0, "qq_lucky_warning_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getQQMoney()J
    .locals 4

    const-string/jumbo v0, "qq_money"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReceiveTotalLuckyMoney()J
    .locals 4

    const-string/jumbo v0, "receive_total_lucky_money"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSettingSwitchUpdateTime()J
    .locals 4

    const-string/jumbo v0, "setting_switch_state_upload_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShakeSendStickerEnable()Z
    .locals 2

    const-string/jumbo v0, "shake_send_sticker_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTodayMMMoney()J
    .locals 4

    const-string/jumbo v0, "mm_money_today"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTodayQQMoney()J
    .locals 4

    const-string/jumbo v0, "qq_money_today"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningLuckyMoneyCount()J
    .locals 4

    const-string/jumbo v0, "warning_lucky_money_count"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWeChatLuckyWarningEnable()Z
    .locals 2

    const-string/jumbo v0, "lucky_warning_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getXiaomiLuckyMoneyEnable()Z
    .locals 2

    const-string/jumbo v0, "xiaomi_lucky_money_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isConfigChanged()Z
    .locals 2

    const-string/jumbo v0, "is_config_changed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDNDModeEffective()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->isDNDModeOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->isDuringDNDTime()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDNDModeOpen()Z
    .locals 2

    const-string/jumbo v0, "do_not_disturb_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDesktopFloatWindowEnable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getDesktopFloatWindowEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDuringDNDTime()Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/luckymoney/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDStartTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDStopTime()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    const-wide/32 v4, 0x5265c00

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    :cond_2
    :goto_1
    return v0

    :cond_3
    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method public declared-synchronized isFastOpenConfigFirstLoad()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "fast_open_config_first_load"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFastOpenEnable()Z
    .locals 2

    const-string/jumbo v0, "fast_open_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstStartUp()Z
    .locals 2

    const-string/jumbo v0, "first_start_up"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShakeSendStickerEnable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getShakeSendStickerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShouldUserTips()Z
    .locals 2

    const-string/jumbo v0, "should_tips"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveReceiveTotalLuckyMoney(J)V
    .locals 1

    const-string/jumbo v0, "receive_total_lucky_money"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setAdsConfig(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ads_config"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBusinessLuckyWarningEnable(Z)V
    .locals 1

    const-string/jumbo v0, "business_lucky_warning_enable"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public setConfigChanged(Z)V
    .locals 1

    const-string/jumbo v0, "is_config_changed"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDNDModeEnable(Z)V
    .locals 1

    const-string/jumbo v0, "do_not_disturb_mode"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDNDModeLevel(I)V
    .locals 1

    const-string/jumbo v0, "do_not_disturb_mode_level"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public setDNDStartTime(J)V
    .locals 1

    const-string/jumbo v0, "dnd_start_time"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setDNDStopTime(J)V
    .locals 1

    const-string/jumbo v0, "dnd_stop_time"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setDefaultUpdateFrequency(J)V
    .locals 1

    const-string/jumbo v0, "default_update_frequency"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setDesktopFloatWindowEnable(Z)V
    .locals 1

    const-string/jumbo v0, "desktop_float_window_enable"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public declared-synchronized setFastOpenConfig(Ljava/util/ArrayList;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "fast_open_config"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMI(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFastOpenConfigFirstLoad(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "fast_open_config_first_load"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFastOpenEnable(Z)V
    .locals 1

    const-string/jumbo v0, "fast_open_mode"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFirstStartUp(Z)V
    .locals 1

    const-string/jumbo v0, "first_start_up"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFloatActivityDefaultConfig(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "float_activity_default_config"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFloatAssistantConfig(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "float_assistant_view_config_data"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFloatTipsConfig(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "float_tips_alarm_config_data"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFloatTipsImageLeft(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "float_tips_image_left"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFloatTipsImageRight(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "float_tips_image_right"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFloatTipsStartTime(J)V
    .locals 1

    const-string/jumbo v0, "float_tips_start_time"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setFloatTipsStopTime(J)V
    .locals 1

    const-string/jumbo v0, "float_tips_stop_time"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setFloatTipsUpdateTime(J)V
    .locals 1

    const-string/jumbo v0, "float_tips_update_time"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setHotEndTime(J)V
    .locals 1

    const-string/jumbo v0, "hot_end_time"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setHotFrequency(J)V
    .locals 1

    const-string/jumbo v0, "hot_update_frequency"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setHotStartTime(J)V
    .locals 1

    const-string/jumbo v0, "hot_start_time"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setLastFloatViewXPos(I)V
    .locals 1

    const-string/jumbo v0, "LAST_FLOAT_VIEW_X_POS"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public setLastFloatViewYPos(I)V
    .locals 1

    const-string/jumbo v0, "LAST_FLOAT_VIEW_Y_POS"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public setLastRecordMoneyTime(J)V
    .locals 1

    const-string/jumbo v0, "last_record_money_time"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setLastTimeCheckUpdateConfig(J)V
    .locals 1

    const-string/jumbo v0, "last_time_check_update_config"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setLuckyAlarmConfig(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "lucky_alarm_config"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLuckyAlarmEnable(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmEnable()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/config/CommonConfig;->setConfigChanged(Z)V

    :cond_0
    const-string/jumbo v0, "lucky_alarm_enable"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLuckyAlarmPackageOpen(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lucky_alarm_settings_package_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/config/CommonConfig;->base64EncodeFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLuckyAlarmSoundEnable(Z)V
    .locals 1

    const-string/jumbo v0, "lucky_alarm_sound_enable"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLuckyCountFrom(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lucky_count_from_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/config/CommonConfig;->base64EncodeFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public setLuckyMaxSource(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "lucky_max_source"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLuckySoundWarningEnable(Z)V
    .locals 1

    const-string/jumbo v0, "lucky_sound_warning_enable"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLuckySoundWarningLevel(I)V
    .locals 1

    const-string/jumbo v0, "lucky_sound_warning_level"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public setMMMoney(J)V
    .locals 1

    const-string/jumbo v0, "mm_money"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setMasterSwitchConfig(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "master_switch_config"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMiliaoLuckyWarningEnable(Z)V
    .locals 1

    const-string/jumbo v0, "miliao_lucky_warning_enable"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public setOnlyNotiGroupLuckuMoneyConfig(Z)V
    .locals 1

    const-string/jumbo v0, "only_noti_group_lucky_money"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPersonalLuckyCountFrom(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "personal_lucky_count_from_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/config/CommonConfig;->base64EncodeFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public setPersonalLuckyMaxSource(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "personal_lucky_max_source"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setQQLuckyWarningEnable(Z)V
    .locals 1

    const-string/jumbo v0, "qq_lucky_warning_enable"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public setQQMoney(J)V
    .locals 1

    const-string/jumbo v0, "qq_money"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setSettingSwitchUpdateTime(J)V
    .locals 1

    const-string/jumbo v0, "setting_switch_state_upload_time"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setShakeSendStickerEnable(Z)V
    .locals 1

    const-string/jumbo v0, "shake_send_sticker_enable"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShouldCleanResDir(Z)V
    .locals 1

    const-string/jumbo v0, "should_clean_res_dir"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShouldUserTips(Z)V
    .locals 1

    const-string/jumbo v0, "should_tips"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTodayMMMoney(J)V
    .locals 1

    const-string/jumbo v0, "mm_money_today"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setTodayQQMoney(J)V
    .locals 1

    const-string/jumbo v0, "qq_money_today"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setWarningLuckyMoneyCount(J)V
    .locals 1

    const-string/jumbo v0, "warning_lucky_money_count"

    invoke-static {v0, p1, p2}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public setWeChatLuckyWarningEnable(Z)V
    .locals 1

    const-string/jumbo v0, "lucky_warning_enable"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public setXiaomiLuckyMoneyEnable(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/config/CommonConfig;->setConfigChanged(Z)V

    :cond_0
    const-string/jumbo v0, "xiaomi_lucky_money_enable"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public shouldCleanResDir()Z
    .locals 2

    const-string/jumbo v0, "should_clean_res_dir"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
