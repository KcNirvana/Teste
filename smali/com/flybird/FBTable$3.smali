.class Lcom/flybird/FBTable$3;
.super Lcom/flybird/AutoScrollMoreListAdapter;
.source "FBTable.java"


# instance fields
.field final synthetic this$0:Lcom/flybird/FBTable;


# direct methods
.method constructor <init>(Lcom/flybird/FBTable;Landroid/content/Context;Landroid/widget/ListView;Landroid/util/SparseArray;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBTable$3;->this$0:Lcom/flybird/FBTable;

    invoke-direct {p0, p2, p3, p4}, Lcom/flybird/AutoScrollMoreListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;Landroid/util/SparseArray;)V

    return-void
.end method


# virtual methods
.method protected getFailView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBTable$3;->this$0:Lcom/flybird/FBTable;

    invoke-static {v0}, Lcom/flybird/FBTable;->access$300(Lcom/flybird/FBTable;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBTable$Item;

    iget-object v0, v0, Lcom/flybird/FBTable$Item;->model:Lorg/json/JSONObject;

    const-string/jumbo v1, "tplId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/flybird/FBTable$3;->this$0:Lcom/flybird/FBTable;

    iget-object v1, v1, Lcom/flybird/FBTable;->idMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method protected getLoadingView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBTable$3;->this$0:Lcom/flybird/FBTable;

    iget-object v0, v0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->i()Lcom/alipay/birdnest/api/BirdNestEngine$l;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBTable$3;->this$0:Lcom/flybird/FBTable;

    invoke-static {v1}, Lcom/flybird/FBTable;->access$500(Lcom/flybird/FBTable;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flybird/FBTable$3;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alipay/birdnest/api/BirdNestEngine$l;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/flybird/FBTable$3;->this$0:Lcom/flybird/FBTable;

    invoke-static {v0}, Lcom/flybird/FBTable;->access$300(Lcom/flybird/FBTable;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBTable$Item;

    iget-object v1, v0, Lcom/flybird/FBTable$Item;->model:Lorg/json/JSONObject;

    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "tplId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "DynamicTemplateService"

    const-string/jumbo v2, "exception while FBTable.getView"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v5}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_5

    const-string/jumbo v0, "tpl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v0, "tplId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/flybird/FBTable$3;->this$0:Lcom/flybird/FBTable;

    invoke-static {v1, v0, v2}, Lcom/flybird/FBTable;->access$600(Lcom/flybird/FBTable;Ljava/lang/String;Ljava/lang/String;)Lcom/flybird/FBDocument;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->getContentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->getContentView()Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/flybird/FBTable$3;->this$0:Lcom/flybird/FBTable;

    iget-object v0, v0, Lcom/flybird/FBTable;->docMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-object p2

    :cond_4
    const-string/jumbo v1, "DynamicTemplateService"

    const-string/jumbo v2, "exception while FBTable.getView trigger a async template download"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tplId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0, v5}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lcom/flybird/FBTable$3;->this$0:Lcom/flybird/FBTable;

    iget-object v0, v0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/flybird/FBTable$3;->this$0:Lcom/flybird/FBTable;

    iget-object v0, v0, Lcom/flybird/FBTable;->docMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBDocument;

    const-string/jumbo v1, "undefined"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/flybird/FBDocument;->reloadData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBTable$3;->this$0:Lcom/flybird/FBTable;

    iget-object v0, v0, Lcom/flybird/FBTable;->idMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method protected itemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method protected onAutoLoadMore()Z
    .locals 4

    iget-object v0, p0, Lcom/flybird/FBTable$3;->this$0:Lcom/flybird/FBTable;

    invoke-static {v0}, Lcom/flybird/FBTable;->access$500(Lcom/flybird/FBTable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBTable$3;->this$0:Lcom/flybird/FBTable;

    invoke-static {v0}, Lcom/flybird/FBTable;->access$100(Lcom/flybird/FBTable;)Lcom/flybird/APPullRefreshView;

    move-result-object v0

    new-instance v1, Lcom/flybird/FBTable$3$1;

    invoke-direct {v1, p0}, Lcom/flybird/FBTable$3$1;-><init>(Lcom/flybird/FBTable$3;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/flybird/APPullRefreshView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onRetry()V
    .locals 0

    return-void
.end method
