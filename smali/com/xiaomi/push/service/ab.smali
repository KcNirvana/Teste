.class final Lcom/xiaomi/push/service/ab;
.super Lcom/xiaomi/push/service/XMPushService$h;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic c:Lcom/xiaomi/j/a/ag;


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/j/a/ag;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/push/service/ab;->b:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/ab;->c:Lcom/xiaomi/j/a/ag;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/ab;->b:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/ab;->c:Lcom/xiaomi/j/a/ag;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/x;->a(Landroid/content/Context;Lcom/xiaomi/j/a/ag;)Lcom/xiaomi/j/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/j/a/ag;->m()Lcom/xiaomi/j/a/v;

    move-result-object v1

    const-string v2, "miui_message_unrecognized"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/j/a/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/ab;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/af;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/j/a/ag;)V
    :try_end_0
    .catch Lcom/xiaomi/g/l; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/ab;->b:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "send ack message for unrecognized new miui message."

    return-object v0
.end method
