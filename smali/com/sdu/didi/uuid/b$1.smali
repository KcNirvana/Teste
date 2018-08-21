.class Lcom/sdu/didi/uuid/b$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdu/didi/uuid/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sdu/didi/uuid/b;


# direct methods
.method constructor <init>(Lcom/sdu/didi/uuid/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/uuid/b$1;->a:Lcom/sdu/didi/uuid/b;

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
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sdu/didi/uuid/b$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sdu/didi/uuid/b$1;->a:Lcom/sdu/didi/uuid/b;

    check-cast v0, Lcom/sdu/didi/uuid/b$a;

    invoke-static {v1, v0}, Lcom/sdu/didi/uuid/b;->a(Lcom/sdu/didi/uuid/b;Lcom/sdu/didi/uuid/b$a;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method
