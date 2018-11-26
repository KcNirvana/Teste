.class public Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;
.implements Lcom/miui/networkassistant/ui/dialog/DateShowDialog$DateDialogListener;
.implements Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;
.implements Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;


# static fields
.field private static final ACTION_DAILY_PACKAGE:I = 0x4

.field private static final ACTION_FLAG_DAILY_BRAND:I = 0x7

.field private static final ACTION_FLAG_MANUAL_LEISURE_TRAFFIC:I = 0x6

.field private static final ACTION_FLAG_NORMAL_MONTH_TOTAL:I = 0x1

.field private static final ACTION_SELECT_BRAND:I = 0x3

.field private static final ACTION_USAGE_PACKAGE:I = 0x5

.field private static final MSG_TRAFFIC_MANAGE_SERVICE_CONNECTED:I = 0x1

.field private static final OVER_NORMAL_TRAFFIC_LIMIT:I = 0x2

.field private static final PER_KEY_NORMAL_PACKAGE_SETTING:Ljava/lang/String; = "pref_normal_package_setting"

.field private static final PREF_KEY_ADJUST_USAGE:Ljava/lang/String; = "pref_daily_adjust_traffic"

.field private static final PREF_KEY_AUTO_MODIFY_PACKAGE:Ljava/lang/String; = "pref_key_auto_modify_package"

.field private static final PREF_KEY_DAILY_CARD_BRAND:Ljava/lang/String; = "pref_daily_card_brand"

.field private static final PREF_KEY_DAILY_CARD_PACKAGE:Ljava/lang/String; = "pref_daily_card_package"

.field private static final PREF_KEY_LEISURE_ADJUST_USAGE:Ljava/lang/String; = "pref_leisure_adjust_traffic"

.field private static final PREF_KEY_MONTHLY_PACKAGE:Ljava/lang/String; = "pref_key_monthly_package"

.field private static final PREF_KEY_PACKAGE_TYPE:Ljava/lang/String; = "pref_key_package_type"

.field private static final PREF_KEY_SPECIAL_PACKAGE_SETTING:Ljava/lang/String; = "pref_key_special_package_setting"

.field private static final PREF_MONTH_WARNING:Ljava/lang/String; = "pref_month_warning"

.field private static final PREF_MORE_SETTINGS:Ljava/lang/String; = "pref_more_settings"

.field private static final PREF_NORMAL_TRAFFIC_LIMIT:Ljava/lang/String; = "pref_normal_traffic_limit"

.field private static final PREF_PACKAGE_BEGIN_DATE:Ljava/lang/String; = "pref_package_begin_date"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_FILED:I = 0x7f07028f


# instance fields
.field private mActionBarTipButton:Landroid/widget/Button;

.field private mAdjustUsagePreference:Lmiui/preference/ValuePreference;

.field private mAllNetworkAccessedApps:Ljava/util/List;

.field private mAutoModifyBoxPreference:Landroid/preference/CheckBoxPreference;

.field private mChanged:Z

.field private mDailyCardBrandPreference:Lmiui/preference/ValuePreference;

.field private mDailyCardPackagePreference:Lmiui/preference/ValuePreference;

.field private mHandler:Landroid/os/Handler;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

.field private mIsAppListInited:Z

.field private mLeisureAdjustUsagePreference:Lmiui/preference/ValuePreference;

.field private mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

.field private mMonthCycleDate:Lmiui/preference/ValuePreference;

.field private mMonthWarningPreference:Lmiui/preference/ValuePreference;

.field private mMonthlyPackageCategory:Landroid/preference/PreferenceCategory;

.field private mMorePreferenceCategory:Landroid/preference/PreferenceCategory;

.field private mNormalTrafficLimit:Lmiui/preference/ValuePreference;

