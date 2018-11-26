.class public Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;
.super Lcom/miui/common/a/a/a;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final CATEGORY_DOMESTIC_ROAMING_SETTING:Ljava/lang/String; = "category_domestic_roaming_setting"

.field private static final CATEGORY_ROAMING_LIMIT_SETTING:Ljava/lang/String; = "category_roaming_limit_setting"

.field private static final CATEGORY_ROAMING_SETTING:Ljava/lang/String; = "category_roaming_setting"

.field private static final PREF_ALLOW_CONNECT_NETWORK_SWITCH:Ljava/lang/String; = "pref_allow_connect_network_switch"

.field private static final PREF_KEY_DOMESTIC_ROAMING:Ljava/lang/String; = "pref_key_domestic_roaming"

.field private static final PREF_KEY_OVER_LIMIT_OPT:Ljava/lang/String; = "pref_key_over_limit_opt"

.field private static final PREF_KEY_ROAMING_DAILY_LIMIT:Ljava/lang/String; = "pref_key_roaming_daily_limit"

.field private static final PREF_KEY_ROAMING_DAILY_LIMIT_VALUE:Ljava/lang/String; = "pref_key_roaming_daily_limit_value"

.field private static final PREF_WHITE_LIST_SETTING:Ljava/lang/String; = "pref_whitelist_setting"

.field private static final ROAMING_TYPE_ALWAYS:I = 0x0

.field private static final ROAMING_TYPE_EXCEPTIONS:I = 0x1

.field private static final ROAMING_TYPE_NEVER:I = 0x2

.field private static final SINGLE_CHOICE_OPT_TYPE_FLAG:I = 0x1

.field private static final SINGLE_CHOICE_ROAMING_TYPE_FLAG:I = 0x2

.field private static final TITLE_FILED:I = 0x7f070328

.field private static sDefaultEnableList:Ljava/util/List;


# instance fields
.field private mAllowNetworkPreference:Lmiui/preference/ValuePreference;

.field private mAllowNetworkType:I

