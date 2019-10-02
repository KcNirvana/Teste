.class Lcom/xiaomi/push/gz;
.super Lcom/xiaomi/push/service/ba$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/gy;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/gy;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/gz;->a:Lcom/xiaomi/push/gy;

    invoke-direct {p0}, Lcom/xiaomi/push/service/ba$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/ee$b;)V
    .locals 1

    invoke-virtual {p1}, Lcom/xiaomi/push/ee$b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/gy;->a()Lcom/xiaomi/push/gy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ee$b;->e()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/gy;->a(I)V

    :cond_0
    return-void
.end method
