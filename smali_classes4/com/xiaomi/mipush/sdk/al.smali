.class Lcom/xiaomi/mipush/sdk/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;

.field final synthetic a:Lcom/xiaomi/push/hk;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;Lcom/xiaomi/push/hk;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/al;->a:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/al;->a:Lcom/xiaomi/push/hk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/al;->a:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/al;->a:Lcom/xiaomi/push/hk;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/al;->a:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->a(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;)V

    return-void
.end method
