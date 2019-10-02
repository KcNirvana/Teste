.class Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2;
.super Ljava/lang/Object;
.source "PlayerVideoFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$400(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2$1;-><init>(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$500(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$402(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;Z)Z

    :cond_0
    return-void
.end method