.field private mAllowNetworkTypeArray:[Ljava/lang/String;

.field private mChoiceIndex:I

.field private mChoiceItemsDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mDomesticRoamingCategory:Landroid/preference/PreferenceCategory;

.field private mDomesticRoamingSwitch:Landroid/preference/CheckBoxPreference;

.field private mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

.field private mFirewallConn:Landroid/content/ServiceConnection;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

.field private mOverLimitOptType:Lmiui/preference/ValuePreference;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mRoamingDailyLimitCheckBox:Landroid/preference/CheckBoxPreference;

.field private mRoamingDailyLimitValuePreference:Lmiui/preference/ValuePreference;

.field private mRoamingLimitCategory:Landroid/preference/PreferenceCategory;

.field private mRoamingSettingCategory:Landroid/preference/PreferenceCategory;

.field protected mServiceConnected:Z

.field private mSettedChanged:Z

.field private mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

.field private mSingleChoiceItemsArray:[Ljava/lang/String;

.field private mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mSlotNum:I

.field private mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

.field protected mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

.field private mTrafficManageConn:Landroid/content/ServiceConnection;

.field private mWhiteListSettingPreference:Lmiui/preference/ValuePreference;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkType:I

    return v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptType:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitValuePreference:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSingleChoiceItemsArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mChoiceIndex:I

    return p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;Lcom/miui/networkassistant/service/IFirewallBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    return-object p1
.end method

.method static synthetic -set2(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSettedChanged:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->checkShowWarningDialog(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->initData()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->initRoamingButtonState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;Lcom/miui/common/a/b/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->postOnUiThread(Lcom/miui/common/a/b/b;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->updateRoamingType(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->sDefaultEnableList:Ljava/util/List;

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->sDefaultEnableList:Ljava/util/List;

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->sDefaultEnableList:Ljava/util/List;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->sDefaultEnableList:Ljava/util/List;

    const-string/jumbo v1, "com.miui.virtualsim"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->sDefaultEnableList:Ljava/util/List;

    const-string/jumbo v1, "com.mipay.wallet"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->sDefaultEnableList:Ljava/util/List;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/a/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSlotNum:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mChoiceItemsDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficManageConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method private bindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficManageConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->bindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private checkShowWarningDialog(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isNoMoreAskRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->updateRoamingType(I)V

    return-void

    :cond_0
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07021a

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070341

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)V

    const v2, 0x7f070343

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070342

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private initData()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAppContext:Landroid/content/Context;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSlotNum:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingDailyLimitEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitValuePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptType:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingDailyLimitTraffic()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitValuePreference:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingOverLimitOptType()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mChoiceIndex:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptType:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSingleChoiceItemsArray:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mChoiceIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initRoamingButtonState()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getDataRoamingEnabled(Landroid/content/Context;)Z

    move-result v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getDataRoamingWhiteListEnable()Z

    move-result v0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreference:Lmiui/preference/ValuePreference;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkTypeArray:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iput v5, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkType:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->updateDefaultEnabledList()V

    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingAppExceptionVisible(Z)V

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingLimitVisible(Z)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreference:Lmiui/preference/ValuePreference;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkTypeArray:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkType:I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreference:Lmiui/preference/ValuePreference;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkTypeArray:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iput v6, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkType:I

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingAppExceptionVisible(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private showRoamingAppExceptionVisible(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingSettingCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "pref_whitelist_setting"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingSettingCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mWhiteListSettingPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingSettingCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mWhiteListSettingPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private showRoamingLimitVisible(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "category_roaming_limit_setting"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingLimitCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingLimitCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private unbindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficManageConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->unbindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private updateAllowRoamingAppCount()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-interface {v0, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->getRoamingAppCountByRule(Lcom/miui/networkassistant/model/FirewallRule;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    :goto_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAppContext:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mWhiteListSettingPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private updateDefaultEnabledList()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isRoamingAppWhiteListDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setRoamingAppWhiteListDefault(Z)Z

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->sDefaultEnableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    sget-object v3, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-interface {v2, v0, v3}, Lcom/miui/networkassistant/service/IFirewallBinder;->setRoamingRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->updateAllowRoamingAppCount()V

    return-void
.end method

.method private updateRoamingType(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkType:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreference:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkTypeArray:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->setDataRoamingEnabled(Landroid/content/Context;Z)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/IFirewallBinder;->setRoamingWhiteListEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/CommonConfig;->setRoamingWhiteListNotifyEnable(Z)Z

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingLimitVisible(Z)V

    invoke-direct {p0, v3}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingAppExceptionVisible(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->setDataRoamingEnabled(Landroid/content/Context;Z)V

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/IFirewallBinder;->setRoamingWhiteListEnable(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingLimitVisible(Z)V

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingAppExceptionVisible(Z)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/miui/networkassistant/utils/TelephonyUtil;->setDataRoamingEnabled(Landroid/content/Context;Z)V

    :try_start_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/IFirewallBinder;->setRoamingWhiteListEnable(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    invoke-direct {p0, v3}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingLimitVisible(Z)V

    invoke-direct {p0, v3}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingAppExceptionVisible(Z)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getXmlPreference()I
    .locals 1

    const v0, 0x7f050010

    return v0
.end method

.method protected initPreferenceView()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSlotNum:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallConn:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/common/b/n;->aIK(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "category_roaming_setting"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingSettingCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "category_roaming_limit_setting"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingLimitCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "pref_allow_connect_network_switch"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreference:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "pref_whitelist_setting"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mWhiteListSettingPreference:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mWhiteListSettingPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v4}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v4}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mWhiteListSettingPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "pref_key_roaming_daily_limit"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitCheckBox:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_key_roaming_daily_limit_value"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitValuePreference:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitValuePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v4}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string/jumbo v0, "pref_key_over_limit_opt"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptType:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptType:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v4}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitValuePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptType:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mChoiceItemsDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSingleChoiceItemsArray:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkTypeArray:[Ljava/lang/String;

    const-string/jumbo v0, "category_domestic_roaming_setting"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mDomesticRoamingCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "pref_key_domestic_roaming"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mDomesticRoamingSwitch:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mDomesticRoamingSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isSupportDomesticRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mDomesticRoamingSwitch:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isDomesticRoamingEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelOpenDataRoamingNotify(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelRoamingDailyLimitWarning(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->bindTrafficManageService()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mDomesticRoamingCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/a/a;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSettedChanged:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->forceCheckRoamingDailyLimitStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->unbindTrafficManageService()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setRoamingDailyLimitEnabled(Z)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitValuePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptType:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSettedChanged:Z

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mDomesticRoamingSwitch:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->setDomesticRoamingEnable(Landroid/content/Context;Z)Z

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mWhiteListSettingPreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitValuePreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    const v1, 0x7f070346

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07033a

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptType:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v1, 0x7f070347

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSingleChoiceItemsArray:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mChoiceIndex:I

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v1, 0x7f070340

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkTypeArray:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkType:I

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/a/a;->onResume()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->updateAllowRoamingAppCount()V

    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f070328

    return v0
.end method
