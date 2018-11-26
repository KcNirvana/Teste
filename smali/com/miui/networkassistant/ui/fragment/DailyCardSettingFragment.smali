.class public Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;


# static fields
.field private static final ACTION_FLAG_DAILY_BRAND:I = 0x1

.field private static final ACTION_FLAG_DAILY_PACKAGE:I = 0x3

.field private static final ACTION_FLAG_MONTH_PACKAGE:I = 0x2

.field private static final PREF_KEY_DAILY_BRAND:Ljava/lang/String; = "pref_key_brand"

.field private static final PREF_KEY_DAILY_PACKAGE:Ljava/lang/String; = "pref_key_daily_package"

.field private static final PREF_KEY_IGNORE_APPS:Ljava/lang/String; = "pref_key_ignore_apps"

.field private static final PREF_KEY_MONTH_PACKAGE:Ljava/lang/String; = "pref_key_month_package"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllNetworkAccessedApps:Ljava/util/List;

.field private mDailyBrand:Ljava/lang/String;

.field private mDailyBrandPreference:Lmiui/preference/ValuePreference;

.field private mDailyPackage:J

.field private mDailyPackagePreference:Lmiui/preference/ValuePreference;

.field private mEndButton:Landroid/widget/Button;

.field private mIgnoreApps:Ljava/util/List;

.field private mIgnoreAppsPreference:Lmiui/preference/ValuePreference;

.field private mIsAppListInited:Z

.field private mItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

.field private mMonthPackage:J

.field private mMonthPackagePreference:Lmiui/preference/ValuePreference;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIgnoreApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mServiceConnected:Z

    return v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSlotNum:I

    return v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIgnoreApps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set2(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIsAppListInited:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackage:J

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackage:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIsAppListInited:Z

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    return-void
.end method

.method private checkValidate()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackage:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackage:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private navigateToMainActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "sim_slot_num_tag"

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSlotNum:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isNATipsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TrafficUpdateUtil;->broadCastTrafficUpdated(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private registerMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    return-void
.end method

.method private resetIgnoreApps()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIgnoreApps:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->setIgnoreApps(Ljava/util/List;)V

    return-void
.end method

.method private setIgnoreApps(Ljava/util/List;)V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIsAppListInited:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIgnoreApps fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mServiceConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIsAppListInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

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
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSlotNum:I

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5, v4}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->setDataUsageIgnore(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSlotNum:I

    const/4 v4, 0x1

    invoke-interface {v2, v0, v4, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->setDataUsageIgnore(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isDataUsageIgnore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    return-void
.end method

.method private startCorrection()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    xor-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSlotNum:I

    invoke-interface {v2, v1, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->toggleDataUsageAutoCorrection(ZI)V

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSlotNum:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->startCorrection(ZIZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x7

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stat Correction exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private unRegisterMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getXmlPreference()I
    .locals 1

    const v0, 0x7f05000c

    return v0
.end method

.method protected initPreferenceView()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f0702a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "pref_key_brand"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrandPreference:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "pref_key_daily_package"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackagePreference:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "pref_key_month_package"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackagePreference:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "pref_key_ignore_apps"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIgnoreAppsPreference:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrandPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIgnoreAppsPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrandPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIgnoreAppsPreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrand:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrandPreference:Lmiui/preference/ValuePreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrand:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackagePreference:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->registerMonitorCenter()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBrand(I)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->resetIgnoreApps()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardBrand(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackage:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackage:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardPackage(J)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->startCorrection()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->navigateToMainActivity()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1020019
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    sget v0, Lmiui/R$layout;->edit_mode_title:I

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v0, 0x1020016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f07029c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x1020019

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f07029d

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x102001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mEndButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mEndButton:Landroid/widget/Button;

    const v1, 0x7f07029e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return v3
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->unRegisterMonitorCenter()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const v3, 0x7f07027e

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrandPreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f0702a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandNameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrand:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    if-ltz v1, :cond_1

    :goto_0
    invoke-virtual {v4, v3, v0, v1, v5}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    :cond_0
    :goto_1
    return v5

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackagePreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_3

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0702b7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackagePreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_4

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0702b8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIgnoreAppsPreference:Lmiui/preference/ValuePreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_1
.end method

.method public onSelectItemUpdate(II)V
    .locals 7

    const/4 v6, 0x2

    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->checkValidate()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    iget-object v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandName:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrand:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrandPreference:Lmiui/preference/ValuePreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->monthPackage:J

    iput-wide v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackage:J

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackagePreference:Lmiui/preference/ValuePreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAppContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackage:J

    invoke-static {v2, v4, v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->dailyPackage:J

    iput-wide v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackage:J

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackagePreference:Lmiui/preference/ValuePreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAppContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackage:J

    invoke-static {v2, v4, v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->ignoreApps:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->setIgnoreApps(Ljava/util/List;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 4

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTrafficManageServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIsAppListInited:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

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

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mSlotNum:I

    invoke-interface {v2, v0, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->isDataUsageIgnore(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIgnoreApps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isDataUsageIgnore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTrafficUpdated(JI)V
    .locals 5

    const/4 v4, 0x2

    packed-switch p3, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->checkValidate()V

    return-void

    :pswitch_0
    iput-wide p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackage:J

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackagePreference:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAppContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackage:J

    invoke-static {v1, v2, v3, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iput-wide p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackage:J

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackagePreference:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAppContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackage:J

    invoke-static {v1, v2, v3, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
