.class Lcom/miui/zeus/columbus/util/gaid/c;
.super Ljava/lang/Object;
.source "AdvertisingIdHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/zeus/columbus/util/gaid/a;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/util/gaid/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/util/gaid/c;->a:Lcom/miui/zeus/columbus/util/gaid/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/miui/zeus/columbus/common/GlobalHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/gaid/a;->a(Landroid/content/Context;)Lcom/miui/zeus/columbus/util/gaid/f;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/util/gaid/c;->a:Lcom/miui/zeus/columbus/util/gaid/a;

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/gaid/a;->a(Lcom/miui/zeus/columbus/util/gaid/a;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/miui/zeus/columbus/util/gaid/f;->a()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/zeus/columbus/util/gaid/a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/miui/zeus/columbus/util/gaid/AdvertisingIdInterface;

    invoke-interface {v4}, Lcom/miui/zeus/columbus/util/gaid/AdvertisingIdInterface;->getId()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v4, v3}, Lcom/miui/zeus/columbus/util/gaid/AdvertisingIdInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v4, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v4

    move-object v5, v2

    :goto_0
    :try_start_3
    const-string v2, "stacktrace_tag"

    const-string v6, "stackerror:"

    invoke-static {v2, v6, v4}, Lcom/miui/zeus/columbus/util/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    const/4 v2, 0x0

    :catch_3
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/zeus/columbus/util/gaid/c;->a:Lcom/miui/zeus/columbus/util/gaid/a;

    invoke-static {v0, v5}, Lcom/miui/zeus/columbus/util/gaid/a;->a(Lcom/miui/zeus/columbus/util/gaid/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/zeus/columbus/util/gaid/c;->a:Lcom/miui/zeus/columbus/util/gaid/a;

    invoke-static {v0, v2}, Lcom/miui/zeus/columbus/util/gaid/a;->a(Lcom/miui/zeus/columbus/util/gaid/a;Z)Z

    invoke-static {v5}, Lcom/miui/zeus/columbus/util/gaid/e;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/zeus/columbus/util/gaid/c;->a:Lcom/miui/zeus/columbus/util/gaid/a;

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/gaid/a;->a(Lcom/miui/zeus/columbus/util/gaid/a;)V

    return-void

    :goto_2
    :try_start_5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    throw v2
.end method
