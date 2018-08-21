.class public Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;
.super Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;
.source "FlybirdLocalViewSettingChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$ChannelItem;
    }
.end annotation


# instance fields
.field private SETTING_CHANNEL_PARAMS:Ljava/lang/String;

.field private channels:[Ljava/lang/String;

.field private isAutoChannel:Z

.field private mAdapter:Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;

.field private mCurrentFrame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;-><init>()V

    const-string/jumbo v0, "{\"name\":\"/setting/channel\"}"

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->SETTING_CHANNEL_PARAMS:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mListView:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mAdapter:Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->channels:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->isAutoChannel:Z

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mCurrentFrame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->initView(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mLocalView:Landroid/view/View;

    const-string/jumbo v1, "channel_list"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;

    const-string/jumbo v1, "mini_list_item_handle_right"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "text"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mAdapter:Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mAdapter:Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mLocalView:Landroid/view/View;

    const-string/jumbo v1, "title_back_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$1;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->processSettingChannelEvent()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;)Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mCurrentFrame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private isSettingChange()Z
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareSaveData()Lcom/alipay/android/app/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "channel"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "switch_auto"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/a;->g()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    :cond_1
    return-object v0
.end method

.method private processSettingChannelEvent()V
    .locals 5

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mBizId:I

    invoke-static {v0}, Lcom/alipay/android/app/logic/c/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mBizId:I

    invoke-static {v0}, Lcom/alipay/android/app/logic/c/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mBizId:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/b/a/j;

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mBizId:I

    const/16 v3, 0x10

    const/16 v4, 0x7d0

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/alipay/android/app/b/a/j;-><init>(IIILjava/lang/Object;)V

    const/16 v0, 0xb

    iput v0, v1, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v0, 0x7d1

    iput v0, v1, Lcom/alipay/android/app/b/a/j;->c:I

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->showLocalViewLoading()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->SETTING_CHANNEL_PARAMS:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseAction(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    invoke-super {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->processEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    goto :goto_0
.end method


# virtual methods
.method public getViewLayoutId()I
    .locals 1

    const-string/jumbo v0, "setting_activity_channel"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onBack()Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->saveChangeData(I)V

    :goto_0
    return v2

    :cond_1
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mBizId:I

    invoke-static {v0}, Lcom/alipay/android/app/logic/c/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->preView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveChangeDataBack(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->onSaveChangeDataBack(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const-string/jumbo v0, "status=0101"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mBizId:I

    invoke-static {v0}, Lcom/alipay/android/app/logic/c/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/a;->i()[I

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    array-length v0, v1

    :cond_2
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/a;->i(Z)V

    :cond_3
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/util/a;->a(I)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$2;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$3;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public reShowSettingDialog()V
    .locals 0

    return-void
.end method

.method public updateViewData(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mCurrentFrame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmWindowData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mCurrentFrame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-super {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->updateViewData(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmWindowData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    const-string/jumbo v0, "payments"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "payments"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->channels:[Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/util/a;->a(I)V

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->channels:[Ljava/lang/String;

    aput-object v5, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mAdapter:Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->channels:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->setList([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mAdapter:Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->notifyDataSetChanged()V

    :cond_4
    const-string/jumbo v0, "switch_auto"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "switch_auto"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->isAutoChannel:Z

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mLocalView:Landroid/view/View;

    const-string/jumbo v1, "drag_text_label"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mLocalView:Landroid/view/View;

    const-string/jumbo v1, "auto_channel_check"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mLocalView:Landroid/view/View;

    const-string/jumbo v4, "channel_label"

    invoke-static {v4}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$4;

    invoke-direct {v4, p0, v3, v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$4;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;Landroid/view/View;Landroid/widget/TextView;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v4, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->isAutoChannel:Z

    if-eqz v4, :cond_6

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/ui/quickpay/util/a;->a(Z)V

    const-string/jumbo v0, "flybird_setting_channel_auto_label"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/util/a;->a(Z)V

    const-string/jumbo v0, "flybird_setting_channel_label"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method
