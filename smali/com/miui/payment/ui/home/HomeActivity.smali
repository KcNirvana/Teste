.class public Lcom/miui/payment/ui/home/HomeActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "HomeActivity.java"

# interfaces
.implements Lcom/miui/payment/ui/home/HomeViewInteraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mEditActionMode:Landroid/view/ActionMode;

.field private mHomeLayoutContainer:Lcom/miui/payment/ui/home/HomeLayoutContainer;

.field private mHomePresenter:Lcom/miui/payment/ui/home/HomePresenter;

.field private mIsAllChecked:Z

.field private mOnItemLongClickListener:Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;

.field private mPaymentObserver:Landroid/database/ContentObserver;

.field private mStartTime:J

.field private mStayTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/payment/ui/home/HomeActivity$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/payment/ui/home/HomeActivity$1;-><init>(Lcom/miui/payment/ui/home/HomeActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mPaymentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/payment/ui/home/HomeActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/payment/ui/home/HomeActivity$2;-><init>(Lcom/miui/payment/ui/home/HomeActivity;)V

    iput-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mOnItemLongClickListener:Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/payment/ui/home/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/payment/ui/home/HomeActivity;->loadRecords()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/payment/ui/home/HomeActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mIsAllChecked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/miui/payment/ui/home/HomeActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/payment/ui/home/HomeActivity;->mIsAllChecked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/payment/ui/home/HomeActivity;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mEditActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/payment/ui/home/HomeActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/home/HomeActivity;->mEditActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/payment/ui/home/HomeActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/payment/ui/home/HomeActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/home/HomeActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/payment/ui/home/HomeActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/payment/ui/home/HomeActivity;)Lcom/miui/payment/ui/home/HomeLayoutContainer;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomeLayoutContainer:Lcom/miui/payment/ui/home/HomeLayoutContainer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/payment/ui/home/HomeActivity;)Lcom/miui/payment/ui/home/HomePresenter;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomePresenter:Lcom/miui/payment/ui/home/HomePresenter;

    return-object v0
.end method

