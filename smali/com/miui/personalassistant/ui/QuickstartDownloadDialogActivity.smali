.class public Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;
.super Landroid/app/Activity;
.source "QuickstartDownloadDialogActivity.java"


# static fields
.field public static final ACTION_INTENT_CONTENT:Ljava/lang/String; = "content"

.field public static final ACTION_INTENT_DUAL:Ljava/lang/String; = "dual"

.field public static final ACTION_INTENT_KEY:Ljava/lang/String; = "packageName"

.field public static final ACTION_INTENT_TITLE:Ljava/lang/String; = "title"


# instance fields
.field protected mContent:Ljava/lang/String;

.field protected mReString:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 7

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->finish()V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "packageName"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->mTitle:Ljava/lang/String;

    const-string/jumbo v4, "content"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->mContent:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "dual"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b0237

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->mReString:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v3, v2}, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->showDialog(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b0239

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->mReString:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->initView()V

    return-void
.end method

.method protected showDialog(Ljava/lang/String;Z)V
    .locals 7

    new-instance v0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->mContent:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->mReString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x1b0b023a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity$1;

    invoke-direct {v6, p0, p2, p1}, Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity$1;-><init>(Lcom/miui/personalassistant/ui/QuickstartDownloadDialogActivity;ZLjava/lang/String;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->show()V

    return-void
.end method
