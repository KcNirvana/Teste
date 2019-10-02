.class Lcom/xiaomi/push/gu;
.super Lcom/xiaomi/push/service/XMPushService$i;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/gt;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/gt;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/gt;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "Handling bind stats"

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/gt;

    invoke-static {v0}, Lcom/xiaomi/push/gt;->a(Lcom/xiaomi/push/gt;)V

    return-void
.end method
