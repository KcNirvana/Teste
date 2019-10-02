.class Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$2;
.super Ljava/lang/Object;
.source "FrameLocalController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$2;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$2;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$2;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$700(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->syncPositionAtPreview(I)V

    return-void
.end method
