.class Lcom/miui/video/player/service/controller/VideoMediaController$2;
.super Ljava/lang/Object;
.source "VideoMediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/controller/VideoMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/controller/VideoMediaController;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/controller/VideoMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController$2;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController$2;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/video/player/service/controller/VideoMediaController;->mIsNextPlayEnable:Z

    return-void
.end method
