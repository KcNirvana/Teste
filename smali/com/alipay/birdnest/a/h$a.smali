.class Lcom/alipay/birdnest/a/h$a;
.super Landroid/os/Handler;
.source "ThreadPoolTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/birdnest/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/birdnest/a/h$b;

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, v0, Lcom/alipay/birdnest/a/h$b;->a:Lcom/alipay/birdnest/a/h;

    iget-object v0, v0, Lcom/alipay/birdnest/a/h$b;->c:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/alipay/birdnest/a/h;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, v0, Lcom/alipay/birdnest/a/h$b;->a:Lcom/alipay/birdnest/a/h;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/alipay/birdnest/a/h$b;->b:Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/alipay/birdnest/a/h;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch
.end method
