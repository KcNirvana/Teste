.class Lcom/xiaomi/metoknlp/c/o;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/xiaomi/metoknlp/c/g;


# direct methods
.method public constructor <init>(Lcom/xiaomi/metoknlp/c/g;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/metoknlp/c/o;->a:Lcom/xiaomi/metoknlp/c/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/o;->a:Lcom/xiaomi/metoknlp/c/g;

    invoke-static {v1, v0}, Lcom/xiaomi/metoknlp/c/g;->a(Lcom/xiaomi/metoknlp/c/g;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/o;->a:Lcom/xiaomi/metoknlp/c/g;

    invoke-static {v1, v0}, Lcom/xiaomi/metoknlp/c/g;->b(Lcom/xiaomi/metoknlp/c/g;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
