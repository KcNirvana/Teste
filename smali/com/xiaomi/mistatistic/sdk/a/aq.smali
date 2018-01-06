.class Lcom/xiaomi/mistatistic/sdk/a/aq;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/ap;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/ap;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/aq;->a:Lcom/xiaomi/mistatistic/sdk/a/ap;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/aq;->a:Lcom/xiaomi/mistatistic/sdk/a/ap;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/ap;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "handle shaking...."

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/aq;->a:Lcom/xiaomi/mistatistic/sdk/a/ap;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/aq;->a:Lcom/xiaomi/mistatistic/sdk/a/ap;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/ap;->a(Lcom/xiaomi/mistatistic/sdk/a/ap;)Lcom/xiaomi/mistatistic/sdk/a/ap$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/a/ap$a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/ap;->a(Lcom/xiaomi/mistatistic/sdk/a/ap;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/aq;->a:Lcom/xiaomi/mistatistic/sdk/a/ap;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/ap;->g()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
