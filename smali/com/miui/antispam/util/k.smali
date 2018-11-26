.class final Lcom/miui/antispam/util/k;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic Zq:Lcom/miui/antispam/util/a;


# direct methods
.method constructor <init>(Lcom/miui/antispam/util/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/util/k;->Zq:Lcom/miui/antispam/util/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/antispam/util/d;

    iget-object v1, v0, Lcom/miui/antispam/util/d;->YZ:Lcom/miui/antispam/util/b;

    iget-object v2, v0, Lcom/miui/antispam/util/d;->Zb:Ljava/lang/String;

    iget-object v3, v0, Lcom/miui/antispam/util/d;->Za:Landroid/util/Pair;

    invoke-interface {v1, v2, v3}, Lcom/miui/antispam/util/b;->VB(Ljava/lang/String;Landroid/util/Pair;)V

    iget-object v1, p0, Lcom/miui/antispam/util/k;->Zq:Lcom/miui/antispam/util/a;

    invoke-static {v1}, Lcom/miui/antispam/util/a;->Xv(Lcom/miui/antispam/util/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/antispam/util/d;->Zb:Ljava/lang/String;

    iget-object v0, v0, Lcom/miui/antispam/util/d;->Za:Landroid/util/Pair;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
