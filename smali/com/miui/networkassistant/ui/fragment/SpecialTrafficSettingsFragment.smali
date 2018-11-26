.class public Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;
.implements Lcom/miui/networkassistant/ui/dialog/TimePickerDialog$TimePickerDialogListener;
.implements Lcom/miui/networkassistant/ui/dialog/DatePickerDialog$DatePickerDialogListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ACTION_FLAG_NORMAL_EXTRA_TRAFFIC:I = 0x1

.field private static final ACTION_FLAG_NORMAL_HALF_YEAR_TRAFFIC:I = 0x2

.field private static final ACTION_FLAG_NORMAL_LEISURE_TRAFFIC:I = 0x0

.field private static final CATEGORY_HALF_YEAR_PACKAGE:Ljava/lang/String; = "category_half_year_package"

.field private static final FLAG_END_TIME:I = 0x2

.field private static final FLAG_START_TIME:I = 0x1

.field private static final OVER_LEISURE_TRAFFIC_LIMIT:I = 0x4

.field private static final PREF_DATA_USAGE_IGNORE_SETTINGS:Ljava/lang/String; = "pref_data_usage_ignore_settings"

.field private static final PREF_KEY_END_TIME:Ljava/lang/String; = "pref_key_end_time"

.field private static final PREF_KEY_EXTRA_TRAFFIC:Ljava/lang/String; = "pref_key_extra_traffic"

.field private static final PREF_KEY_HALF_YEAR_START:Ljava/lang/String; = "pref_key_half_year_start"

.field private static final PREF_KEY_HALF_YEAR_TRAFFIC:Ljava/lang/String; = "pref_key_half_year_traffic"

.field private static final PREF_KEY_HALF_YEAR_TRAFFIC_SETTING_SWITCH:Ljava/lang/String; = "pref_key_half_year_traffic_setting_switch"

.field private static final PREF_KEY_LEISURE_TRAFFIC:Ljava/lang/String; = "pref_key_leisure_traffic"

.field private static final PREF_KEY_LEISURE_TRAFFIC_SETTING_SWITCH:Ljava/lang/String; = "pref_key_leisure_traffic_setting_switch"

.field private static final PREF_KEY_START_TIME:Ljava/lang/String; = "pref_key_start_time"

.field private static final PREF_LEISURE_TRAFFIC_LIMIT:Ljava/lang/String; = "pref_leisure_traffic_limit"

.field private static final TITLE_FILED:I = 0x7f070270


# instance fields
.field private mChanged:Z

.field private mDataUsageIgnorePreference:Lmiui/preference/ValuePreference;

.field private mDatePickerDialog:Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;

.field private mDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

.field private mEndHour:I

.field private mEndMinute:I

.field private mEndTimePreference:Lmiui/preference/ValuePreference;

.field private mExtraPackagePreference:Lmiui/preference/ValuePreference;

.field private mHalfYearCategory:Landroid/preference/PreferenceCategory;

.field private mHalfYearTrafficPreference:Landroid/preference/CheckBoxPreference;

.field private mHalfYearTrafficStart:Lmiui/preference/ValuePreference;

.field private mHalfYearTrafficValue:Lmiui/preference/ValuePreference;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

.field private mLeisureSettingCheckBoxPreference:Landroid/preference/CheckBoxPreference;

.field private mLeisureTrafficLimit:Lmiui/preference/ValuePreference;

.field private mLeisureTrafficPreference:Lmiui/preference/ValuePreference;

.field private mOverLeisureLimitSelected:I

.field private mOverLimitOperatorType:[Ljava/lang/String;

.field private mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mStartHour:I

.field private mStartMinute:I

.field private mStartTimePreference:Lmiui/preference/ValuePreference;

.field private mTimePickerDialog:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimit:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    return v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mChanged:Z

    return p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLeisureLimitSelected:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->initData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    return-void
.end method

.method private activateComponent(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p1}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartTimePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p1}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndTimePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p1}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimit:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p1}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    return-void
.end method

