.class Lcom/xiaomi/push/service/XMPushService$a;
.super Lcom/xiaomi/push/service/XMPushService$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;

.field a:Lcom/xiaomi/push/service/al$b;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/al$b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$a;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$i;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$a;->a:Lcom/xiaomi/push/service/al$b;

    iput-object p2, p0, Lcom/xiaomi/push/service/XMPushService$a;->a:Lcom/xiaomi/push/service/al$b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind the client. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$a;->a:Lcom/xiaomi/push/service/al$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/al$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$a;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "trying bind while the connection is not created, quit!"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/al;->a()Lcom/xiaomi/push/service/al;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$a;->a:Lcom/xiaomi/push/service/al$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/al$b;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService$a;->a:Lcom/xiaomi/push/service/al$b;

    iget-object v2, v2, Lcom/xiaomi/push/service/al$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/al;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/al$b;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore bind because the channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$a;->a:Lcom/xiaomi/push/service/al$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/al$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/xiaomi/push/service/al$b;->a:Lcom/xiaomi/push/service/al$c;

    sget-object v2, Lcom/xiaomi/push/service/al$c;->a:Lcom/xiaomi/push/service/al$c;

    if-ne v1, v2, :cond_2

    sget-object v4, Lcom/xiaomi/push/service/al$c;->b:Lcom/xiaomi/push/service/al$c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Lcom/xiaomi/push/service/al$b;->a(Lcom/xiaomi/push/service/al$c;IILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$a;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/fm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/fm;->a(Lcom/xiaomi/push/service/al$b;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$a;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lcom/xiaomi/push/ha;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/al$b;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trying duplicate bind, ingore! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/xiaomi/push/service/al$b;->a:Lcom/xiaomi/push/service/al$c;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$a;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    :catch_1
    :goto_1
    return-void
.end method
