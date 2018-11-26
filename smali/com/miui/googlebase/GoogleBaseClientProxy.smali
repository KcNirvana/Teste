.class public Lcom/miui/googlebase/GoogleBaseClientProxy;
.super Lmiui/security/ISecurityCallback$Stub;
.source ""


# static fields
.field private static bdc:Lcom/miui/googlebase/GoogleBaseClientProxy;


# instance fields
.field private bdd:Lcom/miui/googlebase/c;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/googlebase/GoogleBaseClientProxy;->bdc:Lcom/miui/googlebase/GoogleBaseClientProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lmiui/security/ISecurityCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/googlebase/GoogleBaseClientProxy;->bdd:Lcom/miui/googlebase/c;

    const-string/jumbo v0, "GoogleBaseClientProxy"

    const-string/jumbo v1, "new GoogleBaseProxy created!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/miui/googlebase/GoogleBaseClientProxy;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/googlebase/GoogleBaseClientProxy;->bAg()V

    return-void
.end method

.method private bAg()V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "security"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GoogleBaseClientProxy"

    const-string/jumbo v1, "ism is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0, p0}, Lmiui/security/ISecurityManager;->offerGoogleBaseCallBack(Lmiui/security/ISecurityCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "GoogleBaseClientProxy"

    const-string/jumbo v1, "ISecurityManager work abnormal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/googlebase/GoogleBaseClientProxy;
    .locals 1

    sget-object v0, Lcom/miui/googlebase/GoogleBaseClientProxy;->bdc:Lcom/miui/googlebase/GoogleBaseClientProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/googlebase/GoogleBaseClientProxy;

    invoke-direct {v0, p0}, Lcom/miui/googlebase/GoogleBaseClientProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/googlebase/GoogleBaseClientProxy;->bdc:Lcom/miui/googlebase/GoogleBaseClientProxy;

    :cond_0
    sget-object v0, Lcom/miui/googlebase/GoogleBaseClientProxy;->bdc:Lcom/miui/googlebase/GoogleBaseClientProxy;

    return-object v0
.end method


# virtual methods
.method public checkPreInstallNeeded(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/miui/googlebase/c;

    iget-object v1, p0, Lcom/miui/googlebase/GoogleBaseClientProxy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/googlebase/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/googlebase/GoogleBaseClientProxy;->bdd:Lcom/miui/googlebase/c;

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseClientProxy;->bdd:Lcom/miui/googlebase/c;

    invoke-virtual {v0}, Lcom/miui/googlebase/c;->bAN()Z

    move-result v0

    return v0
.end method

.method public preInstallApps()V
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v0, "GoogleBaseClientProxy"

    const-string/jumbo v2, "start preinstall apps"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseClientProxy;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v0, "install"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseClientProxy;->bdd:Lcom/miui/googlebase/c;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/googlebase/GoogleBaseClientProxy;->bdd:Lcom/miui/googlebase/c;

    if-nez v3, :cond_1

    :goto_1
    const-string/jumbo v3, "appName"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "packageName"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseClientProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/googlebase/GoogleBaseClientProxy;->bdd:Lcom/miui/googlebase/c;

    invoke-virtual {v0}, Lcom/miui/googlebase/c;->bAO()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/googlebase/GoogleBaseClientProxy;->bdd:Lcom/miui/googlebase/c;

    invoke-virtual {v1}, Lcom/miui/googlebase/c;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