.field private mOverLimitOperatorType:[Ljava/lang/String;

.field private mOverNormalLimitSelected:I

.field private mPackageTypePreference:Lmiui/preference/ValuePreference;

.field private mPreNormalMonthPackage:Lmiui/preference/ValuePreference;

.field private mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mSpecialPackageSetting:Lmiui/preference/ValuePreference;

.field private mTrafficLimitChanged:Z

.field private mTrafficPackageType:[Ljava/lang/String;

.field private mTrafficPackageTypeSelected:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mServiceConnected:Z

    return v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    return-object v0
.end method

.method static synthetic -get7(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    return v0
.end method

.method static synthetic -get8(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageType:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    return v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mIsAppListInited:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->initData()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mIsAppListInited:Z

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initData()V
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updatePreference()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActionBarTipButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSupportCorrection()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMorePreferenceCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAutoModifyBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAutoModifyBoxPreference:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficCorrectionAutoModify()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiui/preference/ValuePreference;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v4, v2, v3, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->setMonthWarningPreferenceValue(F)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->setMonthCycleDate(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageOverLimitStopNetwork()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mOverNormalLimitSelected:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mNormalTrafficLimit:Lmiui/preference/ValuePreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mOverNormalLimitSelected:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiui/preference/ValuePreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiui/preference/ValuePreference;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v4, v2, v3, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    if-gez v0, :cond_6

    :goto_3
    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreference:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageType:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mLeisureAdjustUsagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_4
    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMorePreferenceCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAutoModifyBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiui/preference/ValuePreference;

    const v2, 0x7f070271

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setValue(I)V

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mLeisureAdjustUsagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method private registerMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    return-void
.end method

.method private setIgnoreApps(Ljava/util/List;)V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mIsAppListInited:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIgnoreApps fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mServiceConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mIsAppListInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5, v4}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->setDataUsageIgnore(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isDataUsageIgnore"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    const/4 v4, 0x1

    invoke-interface {v2, v0, v4, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->setDataUsageIgnore(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isDataUsageIgnore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    return-void
.end method

.method private setMonthCycleDate(I)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "%d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f07028c

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthCycleDate:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private setMonthWarningPreferenceValue(F)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "%d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const v0, 0x7f0701dd

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthWarningPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private showChangePackageTypeDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070280

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070281

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showPermanentNotificationStatusBar(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_network_assistant"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070300

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private unRegisterMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    :cond_0
    return-void
.end method

.method private updatePreference()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAdjustUsagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f07026b

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSpecialPackageSetting:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAdjustUsagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f07026a

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method protected getXmlPreference()I
    .locals 1

    const v0, 0x7f050020

    return v0
.end method

.method protected initPreferenceView()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "pref_key_monthly_package"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "pref_key_package_type"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreference:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageType:[Ljava/lang/String;

    const-string/jumbo v0, "pref_normal_package_setting"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_key_special_package_setting"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSpecialPackageSetting:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSpecialPackageSetting:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSpecialPackageSetting:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_month_warning"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthWarningPreference:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthWarningPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthWarningPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_package_begin_date"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthCycleDate:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthCycleDate:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthCycleDate:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_daily_card_package"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_daily_card_brand"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_daily_adjust_traffic"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAdjustUsagePreference:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAdjustUsagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAdjustUsagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_leisure_adjust_traffic"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mLeisureAdjustUsagePreference:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mLeisureAdjustUsagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mLeisureAdjustUsagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_key_auto_modify_package"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAutoModifyBoxPreference:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAutoModifyBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "pref_more_settings"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMorePreferenceCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "pref_normal_traffic_limit"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mNormalTrafficLimit:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mNormalTrafficLimit:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mNormalTrafficLimit:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->registerMonitorCenter()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mChanged:Z

    :cond_0
    return-void
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 5

    const/4 v4, -0x2

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActionBarTipButton:Landroid/widget/Button;

    sget v0, Lmiui/R$drawable;->icon_info_light:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActionBarTipButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAppContext:Landroid/content/Context;

    const v3, 0x7f07027b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActionBarTipButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActionBarTipButton:Landroid/widget/Button;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800015

    invoke-direct {v0, v4, v4, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActionBarTipButton:Landroid/widget/Button;

    invoke-virtual {p1, v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onDateUpdated(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->setMonthCycleDate(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveMonthStart(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mChanged:Z

    return-void
.end method

.method public onDestroy()V
    .locals 5

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mChanged:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateTrafficStatusMonitor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->toggleDataUsageAutoCorrection(ZI)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isCorrectionEffective()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->startCorrection(ZIZI)Z

    :cond_1
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficLimitChanged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateTrafficStatusMonitor(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficTcResultCode(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillTcResultCode(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSmsDetail(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSmsDetail(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->unRegisterMonitorCenter()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "update failed onDestroy "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOptionUpdated(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_show_network_assistant"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAutoModifyBoxPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficCorrectionAutoModify(Z)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9

    const v4, 0x7f07027d

    const v3, 0x7f07026a

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSpecialPackageSetting:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthWarningPreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_3

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f070274

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->buildDateDialog(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->setData(JF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "get current package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthCycleDate:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_4

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/DateShowDialog$DateDialogListener;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f07027a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->buildDateDialog(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->showChangePackageTypeDialog()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mNormalTrafficLimit:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v1, 0x7f070347

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mOverNormalLimitSelected:I

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f07026d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandNameList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardBrand()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    if-ltz v1, :cond_7

    :goto_1
    const/4 v2, 0x7

    invoke-virtual {v4, v3, v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAdjustUsagePreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f070286

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f070289

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mLeisureAdjustUsagePreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v4

    const-string/jumbo v0, ""

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isLargeScaleMode()Z

    move-result v1

    if-nez v1, :cond_b

    const v0, 0x7f07028a

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_b
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    const v3, 0x7f070287

    invoke-virtual {p0, v3}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v7, v4, v5, v2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v1, v3, v0, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->setMaxValue(J)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->initData()V

    return-void
.end method

.method public onSeekBarChanged(F)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->setMonthWarningPreferenceValue(F)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageWarning(F)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mChanged:Z

    return-void
.end method

.method public onSelectItemUpdate(II)V
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mChanged:Z

    return-void

    :pswitch_1
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreference:Lmiui/preference/ValuePreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageType:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBrand(I)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updatePreference()V

    goto :goto_0

    :pswitch_2
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mNormalTrafficLimit:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v3, v0, v3

    if-ne p1, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageOverLimitStopNetwork(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v3

    if-ne p1, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkOn(Z)Z

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficLimitChanged:Z

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v2, v2, v3

    iget-object v3, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardBrand(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiui/preference/ValuePreference;

    iget-object v3, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v2, v2, v3

    iget-wide v4, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->monthPackage:J

    invoke-virtual {v2, v4, v5}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAppContext:Landroid/content/Context;

    iget-wide v4, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->monthPackage:J

    invoke-static {v3, v4, v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v2, v2, v3

    iget-wide v4, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->dailyPackage:J

    invoke-virtual {v2, v4, v5}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardPackage(J)Z

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAppContext:Landroid/content/Context;

    iget-wide v4, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->dailyPackage:J

    invoke-static {v3, v4, v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->ignoreApps:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->setIgnoreApps(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f07028f

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onTrafficUpdated(JI)V
    .locals 3

    const/4 v2, 0x2

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mChanged:Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->showPermanentNotificationStatusBar(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, v2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateGlobleDataUsage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveMonthStart(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficCorrectionAutoModify(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDataUsageOverLimit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNormalTotalPackageNotSetted(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardPackage(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, v2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    invoke-interface {v0, p1, p2, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->manualCorrectNormalDataUsage(JI)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateGlobleDataUsage(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "manual normal traffic"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :pswitch_4
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSlotNum:I

    invoke-interface {v0, p1, p2, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->manualCorrectLeisureDataUsage(JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "manual leisure traffic"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
