.class Lcom/xiaomi/mipush/sdk/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Lcom/xiaomi/mipush/sdk/av;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/av;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/aw;->d:Lcom/xiaomi/mipush/sdk/av;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/aw;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/mipush/sdk/aw;->b:Landroid/content/Intent;

    iput-object p4, p0, Lcom/xiaomi/mipush/sdk/aw;->c:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/aw;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/aw;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/aw;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/aw;->c:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Intent;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
