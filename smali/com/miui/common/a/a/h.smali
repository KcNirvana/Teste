.class public abstract Lcom/miui/common/a/a/h;
.super Lmiui/app/Activity;
.source ""


# static fields
.field protected static final FRAGMENT_TAG:Ljava/lang/String; = "tag-"

.field public static final VISIBLE_ITEM_INDEX_KEY_NAME:Ljava/lang/String; = "VisibleItemIndex"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mContext:Landroid/content/Context;

.field protected mMiuiActionBar:Lmiui/app/ActionBar;

.field private mMsgQueue:Landroid/os/MessageQueue;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/common/a/a/h;->mUIHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/a/a/h;->mMsgQueue:Landroid/os/MessageQueue;

    return-void
.end method

.method private customizeActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/common/a/a/h;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0, v0}, Lcom/miui/common/a/a/h;->onCustomizeActionBar(Lmiui/app/ActionBar;)V

    return-void
.end method

.method private initFragmentTabs()V
    .locals 7

    invoke-virtual {p0}, Lcom/miui/common/a/a/h;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/a/a/h;->mMiuiActionBar:Lmiui/app/ActionBar;

    iget-object v0, p0, Lcom/miui/common/a/a/h;->mMiuiActionBar:Lmiui/app/ActionBar;

    invoke-virtual {p0}, Lcom/miui/common/a/a/h;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lmiui/app/ActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/common/a/a/h;->getTabCount()I

    move-result v0

    if-ge v6, v0, :cond_0

    invoke-virtual {p0, v6}, Lcom/miui/common/a/a/h;->getTabText(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/a/a/h;->mMiuiActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v1}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/miui/common/a/a/h;->getFragmentTabInfo(I)Lcom/miui/common/a/a/i;

    move-result-object v5

    iget-object v0, p0, Lcom/miui/common/a/a/h;->mMiuiActionBar:Lmiui/app/ActionBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tag-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v5, Lcom/miui/common/a/a/i;->azo:Ljava/lang/Class;

    iget-object v4, v5, Lcom/miui/common/a/a/i;->azn:Landroid/os/Bundle;

    iget-boolean v5, v5, Lcom/miui/common/a/a/i;->azp:Z

    invoke-virtual/range {v0 .. v5}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setSelectedNavigationItem()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/common/a/a/h;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "VisibleItemIndex"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/a/a/h;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/a/a/h;->mMiuiActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v1, v0}, Lmiui/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getFragmentTabInfo(I)Lcom/miui/common/a/a/i;
.end method

.method protected abstract getTabCount()I
.end method

.method protected abstract getTabText(I)Ljava/lang/String;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/miui/common/a/a/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/common/a/a/h;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/a/a/h;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/common/a/a/h;->initFragmentTabs()V

    invoke-direct {p0}, Lcom/miui/common/a/a/h;->customizeActionBar()V

    invoke-direct {p0}, Lcom/miui/common/a/a/h;->setSelectedNavigationItem()V

    return-void
.end method

.method protected abstract onCustomizeActionBar(Lmiui/app/ActionBar;)V
.end method

.method protected postOnIdleUiThread(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/a/a/h;->mMsgQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method protected postOnUiThread(Lcom/miui/common/a/b/b;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/a/a/h;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
