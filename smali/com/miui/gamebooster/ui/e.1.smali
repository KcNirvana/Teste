.class Lcom/miui/gamebooster/ui/e;
.super Lcom/miui/common/d/f;
.source ""


# instance fields
.field private final aO:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/c;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/d/f;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/e;->aO:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/ui/e;->aO:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-super {p0, p1}, Lcom/miui/common/d/f;->handleMessage(Landroid/os/Message;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bq(Lcom/miui/gamebooster/ui/c;)Lmiui/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bq(Lcom/miui/gamebooster/ui/c;)Lmiui/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bq(Lcom/miui/gamebooster/ui/c;)Lmiui/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/ProgressDialog;->dismiss()V

    :cond_3
    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dk()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bb(Lcom/miui/gamebooster/ui/c;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bb(Lcom/miui/gamebooster/ui/c;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const v4, 0x186a0

    div-int/2addr v0, v4

    invoke-static {v0}, Lcom/miui/common/b/f;->aHV(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v2, v1, v3, v0}, Lcom/miui/gamebooster/a/a;->eS(Landroid/content/Context;Lcom/miui/gamebooster/service/IGameBooster;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void

    :cond_4
    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bq(Lcom/miui/gamebooster/ui/c;)Lmiui/app/ProgressDialog;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lmiui/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bu(Lcom/miui/gamebooster/ui/c;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/miui/gamebooster/ui/c;->bE(Lcom/miui/gamebooster/ui/c;Z)Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bu(Lcom/miui/gamebooster/ui/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07094d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/miui/gamebooster/a/a;->eY(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/c;->aN()V

    goto/16 :goto_0

    :pswitch_4
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->isFinishing()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-boolean v1, v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bJ:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bU(Lcom/miui/gamebooster/ui/c;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/c;->aw()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
