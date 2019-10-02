.class Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$4;
.super Ljava/lang/Object;
.source "RemoteMethodInvoker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Landroid/os/IBinder;)V
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

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$4;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    iput-object p2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$4;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string v0, "RemoteMethodInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$4;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$4;->a:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] died, remove from reusing-map!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$4;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
