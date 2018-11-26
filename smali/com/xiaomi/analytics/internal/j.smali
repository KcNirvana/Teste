.class final Lcom/xiaomi/analytics/internal/j;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic boh:Lcom/xiaomi/analytics/internal/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/j;->boh:Lcom/xiaomi/analytics/internal/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Debugger"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.xiaomi.analytics.intent.DEBUG_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput-boolean v5, Lcom/xiaomi/analytics/internal/util/b;->bnB:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "com.xiaomi.analytics.intent.DEBUG_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput-boolean v4, Lcom/xiaomi/analytics/internal/util/b;->bnB:Z

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "com.xiaomi.analytics.intent.STAGING_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sput-boolean v5, Lcom/xiaomi/analytics/internal/d;->bnT:Z

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "com.xiaomi.analytics.intent.STAGING_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v4, Lcom/xiaomi/analytics/internal/d;->bnT:Z

    goto :goto_0
.end method
