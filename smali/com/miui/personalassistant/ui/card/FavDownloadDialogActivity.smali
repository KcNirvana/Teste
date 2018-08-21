.class public Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity;
.super Landroid/app/Activity;
.source "FavDownloadDialogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 7

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "AppName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "PackageName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b0043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b0041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b0040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity$2;

    invoke-direct {v5, p0, v2}, Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity$2;-><init>(Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b0238

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity$1;

    invoke-direct {v5, p0}, Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity$1;-><init>(Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity;)V

    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/card/FavDownloadDialogActivity;->initView()V

    return-void
.end method
