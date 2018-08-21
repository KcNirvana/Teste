.class public Lcom/miui/personalassistant/loader/BaseLoader;
.super Landroid/content/Loader;
.source "BaseLoader.java"

# interfaces
.implements Lcom/miui/personalassistant/loader/Reloadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/loader/BaseLoader$Task;,
        Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;,
        Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;,
        Lcom/miui/personalassistant/loader/BaseLoader$DataLoadedListener;,
        Lcom/miui/personalassistant/loader/BaseLoader$RequestResultStatusListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader",
        "<",
        "Lcom/miui/personalassistant/request/core/BaseResult;",
        ">;",
        "Lcom/miui/personalassistant/loader/Reloadable;"
    }
.end annotation


# static fields
.field private static final REQUEST_DATA_LOADED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BaseLoader"


# instance fields
.field protected mDataLoadedListener:Lcom/miui/personalassistant/loader/BaseLoader$DataLoadedListener;

.field private mDeliverResult:Z

.field private mHasDeliverResult:Z

.field private volatile mIsLoading:Z

.field protected mLoaderCallBack:Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;

.field private mProgressListener:Lcom/miui/personalassistant/loader/ProgressListener;

.field private mRequestHandler:Landroid/os/Handler;

.field private mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/request/core/BaseRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestResultStatusListener:Lcom/miui/personalassistant/loader/BaseLoader$RequestResultStatusListener;

.field protected mResult:Lcom/miui/personalassistant/request/core/BaseResult;

.field private mTask:Lcom/miui/personalassistant/loader/BaseLoader$Task;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/personalassistant/loader/BaseLoader$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/loader/BaseLoader$Task;-><init>(Lcom/miui/personalassistant/loader/BaseLoader;Lcom/miui/personalassistant/loader/BaseLoader$1;)V

    iput-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mTask:Lcom/miui/personalassistant/loader/BaseLoader$Task;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mRequestList:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/miui/personalassistant/loader/BaseLoader$Task$DataLoadedCallback;

    iget-object v2, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mTask:Lcom/miui/personalassistant/loader/BaseLoader$Task;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/miui/personalassistant/loader/BaseLoader$Task$DataLoadedCallback;-><init>(Lcom/miui/personalassistant/loader/BaseLoader$Task;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mRequestHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mLoaderCallBack:Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mDeliverResult:Z

    return-void
.end method

.method static synthetic access$102(Lcom/miui/personalassistant/loader/BaseLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/loader/BaseLoader;)Lcom/miui/personalassistant/loader/ProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mProgressListener:Lcom/miui/personalassistant/loader/ProgressListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/loader/BaseLoader;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/loader/BaseLoader;->deliverValidResult()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/loader/BaseLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mDeliverResult:Z

    return v0
.end method

.method static synthetic access$402(Lcom/miui/personalassistant/loader/BaseLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mDeliverResult:Z

    return p1
.end method

.method static synthetic access$502(Lcom/miui/personalassistant/loader/BaseLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mHasDeliverResult:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/loader/BaseLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mRequestHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/loader/BaseLoader;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mRequestList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/personalassistant/loader/BaseLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/loader/BaseLoader;->ensureLoadingProgressListener()V

    return-void
.end method

.method private deliverValidResult()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;

    invoke-virtual {v0}, Lcom/miui/personalassistant/request/core/BaseResult;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mHasDeliverResult:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureLoadingProgressListener()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mProgressListener:Lcom/miui/personalassistant/loader/ProgressListener;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "When loading HttpRequest, a ProgressListener is necessary"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearProgressListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mProgressListener:Lcom/miui/personalassistant/loader/ProgressListener;

    return-void
.end method

.method public getRequestList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/request/core/BaseRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mRequestList:Ljava/util/List;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mIsLoading:Z

    return v0
.end method

.method protected onDataMerged(ILcom/miui/personalassistant/request/core/BaseResult;Lcom/miui/personalassistant/request/core/BaseResult;Z)Lcom/miui/personalassistant/request/core/BaseResult;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mDataLoadedListener:Lcom/miui/personalassistant/loader/BaseLoader$DataLoadedListener;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mDataLoadedListener:Lcom/miui/personalassistant/loader/BaseLoader$DataLoadedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/personalassistant/loader/BaseLoader$DataLoadedListener;->onDataMerged(ILcom/miui/personalassistant/request/core/BaseResult;Lcom/miui/personalassistant/request/core/BaseResult;Z)Lcom/miui/personalassistant/request/core/BaseResult;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method protected onForceLoad()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mTask:Lcom/miui/personalassistant/loader/BaseLoader$Task;

    invoke-virtual {v0}, Lcom/miui/personalassistant/loader/BaseLoader$Task;->execute()V

    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mLoaderCallBack:Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;

    invoke-interface {v0}, Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;->onInitLoadingProgressListener()Lcom/miui/personalassistant/loader/ProgressListener;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mProgressListener:Lcom/miui/personalassistant/loader/ProgressListener;

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mProgressListener:Lcom/miui/personalassistant/loader/ProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mProgressListener:Lcom/miui/personalassistant/loader/ProgressListener;

    invoke-interface {v0, v1, v1, p0}, Lcom/miui/personalassistant/loader/ProgressListener;->onInit(ZZLcom/miui/personalassistant/loader/Reloadable;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;

    invoke-virtual {v0}, Lcom/miui/personalassistant/request/core/BaseResult;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;

    invoke-virtual {v0}, Lcom/miui/personalassistant/request/core/BaseResult;->shallowClone()Lcom/miui/personalassistant/request/core/BaseResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/loader/BaseLoader;->deliverResult(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mProgressListener:Lcom/miui/personalassistant/loader/ProgressListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mProgressListener:Lcom/miui/personalassistant/loader/ProgressListener;

    invoke-direct {p0}, Lcom/miui/personalassistant/loader/BaseLoader;->deliverValidResult()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/personalassistant/loader/ProgressListener;->onStopLoading(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mIsLoading:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;

    invoke-virtual {v0}, Lcom/miui/personalassistant/request/core/BaseResult;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/personalassistant/loader/BaseLoader;->takeContentChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/miui/personalassistant/loader/BaseLoader;->forceLoad()V

    :cond_3
    return-void
.end method

.method public reload()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mIsLoading:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/loader/BaseLoader;->forceLoad()V

    :cond_0
    return-void
.end method

.method public setOnDataLoadedListener(Lcom/miui/personalassistant/loader/BaseLoader$DataLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mDataLoadedListener:Lcom/miui/personalassistant/loader/BaseLoader$DataLoadedListener;

    return-void
.end method

.method public setRequest(Lcom/miui/personalassistant/request/core/BaseRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mRequestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRequest(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/request/core/BaseRequest;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mRequestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setRequestResultStatusListener(Lcom/miui/personalassistant/loader/BaseLoader$RequestResultStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/loader/BaseLoader;->mRequestResultStatusListener:Lcom/miui/personalassistant/loader/BaseLoader$RequestResultStatusListener;

    return-void
.end method
