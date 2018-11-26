.class public Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;
.super Lcom/miui/common/a/a/a;
.source ""


# static fields
.field private static final PREF_KEY_NEW_INSTALLED_APP_FIREWALL_MOBILE1:Ljava/lang/String; = "pref_key_new_installed_app_firewall_mobile1"

.field private static final PREF_KEY_NEW_INSTALLED_APP_FIREWALL_MOBILE2:Ljava/lang/String; = "pref_key_new_installed_app_firewall_mobile2"

.field private static final PREF_KEY_NEW_INSTALLED_APP_FIREWALL_WIFI:Ljava/lang/String; = "pref_key_new_installed_app_firewall_wifi"

.field private static final TITLE_FILED:I = 0x7f07024b


# instance fields
.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mIsDualSimInserted:Z

.field private mMobileClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMobileClickListener2:Landroid/content/DialogInterface$OnClickListener;

.field private mMobilePreConfig:[Landroid/preference/CheckBoxPreference;

.field private mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

.field private mWifiClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mWifiPreConfig:Landroid/preference/CheckBoxPreference;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)[Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mWifiPreConfig:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->handleMobileDialogClick(II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->showMobileCloseDialog(IZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->showWifiCloseDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/miui/common/a/a/a;-><init>()V

    new-array v0, v1, [Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroid/preference/CheckBoxPreference;

    new-array v0, v1, [Lcom/miui/networkassistant/config/SimUserInfo;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobileClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobileClickListener2:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mWifiClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private handleMobileDialogClick(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p2

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setFirewallMobilePreConfig(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroid/preference/CheckBoxPreference;

    aget-object v0, v0, p2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private initMobilePreference(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroid/preference/CheckBoxPreference;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v0, p1

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getFirewallMobilePreConfig()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDualCardMobileConfig()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mIsDualSimInserted:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->setMobilePreference(I)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->setMobilePreference(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->initMobilePreference(I)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-nez v2, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroid/preference/CheckBoxPreference;

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private setMobilePreference(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getDualCardTitle(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroid/preference/CheckBoxPreference;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->initMobilePreference(I)V

    return-void
.end method

.method private showMobileCloseDialog(IZ)V
    .locals 3

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobileClickListener:Landroid/content/DialogInterface$OnClickListener;

    :goto_0
    new-instance v1, Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0701d5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f070221

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->show()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobileClickListener2:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setFirewallMobilePreConfig(I)Z

    goto :goto_1
.end method

.method private showWifiCloseDialog()V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mWifiClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0701d5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f070222

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->show()V

    return-void
.end method


# virtual methods
.method protected getXmlPreference()I
    .locals 1

    const v0, 0x7f050017

    return v0
.end method

.method protected initPreferenceView()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mIsDualSimInserted:Z

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_key_new_installed_app_firewall_mobile1"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    aput-object v0, v3, v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_key_new_installed_app_firewall_mobile2"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    aput-object v0, v3, v1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->setDualCardMobileConfig()V

    const-string/jumbo v0, "pref_key_new_installed_app_firewall_wifi"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mWifiPreConfig:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mWifiPreConfig:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mWifiPreConfig:Landroid/preference/CheckBoxPreference;

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v0

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/CommonConfig;->getFirewallWifiPreConfig()I

    move-result v4

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f07024b

    return v0
.end method
