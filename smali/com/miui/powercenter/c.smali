.class Lcom/miui/powercenter/c;
.super Lcom/miui/common/d/f;
.source ""


# instance fields
.field private final aPm:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/PowerCenter;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/d/f;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/c;->aPm:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/c;->aPm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/PowerCenter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bgm(Lcom/miui/powercenter/PowerCenter;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-static {v0, v1}, Lcom/miui/powercenter/PowerCenter;->bgl(Lcom/miui/powercenter/PowerCenter;Lcom/miui/powercenter/model/AbsModel$ItemGroup;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/powercenter/quickoptimize/l;

    invoke-static {v0, v1}, Lcom/miui/powercenter/PowerCenter;->bgi(Lcom/miui/powercenter/PowerCenter;Lcom/miui/powercenter/quickoptimize/l;)V

    goto :goto_0

    :sswitch_3
    sget-object v1, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->aPj:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    invoke-static {v0, v1}, Lcom/miui/powercenter/PowerCenter;->bgf(Lcom/miui/powercenter/PowerCenter;Lcom/miui/powercenter/PowerCenter$PowerScanStatus;)Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    goto :goto_0

    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/powercenter/model/b;

    invoke-static {v0, v1}, Lcom/miui/powercenter/PowerCenter;->bgk(Lcom/miui/powercenter/PowerCenter;Lcom/miui/powercenter/model/b;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/powercenter/model/b;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/PowerCenter;->bfN(Lcom/miui/powercenter/model/b;)V

    goto :goto_0

    :sswitch_6
    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bgj(Lcom/miui/powercenter/PowerCenter;)V

    goto :goto_0

    :sswitch_7
    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bgg(Lcom/miui/powercenter/PowerCenter;)V

    goto :goto_0

    :sswitch_8
    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bgr(Lcom/miui/powercenter/PowerCenter;)V

    goto :goto_0

    :sswitch_9
    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bgh(Lcom/miui/powercenter/PowerCenter;)V

    goto :goto_0

    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/powercenter/PowerCenter;->bgp(Lcom/miui/powercenter/PowerCenter;F)V

    goto :goto_0

    :sswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/powercenter/PowerCenter;->bgq(Lcom/miui/powercenter/PowerCenter;F)V

    goto :goto_0

    :sswitch_c
    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/powercenter/PowerCenter;->aOT:Z

    invoke-virtual {v0}, Lcom/miui/powercenter/PowerCenter;->bfV()V

    goto :goto_0

    :sswitch_d
    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bga(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/mainui/MainActivityView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/mainui/MainActivityView;->bcr()V

    goto :goto_0

    :sswitch_e
    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bgn(Lcom/miui/powercenter/PowerCenter;)V

    goto :goto_0

    :sswitch_f
    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->bga(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/mainui/MainActivityView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/mainui/MainActivityView;->bcF()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_7
        0x3f6 -> :sswitch_8
        0x3f7 -> :sswitch_9
        0x400 -> :sswitch_c
        0x401 -> :sswitch_d
        0x403 -> :sswitch_a
        0x408 -> :sswitch_0
        0x409 -> :sswitch_1
        0x40b -> :sswitch_3
        0x419 -> :sswitch_4
        0x41a -> :sswitch_5
        0x41b -> :sswitch_6
        0x41d -> :sswitch_2
        0x41e -> :sswitch_f
        0x41f -> :sswitch_b
        0x426 -> :sswitch_e
    .end sparse-switch
.end method
