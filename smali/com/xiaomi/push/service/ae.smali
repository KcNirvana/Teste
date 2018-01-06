.class final Lcom/xiaomi/push/service/ae;
.super Lcom/xiaomi/push/service/XMPushService$h;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic c:Lcom/xiaomi/j/a/ag;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Z


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/j/a/ag;ZZZZ)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/push/service/ae;->b:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/ae;->c:Lcom/xiaomi/j/a/ag;

    iput-boolean p4, p0, Lcom/xiaomi/push/service/ae;->d:Z

    iput-boolean p5, p0, Lcom/xiaomi/push/service/ae;->e:Z

    iput-boolean p6, p0, Lcom/xiaomi/push/service/ae;->f:Z

    iput-boolean p7, p0, Lcom/xiaomi/push/service/ae;->g:Z

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/ae;->b:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/ae;->c:Lcom/xiaomi/j/a/ag;

    iget-boolean v2, p0, Lcom/xiaomi/push/service/ae;->d:Z

    iget-boolean v3, p0, Lcom/xiaomi/push/service/ae;->e:Z

    iget-boolean v4, p0, Lcom/xiaomi/push/service/ae;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/service/x;->a(Landroid/content/Context;Lcom/xiaomi/j/a/ag;ZZZ)Lcom/xiaomi/j/a/ag;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/push/service/ae;->g:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/j/a/ag;->m()Lcom/xiaomi/j/a/v;

    move-result-object v1

    const-string v2, "permission_to_location"

    sget-object v3, Lcom/xiaomi/push/service/ax;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/j/a/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/service/ae;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/af;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/j/a/ag;)V
    :try_end_0
    .catch Lcom/xiaomi/g/l; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/ae;->b:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "send wrong message ack for message."

    return-object v0
.end method
