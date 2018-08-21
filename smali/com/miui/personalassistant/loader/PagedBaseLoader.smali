.class public Lcom/miui/personalassistant/loader/PagedBaseLoader;
.super Lcom/miui/personalassistant/loader/BaseLoader;
.source "PagedBaseLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PagedBaseLoader"


# instance fields
.field private mHasNextPage:Z

.field private mInitialPageIndex:J

.field private mPageIndex:J

.field private final mPageIndexKey:Ljava/lang/String;

.field private final mPageSize:I

.field private mRequest:Lcom/miui/personalassistant/request/core/HttpRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/loader/BaseLoader;-><init>(Landroid/content/Context;Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;)V

    iput p4, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mPageSize:I

    iput-object p3, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mPageIndexKey:Ljava/lang/String;

    int-to-long v0, p5

    iput-wide v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mPageIndex:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mHasNextPage:Z

    iget-wide v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mPageIndex:J

    iput-wide v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mInitialPageIndex:J

    return-void
.end method


# virtual methods
.method public getPageSize()J
    .locals 2

    iget v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mPageSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public hasNextPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mHasNextPage:Z

    return v0
.end method

.method public isFirstPage()Z
    .locals 4

    iget-wide v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mPageIndex:J

    iget-wide v2, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mInitialPageIndex:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDataMerged(ILcom/miui/personalassistant/request/core/BaseResult;Lcom/miui/personalassistant/request/core/BaseResult;Z)Lcom/miui/personalassistant/request/core/BaseResult;
    .locals 4

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/miui/personalassistant/request/core/BaseResult;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mHasNextPage:Z

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/loader/PagedBaseLoader;->isFirstPage()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/personalassistant/loader/BaseLoader;->onDataMerged(ILcom/miui/personalassistant/request/core/BaseResult;Lcom/miui/personalassistant/request/core/BaseResult;Z)Lcom/miui/personalassistant/request/core/BaseResult;

    move-result-object p3

    :cond_1
    iget-boolean v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mHasNextPage:Z

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    iget-wide v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mPageIndex:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mPageIndex:J

    :cond_2
    return-object p3

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onForceLoad()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mHasNextPage:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mRequest:Lcom/miui/personalassistant/request/core/HttpRequest;

    iget-object v1, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mPageIndexKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mPageIndex:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/request/core/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/loader/PagedBaseLoader;->isFirstPage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mRequest:Lcom/miui/personalassistant/request/core/HttpRequest;

    invoke-virtual {v0, v4}, Lcom/miui/personalassistant/request/core/HttpRequest;->setRequestCache(Z)V

    :cond_0
    invoke-super {p0}, Lcom/miui/personalassistant/loader/BaseLoader;->onForceLoad()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/loader/PagedBaseLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1b0b02d1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public reload()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/personalassistant/loader/PagedBaseLoader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/miui/personalassistant/loader/BaseLoader;->reload()V

    :cond_0
    return-void
.end method

.method public resetPageIndex()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;

    iget-wide v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mInitialPageIndex:J

    iput-wide v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mPageIndex:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mHasNextPage:Z

    return-void
.end method

.method public setRequest(Lcom/miui/personalassistant/request/core/BaseRequest;)V
    .locals 2

    instance-of v0, p1, Lcom/miui/personalassistant/request/core/HttpRequest;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/personalassistant/request/core/HttpRequest;

    iput-object v0, p0, Lcom/miui/personalassistant/loader/PagedBaseLoader;->mRequest:Lcom/miui/personalassistant/request/core/HttpRequest;

    invoke-super {p0, p1}, Lcom/miui/personalassistant/loader/BaseLoader;->setRequest(Lcom/miui/personalassistant/request/core/BaseRequest;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Must be an instance of HttpRequest"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
