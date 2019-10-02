.class Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$1;
.super Ljava/lang/Object;
.source "LandscapeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->setBitmaps(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

.field final synthetic val$bitmap:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$1;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$1;->val$bitmap:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$1;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$000(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$1;->val$bitmap:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setBitmaps(Ljava/util/List;Z)V

    return-void
.end method
