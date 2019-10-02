.class public interface abstract Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;
.super Ljava/lang/Object;
.source "LocalMediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMediaLoadListener"
.end annotation


# virtual methods
.method public abstract loadFinish(ZLjava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
