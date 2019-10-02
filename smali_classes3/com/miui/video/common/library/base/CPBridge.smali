.class public Lcom/miui/video/common/library/base/CPBridge;
.super Ljava/lang/Object;
.source "CPBridge.java"


# instance fields
.field private mCaseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/library/base/BaseCase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/library/base/CPBridge;->mCaseList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCase(Lcom/miui/video/common/library/base/BaseCase;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/base/CPBridge;->mCaseList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/base/CPBridge;->mCaseList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCase()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/library/base/CPBridge;->mCaseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/library/base/BaseCase;

    invoke-virtual {v1}, Lcom/miui/video/common/library/base/BaseCase;->dispose()V

    iget-object v2, p0, Lcom/miui/video/common/library/base/CPBridge;->mCaseList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
