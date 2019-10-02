.class public interface abstract Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;
.super Ljava/lang/Object;
.source "MediaSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/player/MediaSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrmInitCallback"
.end annotation


# virtual methods
.method public abstract onDrmInitComplete(Ljava/util/Set;ZLjava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/kaltura/playkit/PKDrmParams$Scheme;",
            ">;Z",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method
