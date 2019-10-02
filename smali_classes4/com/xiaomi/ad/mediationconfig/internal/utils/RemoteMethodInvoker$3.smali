.class Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$3;
.super Lcom/xiaomi/ad/mediationconfig/internal/utils/ThrowableCaughtRunnable;
.source "RemoteMethodInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->invokeAsync(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$3;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    iput-object p4, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$3;->a:Landroid/content/Intent;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/ad/mediationconfig/internal/utils/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$3;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$3;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->e(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Landroid/os/IInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$3;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->b(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$3;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->c(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$3;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$3;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$3;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$3;->b:Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;

    invoke-static {v1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->b(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Landroid/os/IInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->b(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Landroid/os/IInterface;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
