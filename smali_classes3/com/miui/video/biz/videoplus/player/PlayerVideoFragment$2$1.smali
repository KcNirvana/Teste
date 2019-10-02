.class Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2$1;
.super Ljava/lang/Object;
.source "PlayerVideoFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2;->onPrepared(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2$1;->this$1:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2$1;->this$1:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->access$500(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setVisibility(I)V

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