.method private initAppTrafficIgnoreCount()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    invoke-interface {v0, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getIgnoreAppCount(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const v1, 0x7f0c0008

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDataUsageIgnorePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method private initData()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mServiceConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageOn()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureSettingCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->activateComponent(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficPreference:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mAppContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v0, v1, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageFromTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/DateUtil;->getHourInMilliTime(J)I

    move-result v2

    iput v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartHour:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/DateUtil;->getMinuteInMilliTime(J)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartMinute:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartTimePreference:Lmiui/preference/ValuePreference;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartHour:I

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartMinute:I

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/DateUtil;->getFormatTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageOverLimitWarning()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLeisureLimitSelected:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimit:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLeisureLimitSelected:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageToTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/DateUtil;->getHourInMilliTime(J)I

    move-result v2

    iput v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndHour:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/DateUtil;->getMinuteInMilliTime(J)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndMinute:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndTimePreference:Lmiui/preference/ValuePreference;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndHour:I

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndMinute:I

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/DateUtil;->getFormatTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->initExtraPackage()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->initHalfYearPackage()V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initExtraPackage()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverlayPackageTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/utils/DateUtil;->isCurrentCycleMonth(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverlayPackage()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mExtraPackagePreference:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mAppContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v0, v1, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initHalfYearPackage()V
    .locals 5

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isHalfYearPackageEnable()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficValue:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficStart:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getHalfYearPackageValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficValue:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v0, v1, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getHalfYearPackageBeginTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficStart:Lmiui/preference/ValuePreference;

    invoke-static {v0, v1, v4}, Lcom/miui/networkassistant/utils/DateUtil;->formatDataTime(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private setChanged()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mChanged:Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getXmlPreference()I
    .locals 1

    const v0, 0x7f050028

    return v0
.end method

.method protected initPreferenceView()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const-string/jumbo v0, "pref_key_leisure_traffic_setting_switch"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureSettingCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureSettingCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "pref_key_leisure_traffic"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficPreference:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string/jumbo v0, "pref_key_start_time"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartTimePreference:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartTimePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartTimePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string/jumbo v0, "pref_key_end_time"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndTimePreference:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndTimePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndTimePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string/jumbo v0, "pref_key_extra_traffic"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mExtraPackagePreference:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mExtraPackagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mExtraPackagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_data_usage_ignore_settings"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDataUsageIgnorePreference:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDataUsageIgnorePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDataUsageIgnorePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_key_half_year_traffic_setting_switch"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficPreference:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "pref_key_half_year_traffic"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficValue:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficValue:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficValue:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_key_half_year_start"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficStart:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficStart:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficStart:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_leisure_traffic_limit"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimit:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimit:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimit:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v0, "category_half_year_package"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearCategory:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TimePickerDialog$TimePickerDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mTimePickerDialog:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;

    return-void
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDateChanged(III)V
    .locals 4

    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0, p3}, Lcom/miui/networkassistant/utils/DateUtil;->getSomedayTimeMillis(III)J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setHalfYearPackageBeginTime(J)Z

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficStart:Lmiui/preference/ValuePreference;

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lcom/miui/networkassistant/utils/DateUtil;->formatDataTime(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mServiceConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mChanged:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateTrafficStatusMonitor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->toggleDataUsageAutoCorrection(ZI)V

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isCorrectionEffective()Z

    move-result v1

    if-eqz v1, :cond_1

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->startCorrection(ZIZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureSettingCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->activateComponent(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleLeisureDataUsageOn(Z)Z

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setHalfYearPackageEnable(Z)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficValue:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficStart:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const v6, 0x7f07027f

    const/4 v4, 0x0

    const v2, 0x7f070279

    const/4 v3, 0x2

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficPreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0702d6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0702d7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartTimePreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f070284

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mTimePickerDialog:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;

    invoke-virtual {v1, v0, v5}, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->buildTimePickerdialog(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mTimePickerDialog:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartHour:I

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->setTimePicker(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndTimePreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f070285

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mTimePickerDialog:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;

    invoke-virtual {v1, v0, v3}, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->buildTimePickerdialog(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mTimePickerDialog:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndHour:I

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->setTimePicker(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mExtraPackagePreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDataUsageIgnorePreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v4}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficValue:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficStart:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_7

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/DatePickerDialog$DatePickerDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDatePickerDialog:Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDatePickerDialog:Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->buildDatePickerDialog(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDatePickerDialog:Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->setData(III)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimit:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v1, 0x7f070347

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLeisureLimitSelected:I

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->initAppTrafficIgnoreCount()V

    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f070270

    return v0
.end method

.method public onTimeUpdated(III)V
    .locals 4

    packed-switch p3, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->setChanged()V

    return-void

    :pswitch_0
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartHour:I

    iput p2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartMinute:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartTimePreference:Lmiui/preference/ValuePreference;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartHour:I

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartMinute:I

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/DateUtil;->getFormatTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartHour:I

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartMinute:I

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/DateUtil;->getMillisUsingHM(II)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageFromTime(J)Z

    goto :goto_0

    :pswitch_1
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndHour:I

    iput p2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndMinute:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndTimePreference:Lmiui/preference/ValuePreference;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndHour:I

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndMinute:I

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/DateUtil;->getFormatTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndHour:I

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndMinute:I

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/DateUtil;->getMillisUsingHM(II)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageToTime(J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$2;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;Landroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->postOnUiThread(Lcom/miui/common/a/b/b;)V

    return-void
.end method

.method public onTrafficUpdated(JI)V
    .locals 5

    const/4 v2, 0x2

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageTotal(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficPreference:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, v2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficCorrectionAutoModify(Z)Z

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->setChanged()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mExtraPackagePreference:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, v2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverlayPackage(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverlayPackageTime(J)Z

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateGlobleDataUsage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->setChanged()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setHalfYearPackageValue(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficValue:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, v2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->setChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
