.class public Lcom/xiaomi/mipush/sdk/ak;
.super Lcom/xiaomi/b/a/d/h$a;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/b/a/d/h$a;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/ak;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/j/a/ac;

    invoke-direct {v1}, Lcom/xiaomi/j/a/ac;-><init>()V

    sget-object v2, Lcom/xiaomi/j/a/i;->a:Lcom/xiaomi/j/a/i;

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/ao;->a(Lcom/xiaomi/push/service/an;Lcom/xiaomi/j/a/i;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/ac;->a(I)Lcom/xiaomi/j/a/ac;

    sget-object v2, Lcom/xiaomi/j/a/i;->b:Lcom/xiaomi/j/a/i;

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/ao;->a(Lcom/xiaomi/push/service/an;Lcom/xiaomi/j/a/i;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/j/a/ac;->b(I)Lcom/xiaomi/j/a/ac;

    new-instance v0, Lcom/xiaomi/j/a/aj;

    const-string v2, "-1"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/xiaomi/j/a/aj;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/xiaomi/j/a/s;->p:Lcom/xiaomi/j/a/s;

    iget-object v2, v2, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/j/a/aj;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    invoke-static {v1}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/aj;->a([B)Lcom/xiaomi/j/a/aj;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ak;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/j/a/a;->i:Lcom/xiaomi/j/a/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;Lcom/xiaomi/j/a/v;)V

    return-void
.end method
