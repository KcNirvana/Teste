.class public Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;
.super Landroid/app/Activity;
.source "ExpressDownloadDialogActivity.java"


# static fields
.field private static final ACTION_UPDATE_EXPRESS:Ljava/lang/String; = "action_update_express"


# instance fields
.field private mContent:Ljava/lang/String;

.field private mPositiveString:Ljava/lang/String;

.field private mReString:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 9

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->mContent:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "reString"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->mReString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "positiveString"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->mPositiveString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->mContent:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->mReString:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->mPositiveString:Ljava/lang/String;

    new-instance v6, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity$1;

    invoke-direct {v6, p0, v7, v8}, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity$1;-><init>(Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/ExpressDownloadDialogActivity;->initView()V

    return-void
.end method
