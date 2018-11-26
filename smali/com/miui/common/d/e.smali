.class public Lcom/miui/common/d/e;
.super Landroid/content/AsyncTaskLoader;
.source ""


# instance fields
.field private aBx:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/common/d/e;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/d/e;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public loadInBackground()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onLoadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/d/e;->aBx:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/common/d/e;->aBx:Ljava/lang/Object;

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/d/e;->aBx:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/d/e;->aBx:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/miui/common/d/e;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/d/e;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/d/e;->aBx:Ljava/lang/Object;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/miui/common/d/e;->forceLoad()V

    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/common/d/e;->cancelLoad()Z

    return-void
.end method
