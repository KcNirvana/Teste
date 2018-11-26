.class public abstract Lcom/miui/common/a/a/e;
.super Lmiui/app/Activity;
.source ""


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAppContext:Landroid/content/Context;

.field private mMsgQueue:Landroid/os/MessageQueue;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/common/a/a/e;->mUIHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/a/a/e;->mMsgQueue:Landroid/os/MessageQueue;

    return-void
.end method

.method private customizeActionBar()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/common/a/a/e;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/a/a/e;->onCustomizeActionBar(Landroid/app/ActionBar;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/miui/common/a/a/e;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/common/a/a/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/a/a/e;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/common/a/a/e;->onCreateContentView()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/common/a/a/e;->setContentView(I)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/common/a/a/e;->customizeActionBar()V

    return-void
.end method

.method protected abstract onCreateContentView()I
.end method

.method protected abstract onCustomizeActionBar(Landroid/app/ActionBar;)V
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/common/a/a/e;->finish()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected postOnIdleUiThread(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/a/a/e;->mMsgQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method protected postOnUiDelayed(Ljava/lang/Runnable;J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/a/a/e;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected postOnUiThread(Lcom/miui/common/a/b/b;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/a/a/e;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
