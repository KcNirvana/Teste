.class public Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;
.super Landroid/app/Activity;
.source ""


# static fields
.field public static final BUNDLE_KEY_BODY:Ljava/lang/String; = "bundle_key_body"

.field public static final BUNDLE_KEY_IMSI:Ljava/lang/String; = "bundle_key_imsi"

.field public static final BUNDLE_KEY_IS_STABLE_PKG:Ljava/lang/String; = "bundle_key_is_stable_pkg"

.field public static final BUNDLE_KEY_TRAFFIC_USED_STATUS:Ljava/lang/String; = "bundle_key_traffic_used_status"


# instance fields
.field private mConn:Landroid/content/ServiceConnection;

.field protected mConnected:Z

.field private mDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mShouldSavingPkg:Z

.field private mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

.field protected mSlotNum:I

.field private mStablePkgGet:Z

.field protected mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;)Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mShouldSavingPkg:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->applyDataAndFinish()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mSlotNum:I

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mShouldSavingPkg:Z

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mStablePkgGet:Z

    new-instance v0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$1;-><init>(Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$2;-><init>(Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$3;-><init>(Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method private applyDataAndFinish()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "bundle_key_traffic_used_status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mShouldSavingPkg:Z

    iget v3, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mSlotNum:I

    invoke-interface {v1, v0, v2, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->applyCorrectedPkgsAndUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private bindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->bindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private buildAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030079

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0184

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->show()V

    return-void
.end method

.method private onPackageErrorAlert(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, 0x7f0702ee

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "bundle_key_body"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0702f0

    invoke-virtual {p0, v3}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->buildAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onStablePackageGet(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v0, 0x7f0702e4

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0702e6

    invoke-virtual {p0, v3}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "bundle_key_body"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f0702ed

    invoke-virtual {p0, v3}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->buildAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unbindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->unbindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, p0, v2}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mDialog:Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    const-string/jumbo v0, "bundle_key_imsi"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->bindTrafficManageService()V

    const-string/jumbo v0, ""

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v2, :cond_1

    iput v3, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mSlotNum:I

    const-string/jumbo v0, "sim_slot_num_tag"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "sim_slot_num_tag"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mSlotNum:I

    :goto_0
    iget v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mSlotNum:I

    if-nez v0, :cond_4

    const v0, 0x7f0702fa

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string/jumbo v2, "bundle_key_is_stable_pkg"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mStablePkgGet:Z

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mStablePkgGet:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v1, v0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->onStablePackageGet(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackActiveNetworkAssistant(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mSlotNum:I

    add-int/lit8 v1, v1, 0x30

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->finish()V

    return-void

    :cond_3
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mSlotNum:I

    goto :goto_0

    :cond_4
    const v0, 0x7f0702fb

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->onPackageErrorAlert(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->unbindTrafficManageService()V

    return-void
.end method
