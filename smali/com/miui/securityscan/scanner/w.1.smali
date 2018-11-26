.class public Lcom/miui/securityscan/scanner/w;
.super Landroid/os/Handler;
.source ""


# instance fields
.field private final DB:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/w;->DB:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/w;->DB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, v0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v1}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->Nf()I

    goto :goto_0

    :pswitch_2
    iget-object v1, v0, Lcom/miui/securityscan/MainActivity;->Ne:Lcom/miui/securityscan/c/b;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/miui/securityscan/c/b;->Jv:Z

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/j;

    move-result-object v1

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->Ne:Lcom/miui/securityscan/c/b;

    invoke-virtual {v1, v0}, Lcom/miui/securityscan/scanner/j;->DT(Lcom/miui/securityscan/c/a;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/MainActivity;->MM(Lcom/miui/common/card/models/BaseCardModel;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->MD()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->MN()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->Nm()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method
