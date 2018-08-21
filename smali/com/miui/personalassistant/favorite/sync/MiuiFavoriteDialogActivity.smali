.class public Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;
.super Landroid/app/Activity;
.source "MiuiFavoriteDialogActivity.java"


# instance fields
.field private mDialog:Lmiui/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showDialog()V
    .locals 8

    new-instance v2, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity$1;-><init>(Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;)V

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1b0b0411

    invoke-virtual {v1, v5}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    const v5, 0x1b0b0410

    invoke-virtual {v1, v5, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    const v5, 0x1b0b040f

    invoke-virtual {v1, v5, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "<a href=\'https://api.assistant.miui.com/guide/privacy\'>"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x1b0b040d

    invoke-virtual {p0, v7}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "</a>"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/miui/personalassistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x1b040076

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v5, 0x1b0901f2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x1b0f00ae

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v5, 0x1b0900a3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x1b0b040e

    invoke-virtual {p0, v6}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;->mDialog:Lmiui/app/AlertDialog;

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v5}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;->showDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;->mDialog:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteDialogActivity;->mDialog:Lmiui/app/AlertDialog;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
