.class public Lcom/miui/networkassistant/ui/fragment/SettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final MSG_TRAFFIC_MANAGE_SERVICE_CONNECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NASettingFragment"

.field private static final TITLE_FILED:I = 0x7f07028d


# instance fields
.field private final PREF_CATEGORY_KEY_TRAFFIC:Ljava/lang/String;

.field private final PREF_CATEGORY_KEY_TRAFFIC2:Ljava/lang/String;

.field private final PREF_KEY_DECLARATION:Ljava/lang/String;

.field private final PREF_KEY_LIMIT_TRAFFIC_PER_DAY:Ljava/lang/String;

.field private final PREF_KEY_LIMIT_TRAFFIC_PER_DAY2:Ljava/lang/String;

.field private final PREF_KEY_MI_SIM_SETTING:Ljava/lang/String;

.field private final PREF_KEY_MI_SIM_SETTINGS2:Ljava/lang/String;

.field private final PREF_KEY_PACKAGE_TRAFFIC:Ljava/lang/String;

.field private final PREF_KEY_PACKAGE_TRAFFIC2:Ljava/lang/String;

.field private final PREF_KEY_TRAFFIC_CORRECTION:Ljava/lang/String;

.field private final PREF_KEY_TRAFFIC_CORRECTION2:Ljava/lang/String;

.field private final PREF_KEY_UPLOAD_DATA_USAGE:Ljava/lang/String;

.field private final PREF_SHOW_NETWORK_SPEED:Ljava/lang/String;

.field private final PREF_SHOW_TRAFFIC_NOTIFICATION:Ljava/lang/String;

.field private final PREF_TRAFFIC_MANAGE:Ljava/lang/String;

.field private final PREF_TRAFFIC_MANAGE2:Ljava/lang/String;

.field private mDeclarationPreference:Landroid/preference/Preference;

.field private mDisplayTrafficInBar:I

.field private mHandler:Landroid/os/Handler;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

