.class public Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;
.super Landroid/app/Activity;
.source "BallDownloadDialogActivity.java"


# static fields
.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "key_packagename"

.field private static final PACKAGE_HUPU:Ljava/lang/String; = "com.hupu.games"

.field private static final PACKAGE_YOUKU:Ljava/lang/String; = "com.youku.phone"


# instance fields
.field private mContent:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private initView()V
    .locals 7

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b0041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->mContent:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "key_packagename"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "com.youku.phone"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->mContent:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b0b0214

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->mContent:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->mContent:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x1b0b0040

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity$1;

    invoke-direct {v6, p0}, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity$1;-><init>(Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->show()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->mContent:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b0b0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->mContent:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BallDownloadDialogActivity;->initView()V

    return-void
.end method
