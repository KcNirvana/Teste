.class public Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;
.super Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;
.source "FlybirdLocalViewNoPwdValuePage.java"


# instance fields
.field private mAdapter:Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mValues:[I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mAdapter:Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->initView(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mLocalView:Landroid/view/View;

    const-string/jumbo v1, "nopwd_list"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mContext:Landroid/app/Activity;

    const-string/jumbo v2, "mini_list_item_handle_right"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "text"

    invoke-static {v3}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mAdapter:Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mAdapter:Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mLocalView:Landroid/view/View;

    const-string/jumbo v1, "title_back_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage$1;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage$2;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;)[I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mValues:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;)Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mAdapter:Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;

    return-object v0
.end method


# virtual methods
.method public getViewLayoutId()I
    .locals 1

    const-string/jumbo v0, "setting_activity_nopwd"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onBack()Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->preView(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSaveChangeDataBack(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->onSaveChangeDataBack(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "status=0101"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage$3;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->b(I)V

    goto :goto_0
.end method

.method public updateViewData(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmWindowData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmWindowData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    const-string/jumbo v0, "nopwd_limit"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nopwd_limit"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mValues:[I

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mValues:[I

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mValues:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mAdapter:Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;->setList([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mAdapter:Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;->notifyDataSetChanged()V

    :cond_3
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/a;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mAdapter:Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;->setmDefaultValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "nopwd_limit_default"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->mAdapter:Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;

    const-string/jumbo v1, "nopwd_limit_default"

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/widget/SettingNoPwdAdapter;->setmDefaultValue(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
