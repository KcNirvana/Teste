.class Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$3;
.super Ljava/lang/Object;
.source "PlayerScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->onScrollEnd()V
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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->access$200(Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->access$300(Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->smoothScrollTo(II)V

    return-void
.end method
