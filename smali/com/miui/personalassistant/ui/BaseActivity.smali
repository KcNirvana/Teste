.class public Lcom/miui/personalassistant/ui/BaseActivity;
.super Lmiui/app/Activity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;
    }
.end annotation


# instance fields
.field private mNetworkConnectivityReceiver:Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/BaseActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->checkLogin(Landroid/content/Context;)V

    return-void
.end method

.method private checkLogin(Landroid/content/Context;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lmiui/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/personalassistant/utils/XiaomiAccount;->hasLogin(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lmiui/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/miui/personalassistant/ui/BaseActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity$2;-><init>(Lcom/miui/personalassistant/ui/BaseActivity;Landroid/content/Context;)V

    invoke-static {v3}, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->wrap(Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/personalassistant/ui/widget/DetachClickListener;

    move-result-object v1

    new-instance v3, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1b0b0255

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1b0b0252

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1b0b00b2

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1b0b00b3

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->show()V

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->clearOnDetach(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method private registerConnectivityReceiver()V
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/ui/BaseActivity;->mNetworkConnectivityReceiver:Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;-><init>(Lcom/miui/personalassistant/ui/BaseActivity;Lcom/miui/personalassistant/ui/BaseActivity$1;)V

    iput-object v1, p0, Lcom/miui/personalassistant/ui/BaseActivity;->mNetworkConnectivityReceiver:Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/BaseActivity;->mNetworkConnectivityReceiver:Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/personalassistant/ui/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterConnectivityReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseActivity;->mNetworkConnectivityReceiver:Lcom/miui/personalassistant/ui/BaseActivity$NetworkConnectivityChangedReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method protected checkShowCTADialog(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/miui/personalassistant/ui/widget/CTADialog;->isShowDialog(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/personalassistant/ui/widget/CTADialog;

    new-instance v1, Lcom/miui/personalassistant/ui/BaseActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity$1;-><init>(Lcom/miui/personalassistant/ui/BaseActivity;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/miui/personalassistant/ui/widget/CTADialog;-><init>(Landroid/content/Context;Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/CTADialog;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/RuntimePermissionsUtil;->requestAllPermissions(Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->registerConnectivityReceiver()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->unregisterConnectivityReceiver()V

    invoke-static {}, Lcom/miui/personalassistant/ui/widget/CTADialog;->dismiss()V

    return-void
.end method

.method protected onNetworkConnected(Z)V
    .locals 0

    return-void
.end method
