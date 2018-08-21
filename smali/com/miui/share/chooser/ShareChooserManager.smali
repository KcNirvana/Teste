.class Lcom/miui/share/chooser/ShareChooserManager;
.super Ljava/lang/Object;
.source "ShareChooserManager.java"


# static fields
.field private static final DEFAULT_SHARE_FLAGS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/share/chooser/ShareChooserManager;->DEFAULT_SHARE_FLAGS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10003
        0x10002
        0x10102
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addShareInfo(Landroid/app/Activity;Ljava/util/ArrayList;Landroid/content/Intent;Lcom/miui/share/ShareDelegate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/share/chooser/ShareInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Lcom/miui/share/ShareDelegate;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p3, p2}, Lcom/miui/share/ShareDelegate;->isShareAvailable(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3}, Lcom/miui/share/ShareDelegate;->getShareFlag()I

    move-result v0

    invoke-virtual {p3, p2}, Lcom/miui/share/ShareDelegate;->getIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3}, Lcom/miui/share/ShareDelegate;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/miui/share/chooser/ShareChooserManager$1;

    invoke-direct {v3, p3, p2, p0}, Lcom/miui/share/chooser/ShareChooserManager$1;-><init>(Lcom/miui/share/ShareDelegate;Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/miui/share/chooser/ShareInfo;->create(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/miui/share/chooser/ShareInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static finishShareChooserActivity(Landroid/app/Activity;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget v0, Lcom/miui/share/R$anim;->activity_close_enter:I

    sget v1, Lcom/miui/share/R$anim;->activity_close_exit:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method static prepareShareList(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/share/chooser/ShareInfo;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "share_component_list"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v5, v3

    if-nez v5, :cond_1

    :cond_0
    sget-object v3, Lcom/miui/share/chooser/ShareChooserManager;->DEFAULT_SHARE_FLAGS:[I

    :cond_1
    array-length v7, v3

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_3

    aget v8, v3, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8, p2}, Lcom/miui/share/ShareDelegateManager;->create(ILandroid/os/Bundle;)Lcom/miui/share/ShareDelegate;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Lcom/miui/share/ShareDelegate;->setActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8, p1}, Lcom/miui/share/ShareDelegateManager;->resolveIntent(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v4, v1, v2}, Lcom/miui/share/chooser/ShareChooserManager;->addShareInfo(Landroid/app/Activity;Ljava/util/ArrayList;Landroid/content/Intent;Lcom/miui/share/ShareDelegate;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v6, p2}, Lcom/miui/share/ShareDelegateManager;->create(ILandroid/os/Bundle;)Lcom/miui/share/ShareDelegate;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/miui/share/ShareDelegate;->setActivity(Landroid/app/Activity;)V

    invoke-static {p0, v4, p1, v2}, Lcom/miui/share/chooser/ShareChooserManager;->addShareInfo(Landroid/app/Activity;Ljava/util/ArrayList;Landroid/content/Intent;Lcom/miui/share/ShareDelegate;)Z

    :cond_4
    return-object v4
.end method

.method static showShareChooserDialog(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, p1, p2}, Lcom/miui/share/chooser/ShareChooserManager;->prepareShareList(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Lcom/miui/share/ShareUtils;->startSystemShare(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/miui/share/chooser/ShareChooserManager;->finishShareChooserActivity(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/miui/share/chooser/ShareChooserDialog;->newInstance()Lcom/miui/share/chooser/ShareChooserDialog;

    move-result-object v0

    const-string/jumbo v2, "share_chooser_title"

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/share/R$string;->miuishare_title_share:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/share/chooser/ShareChooserDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/share/chooser/ShareChooserDialog;->setShareInfos(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "share_chooser"

    invoke-virtual {v0, v2, v3}, Lcom/miui/share/chooser/ShareChooserDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
