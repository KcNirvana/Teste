.class Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$9;
.super Ljava/lang/Object;
.source "LandscapeController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->hideTimePositionAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$9;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$9;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$200(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
