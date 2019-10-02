.class Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;
.super Ljava/lang/Object;
.source "RemoteMethodInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    iput-object p2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RemoteMethodInvoker"

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$Stub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->a:Landroid/os/IBinder;

    aput-object v4, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    invoke-static {v2, v1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Landroid/os/IInterface;)Landroid/os/IInterface;

    const-string v1, "RemoteMethodInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v3}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->a:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] connected!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->a:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RemoteMethodInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asInterface exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v4}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v1, v0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->b(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Landroid/os/IInterface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->b(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Landroid/os/IInterface;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->c(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "RemoteMethodInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v3, "unbindService exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v3}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_3
    const-string v1, "RemoteMethodInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "innerInvoke exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v3}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->c(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "RemoteMethodInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->d(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->b(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Ljava/lang/Object;)V

    return-void

    :goto_3
    :try_start_5
    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->c(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindService exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v3}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteMethodInvoker"

    invoke-static {v3, v2, v1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    throw v0
.end method
