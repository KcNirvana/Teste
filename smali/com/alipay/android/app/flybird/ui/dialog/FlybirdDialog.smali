.class public Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialog;
.super Ljava/lang/Object;
.source "FlybirdDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDoubleBtnDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setOneMessage(Ljava/lang/String;)V

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;->mText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setLeftOnClickText(Ljava/lang/String;)V

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setLeftOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;->mText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setRightOnClickText(Ljava/lang/String;)V

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogDoubleBtn;->setRightOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object v1
.end method

.method private static getMultiBtnDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->setOneMessage(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->setOnClickEvents(Ljava/util/List;)V

    return-object v0
.end method

.method private static getOneBtnDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;->setOneMessage(Ljava/lang/String;)V

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;->mText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;->setOnClickText(Ljava/lang/String;)V

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object v1
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {p0, p1, p2, p3}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialog;->getOneBtnDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;

    move-result-object v0

    :goto_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-static {p0, p1, p2, p3}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialog;->getDoubleBtnDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialog;->getMultiBtnDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1
.end method
