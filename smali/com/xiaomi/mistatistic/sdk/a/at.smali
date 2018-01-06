.class Lcom/xiaomi/mistatistic/sdk/a/at;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/as;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/as;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/at;->a:Lcom/xiaomi/mistatistic/sdk/a/as;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/m;->a()Lcom/xiaomi/mistatistic/sdk/a/m;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/au;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/au;-><init>(Lcom/xiaomi/mistatistic/sdk/a/at;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/m;->a(Lcom/xiaomi/mistatistic/sdk/a/m$a;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/at;->a:Lcom/xiaomi/mistatistic/sdk/a/as;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/as;->a(Lcom/xiaomi/mistatistic/sdk/a/as;Z)Z

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/m;->a()Lcom/xiaomi/mistatistic/sdk/a/m;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/av;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/av;-><init>(Lcom/xiaomi/mistatistic/sdk/a/at;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/m;->a(Lcom/xiaomi/mistatistic/sdk/a/m$a;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