.method private loadRecords()V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomePresenter:Lcom/miui/payment/ui/home/HomePresenter;

    if-nez v0, :cond_0

    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "presenter is null"

    invoke-static {v0, v1}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomePresenter:Lcom/miui/payment/ui/home/HomePresenter;

    invoke-interface {v0}, Lcom/miui/payment/ui/home/HomePresenter;->loadTodayTotal()V

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomePresenter:Lcom/miui/payment/ui/home/HomePresenter;

    invoke-interface {v0}, Lcom/miui/payment/ui/home/HomePresenter;->loadCurrentMonthTotal()V

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomePresenter:Lcom/miui/payment/ui/home/HomePresenter;

    invoke-interface {v0}, Lcom/miui/payment/ui/home/HomePresenter;->loadAllRecords()V

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/payment/ui/home/HomeActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v2, 0x1b0b02f4

    invoke-virtual {v0, v2}, Lmiui/app/ActionBar;->setTitle(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/payment/ui/home/HomeActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v2, Lmiui/R$drawable;->action_button_setting_light:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/miui/payment/ui/home/HomeActivity;->mContext:Landroid/content/Context;

    const v3, 0x1b0b0330

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/miui/payment/ui/home/HomeActivity$3;

    invoke-direct {v2, p0}, Lcom/miui/payment/ui/home/HomeActivity$3;-><init>(Lcom/miui/payment/ui/home/HomeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setEndView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomeLayoutContainer:Lcom/miui/payment/ui/home/HomeLayoutContainer;

    invoke-virtual {v1}, Lcom/miui/payment/ui/home/HomeLayoutContainer;->getMultiChoice()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomeLayoutContainer:Lcom/miui/payment/ui/home/HomeLayoutContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/miui/payment/ui/home/HomeLayoutContainer;->setMultiChoice(ZZ)V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1b0400d2

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/home/HomeActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/payment/ui/home/HomeActivity;->setupActionBar()V

    new-instance v0, Lcom/miui/payment/ui/home/HomePresenterImpl;

    invoke-direct {v0}, Lcom/miui/payment/ui/home/HomePresenterImpl;-><init>()V

    iput-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomePresenter:Lcom/miui/payment/ui/home/HomePresenter;

    const v0, 0x1b090309

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/ui/home/HomeLayoutContainer;

    iput-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomeLayoutContainer:Lcom/miui/payment/ui/home/HomeLayoutContainer;

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomeLayoutContainer:Lcom/miui/payment/ui/home/HomeLayoutContainer;

    iget-object v1, p0, Lcom/miui/payment/ui/home/HomeActivity;->mOnItemLongClickListener:Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/payment/ui/home/HomeLayoutContainer;->setup(Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomePresenter:Lcom/miui/payment/ui/home/HomePresenter;

    invoke-interface {v0, p0}, Lcom/miui/payment/ui/home/HomePresenter;->subscribe(Lcom/miui/payment/ui/base/IViewInteraction;)V

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/payment/provider/ProviderConstants;->URI_PAYMENT_UPDATE:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/payment/ui/home/HomeActivity;->mPaymentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/miui/payment/ui/home/HomeActivity;->loadRecords()V

    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "onCreate end"

    invoke-static {v0, v1}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "finance_user"

    invoke-static {v0}, Lcom/miui/payment/utils/StatUtil;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/payment/ui/home/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x1b100007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onDeleteResult(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomeLayoutContainer:Lcom/miui/payment/ui/home/HomeLayoutContainer;

    invoke-virtual {v0, v1, v1}, Lcom/miui/payment/ui/home/HomeLayoutContainer;->setMultiChoice(ZZ)V

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mEditActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mEditActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/payment/ui/home/HomeActivity;->loadRecords()V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/ui/home/HomeActivity;->mPaymentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomePresenter:Lcom/miui/payment/ui/home/HomePresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomePresenter:Lcom/miui/payment/ui/home/HomePresenter;

    invoke-interface {v0}, Lcom/miui/payment/ui/home/HomePresenter;->unsubscribe()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mOnItemLongClickListener:Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;

    iget-wide v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mStayTime:J

    invoke-static {v0, v1}, Lcom/miui/payment/utils/StatUtil;->recordTimeEvent(J)V

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/miui/personalassistant/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/payment/utils/PaymentUtil;->startSettingsActivity(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/payment/ui/edit/RecordEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b0903dd
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onResume()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mStartTime:J

    return-void
.end method

.method protected onStop()V
    .locals 6

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onStop()V

    iget-wide v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mStayTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/payment/ui/home/HomeActivity;->mStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mStayTime:J

    return-void
.end method

.method public setCurrentMonthTotal(Lcom/miui/payment/data/TransactionTotal;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomeLayoutContainer:Lcom/miui/payment/ui/home/HomeLayoutContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomeLayoutContainer:Lcom/miui/payment/ui/home/HomeLayoutContainer;

    invoke-virtual {v0, p1}, Lcom/miui/payment/ui/home/HomeLayoutContainer;->setCurrentMonthTotal(Lcom/miui/payment/data/TransactionTotal;)V

    :cond_0
    return-void
.end method

.method public setRecords(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomeLayoutContainer:Lcom/miui/payment/ui/home/HomeLayoutContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomeLayoutContainer:Lcom/miui/payment/ui/home/HomeLayoutContainer;

    invoke-virtual {v0, p1}, Lcom/miui/payment/ui/home/HomeLayoutContainer;->setRecords(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setTodayTotal(Lcom/miui/payment/data/TransactionTotal;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomeLayoutContainer:Lcom/miui/payment/ui/home/HomeLayoutContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity;->mHomeLayoutContainer:Lcom/miui/payment/ui/home/HomeLayoutContainer;

    invoke-virtual {v0, p1}, Lcom/miui/payment/ui/home/HomeLayoutContainer;->setTodayTotal(Lcom/miui/payment/data/TransactionTotal;)V

    :cond_0
    return-void
.end method
