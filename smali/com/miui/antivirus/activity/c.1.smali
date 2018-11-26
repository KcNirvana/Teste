.class Lcom/miui/antivirus/activity/c;
.super Lcom/miui/common/d/f;
.source ""


# instance fields
.field private final arZ:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/d/f;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/c;->arZ:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/c;->arZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->aye(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->ayc(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/AbsModel$ItemGroup;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/antivirus/b/a;

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->axV(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/b/a;)V

    goto :goto_0

    :sswitch_3
    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;->arV:Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->axR(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;)Lcom/miui/antivirus/activity/MainActivity$VirusScanStatus;

    goto :goto_0

    :sswitch_4
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axY(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :sswitch_5
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axW(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :sswitch_6
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->ayf(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/antivirus/model/b;

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->axZ(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/b;)V

    goto :goto_0

    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/antivirus/model/g;

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->aya(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/g;)V

    goto :goto_0

    :sswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/antivirus/model/g;

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->ayb(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/g;)V

    goto :goto_0

    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/antivirus/model/g;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->axd(Lcom/miui/antivirus/model/g;)V

    goto :goto_0

    :sswitch_b
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axX(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :sswitch_c
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axT(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :sswitch_d
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->ayd(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :sswitch_e
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->aym(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :sswitch_f
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axU(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :sswitch_10
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->ayi(Lcom/miui/antivirus/activity/MainActivity;F)V

    goto :goto_0

    :sswitch_11
    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/antivirus/activity/MainActivity;->arz:Z

    invoke-virtual {v0}, Lcom/miui/antivirus/activity/MainActivity;->axq()V

    goto :goto_0

    :sswitch_12
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axH(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/ui/MainActivityView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->avU()V

    goto :goto_0

    :sswitch_13
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->ayg(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :sswitch_14
    invoke-virtual {v0}, Lcom/miui/antivirus/activity/MainActivity;->finish()V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_c
        0x3f4 -> :sswitch_7
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_f
        0x400 -> :sswitch_11
        0x401 -> :sswitch_12
        0x403 -> :sswitch_10
        0x406 -> :sswitch_d
        0x408 -> :sswitch_0
        0x409 -> :sswitch_1
        0x40a -> :sswitch_2
        0x40b -> :sswitch_3
        0x40d -> :sswitch_14
        0x40f -> :sswitch_6
        0x415 -> :sswitch_4
        0x416 -> :sswitch_5
        0x419 -> :sswitch_9
        0x41a -> :sswitch_a
        0x41b -> :sswitch_b
        0x41c -> :sswitch_8
        0x426 -> :sswitch_13
    .end sparse-switch
.end method
