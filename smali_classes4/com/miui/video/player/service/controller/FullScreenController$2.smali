.class Lcom/miui/video/player/service/controller/FullScreenController$2;
.super Landroid/view/OrientationEventListener;
.source "FullScreenController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/controller/FullScreenController;->attachActivity(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/miui/video/player/service/play/OrientationUpdater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/controller/FullScreenController;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/controller/FullScreenController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController$2;->this$0:Lcom/miui/video/player/service/controller/FullScreenController;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xf

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x159

    if-lt p1, v0, :cond_2

    const/16 v0, 0x168

    if-ge p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    const/16 v1, 0x4b

    if-lt p1, v1, :cond_3

    const/16 v1, 0x69

    if-ge p1, v1, :cond_3

    const/16 v0, 0x8

    :cond_3
    const/16 v1, 0xa5

    if-lt p1, v1, :cond_4

    const/16 v1, 0xc3

    if-ge p1, v1, :cond_4

    const/16 v0, 0x9

    :cond_4
    const/16 v1, 0xff

    if-lt p1, v1, :cond_5

    const/16 v1, 0x11d

    if-ge p1, v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    if-ltz v0, :cond_6

    iget-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController$2;->this$0:Lcom/miui/video/player/service/controller/FullScreenController;

    invoke-static {p1}, Lcom/miui/video/player/service/controller/FullScreenController;->access$000(Lcom/miui/video/player/service/controller/FullScreenController;)I

    move-result p1

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController$2;->this$0:Lcom/miui/video/player/service/controller/FullScreenController;

    invoke-static {p1, v0}, Lcom/miui/video/player/service/controller/FullScreenController;->access$002(Lcom/miui/video/player/service/controller/FullScreenController;I)I

    iget-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController$2;->this$0:Lcom/miui/video/player/service/controller/FullScreenController;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/FullScreenController;->hideController()V

    :cond_6
    return-void
.end method
