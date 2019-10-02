.class public Lcom/miui/video/common/library/utils/LayerUtils$LayerList;
.super Ljava/lang/Object;
.source "LayerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/utils/LayerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayerList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private listener:Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/miui/video/common/library/utils/LayerUtils$Layer<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils$LayerList;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public getListener()Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils$LayerList;->listener:Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener;

    return-object v0
.end method

.method public getQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/miui/video/common/library/utils/LayerUtils$Layer<",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils$LayerList;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public setListener(Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils$LayerList;->listener:Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener;

    return-void
.end method
