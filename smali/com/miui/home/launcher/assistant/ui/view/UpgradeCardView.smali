.class public Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "UpgradeCardView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpgradeCardView"


# instance fields
.field private mApkPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mUpgradeLog:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mApkPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->setCardState(Z)V

    return-void
.end method

.method private setCardState(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "key_upgrade"

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->refreshListView()V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onFinishInflate()V

    const v2, 0x1b0900f2

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mUpgradeLog:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mUpgradeLog:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x1b0901e5

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1b0901e4

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v2, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v2, :cond_0

    const v2, 0x1b0901e3

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x1b020316

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v2, 0x1b0202eb

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v2, 0x1b0202ec

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public updateCard(Lcom/miui/home/launcher/assistant/module/CardSource;I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.miui.personalassistant"

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/util/Util;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "upgrade_apk_version"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/home/launcher/assistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v3

    if-lt v2, v3, :cond_1

    const-string/jumbo v2, "UpgradeCardView"

    const-string/jumbo v3, "version local > upgrade"

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->clearUpgradeData()V

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->refreshListView()V

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->updateUpgradeStatus(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "FileName"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mApkPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mApkPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mApkPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "ChangeLog"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->mUpgradeLog:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->setCardState(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->setCardState(Z)V

    goto :goto_0
.end method
