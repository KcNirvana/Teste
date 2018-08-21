.class public interface abstract Lmiui/assistant/index/IAssistContentIndex;
.super Ljava/lang/Object;
.source "IAssistContentIndex.java"


# virtual methods
.method public abstract batchIndexItems(Landroid/content/Context;Ljava/util/List;Lmiui/assistant/index/IndexCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lmiui/assistant/index/AssistContentItem;",
            ">;",
            "Lmiui/assistant/index/IndexCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract deleteAllIndexItems(Landroid/content/Context;Lmiui/assistant/index/IndexCallback;)V
.end method

.method public abstract deleteIndexItem(Landroid/content/Context;Ljava/lang/String;Lmiui/assistant/index/IndexCallback;)V
.end method

.method public abstract indexItem(Landroid/content/Context;Lmiui/assistant/index/AssistContentItem;Lmiui/assistant/index/IndexCallback;)V
.end method