.field private mLimitTrafficPreferences:[Landroid/preference/Preference;

.field private mMiSimSettingPreferences:[Landroid/preference/Preference;

.field private final mNetworkSpeedObserver:Landroid/database/ContentObserver;

.field private mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

.field private final mPermanentNotificationEnableObserver:Landroid/database/ContentObserver;

.field private mShowNetworkSpeed:Landroid/preference/CheckBoxPreference;

.field private mShowNetworkSpeedBar:I

.field private mShowTrafficNotification:Landroid/preference/CheckBoxPreference;

.field private mTrafficCorrectionPreferences:[Lmiui/preference/ValuePreference;

.field private mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

.field private mTrafficManagerPreferences:[Landroid/preference/CheckBoxPreference;

.field private mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

.field private mUploadDataUsagePreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mServiceConnected:Z

    return v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSlotNum:I

    return v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initData()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initNetworkSpeedCheckboxPref()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initTrafficNotificationCheckboxPref()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    const-string/jumbo v0, "category_key_traffic"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_CATEGORY_KEY_TRAFFIC:Ljava/lang/String;

    const-string/jumbo v0, "pref_key_package_traffic"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_PACKAGE_TRAFFIC:Ljava/lang/String;

    const-string/jumbo v0, "pref_key_traffic_correction"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_TRAFFIC_CORRECTION:Ljava/lang/String;

    const-string/jumbo v0, "pref_key_limit_traffic_per_day"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_LIMIT_TRAFFIC_PER_DAY:Ljava/lang/String;

    const-string/jumbo v0, "pref_key_mi_sim_settings"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_MI_SIM_SETTING:Ljava/lang/String;

    const-string/jumbo v0, "pref_traffic_manage"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_TRAFFIC_MANAGE:Ljava/lang/String;

    const-string/jumbo v0, "category_key_traffic2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_CATEGORY_KEY_TRAFFIC2:Ljava/lang/String;

    const-string/jumbo v0, "pref_key_package_traffic2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_PACKAGE_TRAFFIC2:Ljava/lang/String;

    const-string/jumbo v0, "pref_key_traffic_correction2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_TRAFFIC_CORRECTION2:Ljava/lang/String;

    const-string/jumbo v0, "pref_key_limit_traffic_per_day2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_LIMIT_TRAFFIC_PER_DAY2:Ljava/lang/String;

    const-string/jumbo v0, "pref_key_mi_sim_settings2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_MI_SIM_SETTINGS2:Ljava/lang/String;

    const-string/jumbo v0, "pref_traffic_manage2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_TRAFFIC_MANAGE2:Ljava/lang/String;

    const-string/jumbo v0, "pref_show_traffic_notification"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_SHOW_TRAFFIC_NOTIFICATION:Ljava/lang/String;

    const-string/jumbo v0, "pref_show_traffic_speed_state"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_SHOW_NETWORK_SPEED:Ljava/lang/String;

    const-string/jumbo v0, "pref_key_declaration"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_DECLARATION:Ljava/lang/String;

    const-string/jumbo v0, "pref_key_upload_data_usage"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_UPLOAD_DATA_USAGE:Ljava/lang/String;

    new-array v0, v1, [Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    new-array v0, v1, [Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficManagerPreferences:[Landroid/preference/CheckBoxPreference;

    new-array v0, v1, [Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

    new-array v0, v1, [Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficCorrectionPreferences:[Lmiui/preference/ValuePreference;

    new-array v0, v1, [Landroid/preference/Preference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mLimitTrafficPreferences:[Landroid/preference/Preference;

    new-array v0, v1, [Landroid/preference/Preference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mMiSimSettingPreferences:[Landroid/preference/Preference;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPermanentNotificationEnableObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    return-void
.end method

.method private initData()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->isAttatched()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->setSimTitle()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initSimRelated(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initSimRelated(I)V

    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initSimRelated(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->removeNoSimCardCategory(I)V

    goto :goto_0
.end method

.method private initNetworkSpeedCheckboxPref()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "status_bar_show_network_speed"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeedBar:I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeed:Landroid/preference/CheckBoxPreference;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeedBar:I

    if-ne v0, v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private initSimRelated(I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficManageControlEnable()Z

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v3

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v4

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficManagerPreferences:[Landroid/preference/CheckBoxPreference;

    aget-object v5, v5, p1

    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updateTrafficPreference(IZ)V

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mMiSimSettingPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, p1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->getSimName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const v1, 0x7f07024d

    invoke-virtual {p0, v1, v5}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficManagerPreferences:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mMiSimSettingPreferences:[Landroid/preference/Preference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_3
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->isTotalDataUsageSetted(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    xor-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->showOperatorSettings(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, v7}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficCorrectionPreferences:[Lmiui/preference/ValuePreference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_4
    if-eqz v2, :cond_6

    xor-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->isTotalDataUsageSetted(I)Z

    move-result v0

    if-eqz v0, :cond_6

    xor-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mLimitTrafficPreferences:[Landroid/preference/Preference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_5
    return-void

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficManagerPreferences:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mMiSimSettingPreferences:[Landroid/preference/Preference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

    aget-object v0, v0, p1

    const v1, 0x7f070271

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficCorrectionPreferences:[Lmiui/preference/ValuePreference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mLimitTrafficPreferences:[Landroid/preference/Preference;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method private initTrafficNotificationCheckboxPref()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "status_bar_show_network_assistant"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mDisplayTrafficInBar:I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowTrafficNotification:Landroid/preference/CheckBoxPreference;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mDisplayTrafficInBar:I

    if-ne v0, v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isTotalDataUsageSetted(I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v0

    return v0
.end method

.method private overseaAdjustManually(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mServiceConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    if-nez v0, :cond_1

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSlotNum:I

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    const v1, 0x7f070286

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070289

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto :goto_0
.end method

.method private registerNetworkSpeedObserver()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_network_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerPermanentNotificationEnableObserver()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_network_assistant"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPermanentNotificationEnableObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private removeNoSimCardCategory(I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private setSimTitle()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f0702fa

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->setSimTitle(II)V

    const/4 v0, 0x1

    const v1, 0x7f0702fb

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->setSimTitle(II)V

    return-void
.end method

.method private setSimTitle(II)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "%s(%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSimName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showOperatorSettings(I)V
    .locals 2

    const-string/jumbo v0, "MIMOBILE"

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isMiMobileOperatorModify()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method private unRegisterNetworkSpeedObserver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterPermanentNotificationEnableObserver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPermanentNotificationEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateTrafficPreference(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficManagerPreferences:[Landroid/preference/CheckBoxPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficCorrectionPreferences:[Lmiui/preference/ValuePreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mLimitTrafficPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected getXmlPreference()I
    .locals 1

    const v0, 0x7f050025

    return v0
.end method

.method protected initPreferenceView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "category_key_traffic"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "pref_key_package_traffic"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficCorrectionPreferences:[Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "pref_key_traffic_correction"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mLimitTrafficPreferences:[Landroid/preference/Preference;

    const-string/jumbo v1, "pref_key_limit_traffic_per_day"

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mMiSimSettingPreferences:[Landroid/preference/Preference;

    const-string/jumbo v1, "pref_key_mi_sim_settings"

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficManagerPreferences:[Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_traffic_manage"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficCorrectionPreferences:[Lmiui/preference/ValuePreference;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mLimitTrafficPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mMiSimSettingPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficManagerPreferences:[Landroid/preference/CheckBoxPreference;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficCorrectionPreferences:[Lmiui/preference/ValuePreference;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "category_key_traffic2"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "pref_key_package_traffic2"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficCorrectionPreferences:[Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "pref_key_traffic_correction2"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mLimitTrafficPreferences:[Landroid/preference/Preference;

    const-string/jumbo v1, "pref_key_limit_traffic_per_day2"

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mMiSimSettingPreferences:[Landroid/preference/Preference;

    const-string/jumbo v1, "pref_key_mi_sim_settings2"

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficManagerPreferences:[Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_traffic_manage2"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    aput-object v0, v1, v2

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficCorrectionPreferences:[Lmiui/preference/ValuePreference;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mLimitTrafficPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mMiSimSettingPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficManagerPreferences:[Landroid/preference/CheckBoxPreference;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficCorrectionPreferences:[Lmiui/preference/ValuePreference;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    :goto_0
    const-string/jumbo v0, "pref_show_traffic_notification"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowTrafficNotification:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_show_traffic_speed_state"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeed:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowTrafficNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeed:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "pref_key_declaration"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mDeclarationPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mDeclarationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_key_upload_data_usage"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mUploadDataUsagePreference:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mUploadDataUsagePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mUploadDataUsagePreference:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/monthreport/m;->bvv()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initTrafficNotificationCheckboxPref()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initNetworkSpeedCheckboxPref()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficPreferenceCategorys:[Landroid/preference/PreferenceCategory;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->registerNetworkSpeedObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->registerPermanentNotificationEnableObserver()V

    return-void
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->unRegisterNetworkSpeedObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->unRegisterPermanentNotificationEnableObserver()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowTrafficNotification:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mDisplayTrafficInBar:I

    if-eq v2, v0, :cond_1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mDisplayTrafficInBar:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "status_bar_show_network_assistant"

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mDisplayTrafficInBar:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeed:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_4

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeedBar:I

    if-eq v2, v0, :cond_1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeedBar:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "status_bar_show_network_speed"

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeedBar:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficManagerPreferences:[Landroid/preference/CheckBoxPreference;

    aget-object v3, v3, v0

    if-ne p1, v3, :cond_5

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficManageControlEnable(Z)Z

    invoke-direct {p0, v0, v2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updateTrafficPreference(IZ)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficManagerPreferences:[Landroid/preference/CheckBoxPreference;

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficManageControlEnable(Z)Z

    invoke-direct {p0, v1, v2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updateTrafficPreference(IZ)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mUploadDataUsagePreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    invoke-static {v2}, Lcom/miui/monthreport/m;->bvw(Z)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot1()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficCorrectionPreferences:[Lmiui/preference/ValuePreference;

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSmsAvailable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->overseaAdjustManually(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot1()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mDeclarationPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_5

    const v0, 0x7f07024a

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070288

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageTrafficPreferences:[Lmiui/preference/ValuePreference;

    aget-object v0, v0, v4

    if-ne p1, v0, :cond_6

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot2()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficCorrectionPreferences:[Lmiui/preference/ValuePreference;

    aget-object v0, v0, v4

    if-ne p1, v0, :cond_9

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSmsAvailable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    :cond_7
    invoke-direct {p0, v4}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->overseaAdjustManually(I)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot2()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mLimitTrafficPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_a

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot1()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mLimitTrafficPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, v4

    if-ne p1, v0, :cond_b

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot2()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mMiSimSettingPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, v1

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mMiSimSettingPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, v4

    if-ne p1, v0, :cond_0

    :cond_c
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mAppContext:Landroid/content/Context;

    const-string/jumbo v1, "assistInfo"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->startVirtualSimActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initData()V

    return-void
.end method

.method protected onSetTitle()I
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "extra_settings_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->setTitle(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    const v0, 0x7f07028d

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected resetTitle()V
    .locals 0

    return-void
.end method
