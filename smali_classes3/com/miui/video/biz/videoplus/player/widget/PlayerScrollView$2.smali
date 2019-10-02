.class Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->onScrollChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$2;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$2;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->access$100(Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;)Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->setTranslationY(F)V

    return-void
.end method
