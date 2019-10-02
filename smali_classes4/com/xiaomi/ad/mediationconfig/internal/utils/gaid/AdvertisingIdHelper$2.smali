.class Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper$2;
.super Ljava/lang/Object;
.source "AdvertisingIdHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper$2;->a:Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;->a(Landroid/content/Context;)Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/GooglePlayServiceConnection;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper$2;->a:Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/GooglePlayServiceConnection;->getConnectedBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;->getIdInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdInterface;

    invoke-interface {v4}, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdInterface;->getId()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v4, v3}, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdInterface;->isLimitAdTrackingEnabled(Z)Z

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

    invoke-static {v2, v6, v4}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
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

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper$2;->a:Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;

    invoke-static {v0, v5}, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper$2;->a:Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;

    invoke-static {v0, v2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;Z)Z

    invoke-static {v5}, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHolder;->setAdvertisingId(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper$2;->a:Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/gaid/AdvertisingIdHelper;)V

    return-void

    :goto_2
    :try_start_5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    throw v2
.end method
