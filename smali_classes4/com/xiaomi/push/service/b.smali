.class public Lcom/xiaomi/push/service/b;
.super Lcom/xiaomi/push/ai$a;


# instance fields
.field private a:Lcom/xiaomi/push/if;

.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/push/service/XMPushService;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/if;Ljava/lang/ref/WeakReference;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/push/if;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/push/service/XMPushService;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/push/ai$a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/b;->a:Z

    iput-object p1, p0, Lcom/xiaomi/push/service/b;->a:Lcom/xiaomi/push/if;

    iput-object p2, p0, Lcom/xiaomi/push/service/b;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/xiaomi/push/service/b;->a:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/push/service/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/push/service/b;->a:Lcom/xiaomi/push/if;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/XMPushService;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/push/service/b;->a:Lcom/xiaomi/push/if;

    invoke-static {}, Lcom/xiaomi/push/service/aj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/if;->a(Ljava/lang/String;)Lcom/xiaomi/push/if;

    iget-object v1, p0, Lcom/xiaomi/push/service/b;->a:Lcom/xiaomi/push/if;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/if;->a(Z)Lcom/xiaomi/push/if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoleInfo aw_ping : send aw_Ping msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/push/service/b;->a:Lcom/xiaomi/push/if;

    invoke-virtual {v2}, Lcom/xiaomi/push/if;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/b;->a:Lcom/xiaomi/push/if;

    invoke-virtual {v1}, Lcom/xiaomi/push/if;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/b;->a:Lcom/xiaomi/push/if;

    invoke-virtual {v2}, Lcom/xiaomi/push/if;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/service/b;->a:Lcom/xiaomi/push/if;

    sget-object v4, Lcom/xiaomi/push/hg;->i:Lcom/xiaomi/push/hg;

    invoke-static {v1, v2, v3, v4}, Lcom/xiaomi/push/service/w;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/ir;Lcom/xiaomi/push/hg;)Lcom/xiaomi/push/ic;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/push/iq;->a(Lcom/xiaomi/push/ir;)[B

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaomi/push/service/b;->a:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoleInfo aw_ping : send help app ping error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
