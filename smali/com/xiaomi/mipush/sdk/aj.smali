.class Lcom/xiaomi/mipush/sdk/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/ah$a$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/ah$a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/aj;->a:Lcom/xiaomi/mipush/sdk/ah$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/aj;->a:Lcom/xiaomi/mipush/sdk/ah$a$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/ah$a$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/aj;->a:Lcom/xiaomi/mipush/sdk/ah$a$a;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/ah$a$a;->b(Lcom/xiaomi/mipush/sdk/ah$a$a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/aj;->a:Lcom/xiaomi/mipush/sdk/ah$a$a;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/ah$a$a;->c(Lcom/xiaomi/mipush/sdk/ah$a$a;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/aj;->a:Lcom/xiaomi/mipush/sdk/ah$a$a;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/ah$a$a;->c(Lcom/xiaomi/mipush/sdk/ah$a$a;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/aj;->a:Lcom/xiaomi/mipush/sdk/ah$a$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/ah$a$a;->a(Lcom/xiaomi/mipush/sdk/ah$a$a;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
