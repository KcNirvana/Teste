.class final Lcom/miui/sec/external/a;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic bef:Lcom/miui/sec/external/InstallProvider;

.field final synthetic beg:Ljava/lang/String;

.field final synthetic beh:Z

.field final synthetic bei:Ljava/lang/String;

.field final synthetic bej:Landroid/os/IMessenger;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/sec/external/InstallProvider;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;Landroid/os/IMessenger;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/sec/external/a;->bef:Lcom/miui/sec/external/InstallProvider;

    iput-object p2, p0, Lcom/miui/sec/external/a;->beg:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/sec/external/a;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/miui/sec/external/a;->beh:Z

    iput-object p5, p0, Lcom/miui/sec/external/a;->bei:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/sec/external/a;->bej:Landroid/os/IMessenger;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/sec/external/a;->beg:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :try_start_0
    iget-object v0, p0, Lcom/miui/sec/external/a;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "content://guard"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "parseApk"

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    const-string/jumbo v1, "pkgInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    :goto_1
    new-instance v1, Lcom/miui/sec/external/b;

    iget-object v4, p0, Lcom/miui/sec/external/a;->bej:Landroid/os/IMessenger;

    invoke-direct {v1, p0, v4}, Lcom/miui/sec/external/b;-><init>(Lcom/miui/sec/external/a;Landroid/os/IMessenger;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, -0x3

    :try_start_1
    invoke-interface {v1, v0, v2}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "InstallProvider"

    const-string/jumbo v5, "parseApk"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "InstallProvider"

    const-string/jumbo v2, "pkgInfo is null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :try_start_2
    iget-object v4, p0, Lcom/miui/sec/external/a;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "com.aura.oobe.xiaomi"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    invoke-interface {v1, v0, v4}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v4

    :cond_1
    iget-boolean v4, p0, Lcom/miui/sec/external/a;->beh:Z

    if-eqz v4, :cond_2

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.miui.sec.external.intent.action.PRE_INSTALL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "pkg"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v5, 0x1000020

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/miui/sec/external/a;->val$context:Landroid/content/Context;

    const-string/jumbo v6, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/miui/sec/external/a;->bei:Ljava/lang/String;

    const-string/jumbo v5, "com.aura.oobe.xiaomi"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :goto_3
    iget-object v2, p0, Lcom/miui/sec/external/a;->val$context:Landroid/content/Context;

    invoke-static {v2, v3, v1, v4, v0}, Lcom/miui/appmanager/n;->bmR(Landroid/content/Context;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    return-void

    :catch_3
    move-exception v0

    const-string/jumbo v1, "InstallProvider"

    const-string/jumbo v2, "installPckage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method
