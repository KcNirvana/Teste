.class final Lcom/xiaomi/mipush/sdk/q;
.super Lcom/xiaomi/push/ai$a;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Lcom/xiaomi/push/if;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/if;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/q;->a:Lcom/xiaomi/push/if;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/q;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/push/ai$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/q;->a:Lcom/xiaomi/push/if;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/q;->a:Lcom/xiaomi/push/if;

    invoke-static {}, Lcom/xiaomi/push/service/aj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/if;->a(Ljava/lang/String;)Lcom/xiaomi/push/if;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/ay;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ay;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/q;->a:Lcom/xiaomi/push/if;

    sget-object v3, Lcom/xiaomi/push/hg;->i:Lcom/xiaomi/push/hg;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/push/ir;Lcom/xiaomi/push/hg;ZLcom/xiaomi/push/ht;Z)V

    :cond_0
    return-void
.end method
