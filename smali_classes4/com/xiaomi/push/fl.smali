.class Lcom/xiaomi/push/fl;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/fk;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/fk;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/fl;->a:Lcom/xiaomi/push/fk;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/fl;->a:Lcom/xiaomi/push/fk;

    invoke-static {v0}, Lcom/xiaomi/push/fk;->a(Lcom/xiaomi/push/fk;)Lcom/xiaomi/push/fg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/fg;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/push/fl;->a:Lcom/xiaomi/push/fk;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/fk;->c(ILjava/lang/Exception;)V

    :goto_0
    return-void
.end method
