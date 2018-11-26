.class final Lcom/miui/applicationlock/utils/u;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic abL:Lcom/miui/applicationlock/utils/e;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/utils/e;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/utils/u;->abL:Lcom/miui/applicationlock/utils/e;

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
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/applicationlock/utils/u;->abL:Lcom/miui/applicationlock/utils/e;

    invoke-static {v1}, Lcom/miui/applicationlock/utils/e;->aeI(Lcom/miui/applicationlock/utils/e;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
