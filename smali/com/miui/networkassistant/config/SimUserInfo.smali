.class public Lcom/miui/networkassistant/config/SimUserInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_NULL_IMSI:Ljava/lang/String; = "default"

.field private static final TAG:Ljava/lang/String; = "SimUserInfo"

.field private static sInstanceMap:Ljava/util/HashMap;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIccid:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mIsOversea:Z

.field private mIsSimInserted:Z

.field private mPhoneNumber:Ljava/lang/String;

.field private mSimId:J

.field private mSimName:Ljava/lang/String;

.field private mSlotNum:I

.field private mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "SimUserInfo"

    const-string/jumbo v1, "mina create SimUserInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/config/SimUserInfo;->initData(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 1

    invoke-static {p0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getSimImsi(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 1

    invoke-static {p0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getSlotNumByImsi(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 3

    const-class v1, Lcom/miui/networkassistant/config/SimUserInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/config/SimUserInfo;->sInstanceMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/config/SimUserInfo;->sInstanceMap:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/config/SimUserInfo;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/config/SimUserInfo;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sget-object v2, Lcom/miui/networkassistant/config/SimUserInfo;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-direct {v0, p0, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->initData(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initData(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mImsi:Ljava/lang/String;

    iput p3, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSlotNum:I

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    iget v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSlotNum:I

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isChinaOperator(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    :goto_0
    iput-boolean v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mIsOversea:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBillPackageRemained()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSlotNum:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mm_account_balance"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lmiui/provider/ExtraSettings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "bill_package_remained"

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBillPackageTotal()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "bill_package_total"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBillSmsDetail()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "bill_sms_detail"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBillTcResult()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "bill_tc_result"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBillTcResultCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "bill_tc_result_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBrand()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_brand1"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCallTimePackageRemained()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "call_time_package_remained"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCallTimePackageTotal()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "call_time_package_total"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCity()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_city"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCorrectedOffsetValue()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_correct_value"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCorrectionSourceUpdateTime(Ljava/lang/String;)J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCustomizeDailyLimitWarning()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "customize_daily_limit_warning"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCustomizedSmsContent()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_customized_sms_content"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomizedSmsNum()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_customized_sms_num"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDailyLimitEnabled()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficManageControlEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v2, "daily_limit_available"

    invoke-virtual {v1, v2, v0}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public getDailyLimitWarningType()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_limit_warning_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDailyUsedCardBrand()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v2, "daily_used_card_brand"

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandNameList()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDailyUsedCardDataUpdateTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_card_data_update_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDailyUsedCardPackage()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_used_card_package"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDailyUsedCardStopNetworkCount()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_card_stop_network_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDailyUsedCardStopNetworkOn()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_card_stop_network_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDailyUsedCardStopNetworkTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_card_stop_network_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataRoamingStopChanged()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_roaming_stop_changed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDataRoamingStopUpdateTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_roaming_stop_update_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataUsageAutoCorrectedTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_auto_corrected_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataUsageCorrectedTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_correct_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataUsageOverDailyLimitTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_over_daily_limit_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataUsageOverLimitStopNetworkTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_overlimit_stop_network_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataUsageOverLimitStopNetworkWarningTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_overlimit_stop_network_warning_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataUsageOverRoamingDailyLimitTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_over_roaming_daily_limit_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataUsageOverlayPackage()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_overlay_package"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataUsageOverlayPackageTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_overlay_package_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataUsageTotal()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_total"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataUsageWarning()F
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_warning"

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFirewallMobilePreConfig()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "firewall_mobile_preconfig"

    sget v2, Lcom/miui/networkassistant/config/SimUserConstants$DEFAULT;->FIREWALL_MOBILE_PRECONFIG_DEFAULT:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHalfYearPackageBeginTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "half_year_package_begin_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHalfYearPackageValue()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "half_year_package_value"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mIccid:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getLastBillTcDirection()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "last_bill_tc_direction"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastTcRemain()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_last_tc_remain"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastTcUsed()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_last_tc_used"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastTrafficTcDirection()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "last_traffic_tc_direction"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeisureDataUsageCorrectedTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_data_usage_correct_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLeisureDataUsageCorrectedValue()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_data_usage_corrected_value"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLeisureDataUsageFromTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_data_usage_from_time"

    const-wide/32 v2, 0x4ef6d80

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLeisureDataUsageOverLimitWarningTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_data_usage_overlimit_warning_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLeisureDataUsageToTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_data_usage_to_time"

    const-wide/32 v2, 0x1808580

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLeisureDataUsageTotal()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_data_usage_total"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLeisureOverLimitStopNetworkTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_overlimit_stop_network_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLockScreenWarningLevel()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "lock_screen_warning_level"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMiSimCardTips()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "card_mi_sim_tips"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getMonthStart()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "month_start"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNATrafficPurchaseAvailableUpdateTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_purchase_avaliable_update_time_na"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNATrafficPurchaseOrderTips()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "na_traffic_purchase_order_tips"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOldBrand()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_brand"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_operator"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverDataUsageStopNetworkType()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "over_data_usage_stop_network_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPackageChangeUpdateTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "package_change_update_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_province"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPurchaseActivityId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "purchase_activity_id"

    const-string/jumbo v2, "NOACTIVITY"

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoamingBeginTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "roaming_begin_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRoamingDailyLimitEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "roaming_daily_limit_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRoamingDailyLimitTraffic()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "roaming_daily_limit_traffic"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRoamingNetworkState()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "roaming_network_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRoamingOverLimitOptType()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "roaming_over_limit_opt_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getShouldWebCorrection()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "web_should_correction"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSimId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSimId:J

    return-wide v0
.end method

.method public getSimName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSimName:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotNum()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSlotNum:I

    return v0
.end method

.method public getTcSmsReportCache()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "tc_sms_report_cache"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrafficCorrectionEngineUpdateTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_correction_engine_update_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrafficCorrectionFailureCount()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_correction_failure_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTrafficLimitValue()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_limit_value"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTrafficProtectedStopNetTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_protected_stop_net_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrafficPurchaseStatus()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_purchase_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTrafficSettingDailyLimitNotifyUpdateTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_setting_daily_limit_notify_update_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrafficSettingDailyNotifyUpdateTime()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_setting_daily_notify_update_time1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTrafficSettingMonthlyNotifyUpdateTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_setting_monthly_notify_update_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrafficSmsDetail()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_sms_detail"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrafficTcResult()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_tc_result"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrafficTcResultCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_tc_result_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWebCorrectionStatusRefreshTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "web_correction_status_refresh_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasImsi()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mImsi:Ljava/lang/String;

    const-string/jumbo v1, "default"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBillPackageEffective()Z
    .locals 4

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCorrectionEffective()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOperatorSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficManageControlEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCustomizedSms()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_customized_sms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDailyCardSettingGuideEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_card_setting_guide_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDailyUsedCardEffective()Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDailyUsedCardEnable()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataRoaming()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSlotNum:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isNetworkRoaming(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public isDataUsageAutoCorrectionEffective()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSupportCorrection()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataUsageAutoCorrectionOn()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_auto_correction_on"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDataUsageOverLimitStopNetwork()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_overlimit_stop_network"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDataUsageTotalNotSetNotified()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_total_not_set_notified"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isExistTotalDataUsage()Z
    .locals 4

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHalfYearPackageEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "half_year_package"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLeisureDataUsageEffective()Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageFromTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageToTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLeisureDataUsageOn()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_data_usage_on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLeisureDataUsageOverLimitWarning()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_data_usage_overlimit_warning"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLockScreenTrafficEnable()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficManageControlEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v2, "lock_screen_traffic_enable"

    invoke-virtual {v1, v2, v0}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isMiMobileOperatorModify()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "mi_mobile_operator_modify_again"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isMobilePolicyEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "mobile_policy_enable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNATipsEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "purchase_tips_enbale"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNATrafficPurchaseAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_purchase_avaliable_na"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNotLimitCardEnable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOldConfigDailyUsedCardEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_used_card"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOperatorSetted()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v1

    if-eq v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOversea()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mIsOversea:Z

    return v0
.end method

.method public isShouldTcDiagnostic()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "should_tc_diagnostic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSimInserted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mIsSimInserted:Z

    return v0
.end method

.method public isSimLocationAlertIgnore()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "sim_location_alert_ignore"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSmsAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mIsSimInserted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportCmccWebCorrection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportCorrection()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "400"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTotalDataUsageSetted()Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrafficCorrectionAutoModify()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_correction_alert_ignore"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTrafficManageControlEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_manage_control"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUserTrafficSettingGuideEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_traffic_guide_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isWebCorrectionSupported()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "web_correction_supported"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveBrand(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_brand1"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public saveCity(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_city"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public saveCorrectedOffsetValue(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_correct_value"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveCustomizedSmsContent(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_customized_sms_content"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveCustomizedSmsNum(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_customized_sms_num"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveDataUsageAutoCorrectedTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_auto_corrected_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveDataUsageCorrectedTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_correct_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveDataUsageOverLimitStopNetworkTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_overlimit_stop_network_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveDataUsageOverLimitStopNetworkWarningTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_overlimit_stop_network_warning_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveDataUsageOverlayPackage(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_overlay_package"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveDataUsageOverlayPackageTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_overlay_package_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveDataUsageTotal(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_total"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveDataUsageWarning(F)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_warning"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public saveLastTcRemain(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_last_tc_remain"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveLastTcUsed(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_last_tc_used"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveLeisureDataUsageCorrectedTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_data_usage_correct_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveLeisureDataUsageCorrectedValue(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_data_usage_corrected_value"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveLeisureDataUsageFromTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_data_usage_from_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveLeisureDataUsageOverLimitWarningTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_data_usage_overlimit_warning_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveLeisureDataUsageToTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_data_usage_to_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveLeisureDataUsageTotal(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_data_usage_total"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveLeisureOverLimitStopNetworkTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_overlimit_stop_network_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveMonthStart(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "month_start"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public saveNATrafficPurchaseAvailable(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_purchase_avaliable_na"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveNATrafficPurchaseAvailableUpdateTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_purchase_avaliable_update_time_na"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveNATrafficPurchaseOrderTips(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "na_traffic_purchase_order_tips"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveNATrafficPurchaseType(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "na_traffic_purchase_type"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public saveOldBrand(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_brand"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveOperator(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_operator"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveProvince(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_province"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public savePurchaseActivityId(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "purchase_activity_id"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveTrafficCorrectionAutoModify(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_correction_alert_ignore"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveWebCorrectionStatusRefreshTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "web_correction_status_refresh_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveWebCorrectionSupported(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "web_correction_supported"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBillPackageRemained(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "bill_package_remained"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setBillPackageTotal(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "bill_package_total"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setBillSmsDetail(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "bill_sms_detail"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBillTcResult(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "bill_tc_result"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBillTcResultCode(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "bill_tc_result_code"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setCallTimePackageRemained(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "call_time_package_remained"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setCallTimePackageTotal(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "call_time_package_total"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setCorrectionSourceUpdateTime(Ljava/lang/String;J)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setCustomizeDailyLimitWarning(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "customize_daily_limit_warning"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setDailyCardSettingGuideEnable(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_card_setting_guide_enable"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setDailyLimitEnabled(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_limit_available"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setDailyLimitWarningType(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_limit_warning_type"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setDailyUsedCardBrand(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_used_card_brand"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDailyUsedCardDataUpdateTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_card_data_update_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setDailyUsedCardPackage(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_used_card_package"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setDailyUsedCardStopNetworkCount(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_card_stop_network_count"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setDailyUsedCardStopNetworkOn(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_card_stop_network_type"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setDailyUsedCardStopNetworkTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_card_stop_network_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setDataRoamingStopChanged(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_roaming_stop_changed"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setDataRoamingStopUpdateTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_roaming_stop_update_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setDataUsageOverDailyLimitTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_over_daily_limit_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setDataUsageOverRoamingDailyLimitTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_over_roaming_daily_limit_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setDataUsageTotalNotSetNotified(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_total_not_set_notified"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setFirewallMobilePreConfig(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "firewall_mobile_preconfig"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setHalfYearPackageBeginTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "half_year_package_begin_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setHalfYearPackageEnable(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "half_year_package"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setHalfYearPackageValue(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "half_year_package_value"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setIccid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mIccid:Ljava/lang/String;

    return-void
.end method

.method public setLastBillTcDirection(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "last_bill_tc_direction"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setLastTrafficTcDirection(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "last_traffic_tc_direction"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setLockScreenTrafficEnable(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "lock_screen_traffic_enable"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setLockScreenWarningLevel(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "lock_screen_warning_level"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setMiMobileOperatorModify(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "mi_mobile_operator_modify_again"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setMiSimCardTips(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "card_mi_sim_tips"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setMobilePolicyEnable(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "mobile_policy_enable"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setNATipsEnable(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "purchase_tips_enbale"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setOverDataUsageStopNetworkType(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "over_data_usage_stop_network_type"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setPackageChangeUpdateTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "package_change_update_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mPhoneNumber:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setRoamingBeginTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "roaming_begin_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setRoamingDailyLimitEnabled(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "roaming_daily_limit_enabled"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setRoamingDailyLimitTraffic(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "roaming_daily_limit_traffic"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setRoamingNetworkState(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "roaming_network_state"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setRoamingOverLimitOptType(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "roaming_over_limit_opt_type"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setShouldTcDiagnostic(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "should_tc_diagnostic"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setShouldWebCorrection(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "web_should_correction"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setSimId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSimId:J

    return-void
.end method

.method public setSimInserted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mIsSimInserted:Z

    return-void
.end method

.method public setSimLocationAlertIgnore(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "sim_location_alert_ignore"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setSimName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSimName:Ljava/lang/String;

    return-void
.end method

.method public setSlotNum(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSlotNum:I

    return-void
.end method

.method public setTcSmsReportCache(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "tc_sms_report_cache"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setTrafficCorrectionEngineUpdateTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_correction_engine_update_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setTrafficCorrectionFailureCount(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_correction_failure_count"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setTrafficLimitValue(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "daily_limit_value"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setTrafficManageControlEnable(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_manage_control"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setTrafficProtectedStopNetTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_protected_stop_net_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setTrafficPurchaseStatus(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_purchase_status"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setTrafficSettingDailyLimitNotifyUpdateTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_setting_daily_limit_notify_update_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setTrafficSettingDailyNotifyUpdateTime(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_setting_daily_notify_update_time1"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setTrafficSettingMonthlyNotifyUpdateTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_setting_monthly_notify_update_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setTrafficSmsDetail(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_sms_detail"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setTrafficTcResult(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_tc_result"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setTrafficTcResultCode(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "traffic_tc_result_code"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setUserTrafficSettingGuideEnable(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_traffic_guide_enable"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "SimInfo: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "imsi:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", simName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSimName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", simId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", iccId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mIccid:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", slotNum:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSlotNum:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", oversea:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mIsOversea:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", inserted:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mIsSimInserted:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", dataRoaming:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mIccid:Ljava/lang/String;

    const-string/jumbo v2, ".{4}$"

    const-string/jumbo v3, "XXXX"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public toggleCustomizedSms(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "user_customized_sms"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toggleDataUsageAutoCorrection(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_auto_correction_on"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toggleDataUsageOverLimitStopNetwork(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_overlimit_stop_network"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toggleLeisureDataUsageOn(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_data_usage_on"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toggleLeisureDataUsageOverLimitWarning(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimUserInfo;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "leisure_data_usage_overlimit_warning"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
