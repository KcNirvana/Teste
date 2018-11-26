.class public Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final CUSTOMIZE:I = 0x0

.field private static final FIVE:I = 0x5

.field private static final LOCK_SCREEN_WARNING_TYPE_COUNT:I = 0x5

.field private static final LOCK_SCREEN_WARNING_VALUE:I = 0x3

.field private static final MIN_TRAFFIC_PKG:J = 0x2200000L

.field private static final MSG_SERVICE_CONNECTED:I = 0x6

.field private static final OVER_TRAFFIC_DAILY_LIMIT:I = 0x2

.field private static final PREF_KEY_LIMIT_TRAFFIC_PER_DAY:Ljava/lang/String; = "pref_key_limit_traffic_per_day"

.field private static final PREF_KEY_LOCK_SCREEN_SWITCH:Ljava/lang/String; = "pref_key_lock_screen_switch"

.field private static final PREF_KEY_LOCK_SCREEN_WARNING_VALUE:Ljava/lang/String; = "pref_key_lock_screen_warning_value"

.field private static final PREF_KEY_OVER_TRAFFIC_LIMIT_WARNING:Ljava/lang/String; = "pref_key_over_traffic_limit_warning"

.field private static final PREF_KEY_TRAFFIC_LIMIT_NUMBER:Ljava/lang/String; = "pref_key_traffic_limit_number"

.field private static final TAG:Ljava/lang/String; = "TrafficLimit"

.field private static final TEN:I = 0xa

.field private static final THREE:I = 0x3

.field private static final TITLE_FILED:I = 0x7f070345

.field private static final TRAFFIC_DAILY_LIMIT_VALUE:I = 0x1

.field private static final TRAFFIC_LIMIT_TYPE_COUNT:I = 0x4


# instance fields
.field private mDailyLimitChanged:Z

