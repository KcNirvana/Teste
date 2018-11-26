.class public Lcom/miui/permcenter/install/AdbInstallVerifyActivity;
.super Lmiui/app/AlertActivity;
.source ""


# static fields
.field private static final URL:Ljava/lang/String;


# instance fields
.field protected PX:Ljava/lang/String;

.field private PY:Z

.field protected PZ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "https://srv.sec.intl.miui.com/data/adb"

    :goto_0
    sput-object v0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->URL:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "https://srv.sec.miui.com/data/adb"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/AlertActivity;-><init>()V

    sget-object v0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->URL:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->PZ:Ljava/lang/String;

    return-void
.end method

.method private Rn()V
    .locals 3

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706a0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->finish()V

    return-void

    :cond_1
    new-instance v0, Lcom/miui/permcenter/install/k;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/install/k;-><init>(Lcom/miui/permcenter/install/AdbInstallVerifyActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/permcenter/install/k;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private Ro(Landroid/view/View;)V
    .locals 3

    :try_start_0
    const-class v0, Lmiui/app/AlertActivity;

    const-string/jumbo v1, "mAlertParams"

    invoke-static {p0, v0, v1}, Lcom/miui/a/c/a;->btE(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "mView"

    invoke-static {v0, v1, v2, p1}, Lcom/miui/a/c/a;->btG(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AdbInstallActivity"

    const-string/jumbo v2, "setAlertParams error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setEnabled(Z)V
    .locals 1

    invoke-static {p0}, Lcom/miui/permcenter/install/a;->getInstance(Landroid/content/Context;)Lcom/miui/permcenter/install/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/permcenter/install/a;->Rc(Z)V

    return-void
.end method


# virtual methods
.method protected Rk()V
    .locals 2

    const v0, 0x7f030013

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->Ro(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->setupAlert()V

    invoke-direct {p0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->Rn()V

    return-void
.end method

.method protected Rl()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_input"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->PY:Z

    iget-boolean v0, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->PY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->PX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07069a

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0}, Lcom/miui/permcenter/install/e;->RS(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->Rk()V

    return-void
.end method

.method protected Rm()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->PY:Z

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/miui/permcenter/install/e;->RR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->PX:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->Rl()V

    return-void
.end method
