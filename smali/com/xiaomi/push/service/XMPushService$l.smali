.class Lcom/xiaomi/push/service/XMPushService$l;
.super Lcom/xiaomi/push/service/XMPushService$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field b:Z

.field final synthetic c:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Z)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$l;->c:Lcom/xiaomi/push/service/XMPushService;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(I)V

    iput-boolean p2, p0, Lcom/xiaomi/push/service/XMPushService$l;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$l;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/push/service/XMPushService$l;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/h/h;->a()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$l;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->d(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/g/a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/push/service/XMPushService$l;->b:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/g/a;->b(Z)V
    :try_end_0
    .catch Lcom/xiaomi/g/l; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$l;->c:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "send ping.."

    return-object v0
.end method