.field private mDailyLimitValue:[Ljava/lang/String;

.field private mDailyLimitValueSelected:I

.field private mDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

.field private mHandler:Landroid/os/Handler;

.field private mLockScreenChanged:Z

.field private mLockScreenCheckBoxPreference:Landroid/preference/CheckBoxPreference;

.field private mLockScreenSwitchEnable:Z

.field private mLockScreenWarningArray:[Ljava/lang/String;

.field private mLockScreenWarningSelected:I

.field private mLockScreenWarningValuePreference:Lmiui/preference/ValuePreference;

.field private mOverDailyLimitOperate:Lmiui/preference/ValuePreference;

.field private mOverDailyLimitOperatorSelected:I

.field private mOverLimitOperatorType:[Ljava/lang/String;

.field private mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mTrafficDailyLimitSwitch:Landroid/preference/CheckBoxPreference;

.field private mTrafficDailyLimitType:[Ljava/lang/String;

.field private mTrafficDailyLimitValue:Lmiui/preference/ValuePreference;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningValuePreference:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperate:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object v0
.end method

.method static synthetic -get7(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSlotNum:I

    return v0
.end method

.method static synthetic -get8(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitValue:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitChanged:Z

    return p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValueSelected:I

    return p1
.end method

.method static synthetic -set2(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenChanged:Z

    return p1
.end method

.method static synthetic -set3(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningSelected:I

    return p1
.end method

.method static synthetic -set4(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperatorSelected:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->getValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->initData()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->updateCustomizeDailyLimit(J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    return-void
.end method

.method private getSelected(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    return v0

    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    return v0

    :sswitch_2
    const/4 v0, 0x2

    return v0

    :sswitch_3
    const/4 v0, 0x3

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private getValue(I)I
    .locals 1

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/16 v0, 0xa

    return v0

    :pswitch_3
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initData()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->isAttatched()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficLimitValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->getSelected(I)I

    move-result v2

    iput v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValueSelected:I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyLimitWarningType()I

    move-result v2

    iput v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperatorSelected:I

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->updateDailyLimitValue(J)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->initTrafficLimitDailyCategory()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->initLockScreenWarningArray()V

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->initLockScreenWarningValue(J)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->initLockScreenMonitor()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TrafficLimit"

    const-string/jumbo v4, "getCurrentMonthTotalPackage"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v0, v2

    goto :goto_0
.end method

.method private initLockScreenMonitor()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLockScreenTrafficEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenSwitchEnable:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenSwitchEnable:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningValuePreference:Lmiui/preference/ValuePreference;

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenSwitchEnable:Z

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningValuePreference:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningSelected:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private initLockScreenWarningArray()V
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    new-array v0, v10, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getKBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "%d%s"

    new-array v5, v8, [Ljava/lang/Object;

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v0, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "%d%s"

    new-array v5, v8, [Ljava/lang/Object;

    const/16 v6, 0x1f4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v0, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "%d%s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "%d%s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "%d%s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-void
.end method

.method private initLockScreenWarningValue(J)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLockScreenWarningLevel()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningSelected:I

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningSelected:I

    if-gez v0, :cond_0

    invoke-static {p1, p2}, Lcom/miui/networkassistant/traffic/lockscreen/LockScreenTrafficHelper;->getLockScreenLevel(J)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningSelected:I

    :cond_0
    return-void
.end method

.method private initTrafficLimitDailyCategory()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyLimitEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitValue:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperate:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitValue:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValueSelected:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperate:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperatorSelected:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private updateCustomizeDailyLimit(J)V
    .locals 7

    const v2, 0x7f07034f

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    aget-object v4, v4, v5

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, ""

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0
.end method

.method private updateDailyLimitValue(J)V
    .locals 11

    const/4 v1, 0x4

    const-wide/16 v8, 0x64

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    const-wide/32 v0, 0x2200000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mAppContext:Landroid/content/Context;

    const-wide/32 v2, 0x100000

    invoke-static {v1, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mAppContext:Landroid/content/Context;

    const-wide/32 v2, 0x200000

    invoke-static {v1, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mAppContext:Landroid/content/Context;

    const-wide/32 v2, 0x300000

    invoke-static {v1, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizeDailyLimitWarning()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->updateCustomizeDailyLimit(J)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mAppContext:Landroid/content/Context;

    const-wide/16 v2, 0x3

    mul-long/2addr v2, p1

    div-long/2addr v2, v8

    invoke-static {v1, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesWithUintLong(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const v2, 0x7f07034c

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    aget-object v4, v4, v5

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mAppContext:Landroid/content/Context;

    const-wide/16 v2, 0x5

    mul-long/2addr v2, p1

    div-long/2addr v2, v8

    invoke-static {v1, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesWithUintLong(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const v2, 0x7f07034d

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    aget-object v4, v4, v6

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mAppContext:Landroid/content/Context;

    const-wide/16 v2, 0xa

    mul-long/2addr v2, p1

    div-long/2addr v2, v8

    invoke-static {v1, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesWithUintLong(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const v2, 0x7f07034e

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    goto/16 :goto_0
.end method


# virtual methods
.method protected getXmlPreference()I
    .locals 1

    const v0, 0x7f05002b

    return v0
.end method

.method protected initPreferenceView()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    const-string/jumbo v0, "pref_key_limit_traffic_per_day"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitSwitch:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_key_traffic_limit_number"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitValue:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "pref_key_over_traffic_limit_warning"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperate:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitValue:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperate:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitValue:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperate:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const-string/jumbo v0, "pref_key_lock_screen_switch"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_key_lock_screen_warning_value"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningValuePreference:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningValuePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningValuePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitChanged:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->forceCheckDailyLimitStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenChanged:Z

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->forceCheckLockScreenStatus(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitSwitch:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitValue:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperate:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyLimitEnabled(Z)Z

    iput-boolean v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitChanged:Z

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setLockScreenTrafficEnable(Z)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningValuePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iput-boolean v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenChanged:Z

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitValue:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v1, 0x7f070346

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValueSelected:I

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperate:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v1, 0x7f070347

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperatorSelected:I

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningValuePreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v1, 0x7f070353

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningSelected:I

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto :goto_0
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f070345

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
