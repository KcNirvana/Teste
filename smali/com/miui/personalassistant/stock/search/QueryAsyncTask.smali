.class public Lcom/miui/personalassistant/stock/search/QueryAsyncTask;
.super Landroid/os/AsyncTask;
.source "QueryAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/miui/personalassistant/stock/model/Stock;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQuery:Ljava/lang/String;

.field private mSearchAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/personalassistant/stock/search/SearchAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mStockRequest:Lcom/miui/personalassistant/request/StockRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/personalassistant/stock/search/SearchAdapter;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;->mSearchAdapter:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;->mQuery:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/stock/model/Stock;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/miui/personalassistant/request/StockRequest;

    iget-object v2, p0, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "url_search_type"

    const-string/jumbo v4, "key"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;->mQuery:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/personalassistant/request/StockRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;->mStockRequest:Lcom/miui/personalassistant/request/StockRequest;

    iget-object v1, p0, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;->mStockRequest:Lcom/miui/personalassistant/request/StockRequest;

    invoke-virtual {v1}, Lcom/miui/personalassistant/request/StockRequest;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/stock/utils/StockUtils;->parseStocks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/stock/model/Stock;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;->mSearchAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;->mSearchAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;->mSearchAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/stock/search/SearchAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/personalassistant/stock/search/SearchAdapter;->setStocks(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
