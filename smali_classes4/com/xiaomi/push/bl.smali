.class Lcom/xiaomi/push/bl;
.super Lcom/xiaomi/push/ai$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/bk;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/bl;->a:Lcom/xiaomi/push/bk;

    invoke-direct {p0}, Lcom/xiaomi/push/ai$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x2744

    return v0
.end method

.method public run()V
    .locals 2

    const-string v0, "exec== mUploadJob"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/bl;->a:Lcom/xiaomi/push/bk;

    invoke-static {v0}, Lcom/xiaomi/push/bk;->a(Lcom/xiaomi/push/bk;)Lcom/xiaomi/push/ca;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/bl;->a:Lcom/xiaomi/push/bk;

    invoke-static {v0}, Lcom/xiaomi/push/bk;->a(Lcom/xiaomi/push/bk;)Lcom/xiaomi/push/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/bl;->a:Lcom/xiaomi/push/bk;

    invoke-static {v1}, Lcom/xiaomi/push/bk;->a(Lcom/xiaomi/push/bk;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/push/ca;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaomi/push/bl;->a:Lcom/xiaomi/push/bk;

    const-string v1, "upload_time"

    invoke-static {v0, v1}, Lcom/xiaomi/push/bk;->a(Lcom/xiaomi/push/bk;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
