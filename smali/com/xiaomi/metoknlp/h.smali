.class Lcom/xiaomi/metoknlp/h;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/xiaomi/metoknlp/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/metoknlp/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/metoknlp/h;->a:Lcom/xiaomi/metoknlp/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "MetokApplication"

    const-string v1, "unknown message type "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/xiaomi/metoknlp/b;->a()Lcom/xiaomi/metoknlp/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/b;->d()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/metoknlp/h;->a:Lcom/xiaomi/metoknlp/a;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/a;->b(Lcom/xiaomi/metoknlp/a;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
