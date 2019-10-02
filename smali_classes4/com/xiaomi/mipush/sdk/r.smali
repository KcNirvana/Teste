.class final Lcom/xiaomi/mipush/sdk/r;
.super Lcom/xiaomi/push/service/ag$a;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p3, p0, Lcom/xiaomi/mipush/sdk/r;->a:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/service/ag$a;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/r;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/ek;->a(Landroid/content/Context;)Lcom/xiaomi/push/ek;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/r;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/ag;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ag;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/push/hl;->aF:Lcom/xiaomi/push/hl;

    invoke-virtual {v2}, Lcom/xiaomi/push/hl;->a()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/ag;->a(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ek;->a(I)V

    return-void
.end method
