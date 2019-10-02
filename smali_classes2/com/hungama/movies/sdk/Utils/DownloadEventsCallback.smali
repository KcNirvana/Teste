.class public interface abstract Lcom/hungama/movies/sdk/Utils/DownloadEventsCallback;
.super Ljava/lang/Object;
.source "DownloadEventsCallback.java"


# virtual methods
.method public abstract progress(Ljava/lang/String;II)V
.end method

.method public abstract state(Ljava/lang/String;I)V
.end method

.method public abstract updateVarientList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hungama/movies/sdk/Utils/DownloadVariant;",
            ">;)V"
        }
    .end annotation
.end method
