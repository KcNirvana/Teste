.class Lcom/xiaomi/push/service/at;
.super Lcom/xiaomi/push/service/XMPushService$h;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/xiaomi/push/service/ar$b$c;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/ar$b$c;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/at;->b:Lcom/xiaomi/push/service/ar$b$c;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/at;->b:Lcom/xiaomi/push/service/ar$b$c;

    iget-object v0, v0, Lcom/xiaomi/push/service/ar$b$c;->b:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/xiaomi/push/service/at;->b:Lcom/xiaomi/push/service/ar$b$c;

    iget-object v1, v1, Lcom/xiaomi/push/service/ar$b$c;->a:Lcom/xiaomi/push/service/ar$b;

    invoke-static {v1}, Lcom/xiaomi/push/service/ar$b;->c(Lcom/xiaomi/push/service/ar$b;)Landroid/os/Messenger;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clean peer, chid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/at;->b:Lcom/xiaomi/push/service/ar$b$c;

    iget-object v1, v1, Lcom/xiaomi/push/service/ar$b$c;->a:Lcom/xiaomi/push/service/ar$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/ar$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/at;->b:Lcom/xiaomi/push/service/ar$b$c;

    iget-object v0, v0, Lcom/xiaomi/push/service/ar$b$c;->a:Lcom/xiaomi/push/service/ar$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/ar$b;->a(Lcom/xiaomi/push/service/ar$b;Landroid/os/Messenger;)Landroid/os/Messenger;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "clear peer job"

    return-object v0
.end method
