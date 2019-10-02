.class final Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;
.super Landroid/view/SurfaceView;
.source "FakeVideoView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/fake/FakeVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerSurfaceView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000-\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u000c\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007H\u0014R\u0010\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;",
        "Landroid/view/SurfaceView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyle",
        "",
        "(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Landroid/content/Context;)V",
        "mSHCallback",
        "com/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1",
        "Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;",
        "init",
        "",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final mSHCallback:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;

.field final synthetic this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/player/online/fake/FakeVideoView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->mSHCallback:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/player/online/fake/FakeVideoView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->mSHCallback:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/player/online/fake/FakeVideoView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    new-instance p1, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;-><init>(Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->mSHCallback:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->init()V

    return-void
.end method

.method private final init()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->mSHCallback:Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView$mSHCallback$1;

    check-cast v1, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMForceFullScreen$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getVideoHeight()I

    move-result v1

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    mul-int v2, v0, p2

    mul-int v3, p1, v1

    if-le v2, v3, :cond_0

    div-int p2, v3, v0

    goto :goto_0

    :cond_0
    if-ge v2, v3, :cond_1

    div-int p1, v2, v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMUseAdjustSize$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMAdjustWidth$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p2}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMAdjustHeight$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)I

    move-result p2

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    :goto_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMSurfaceView$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Landroid/view/SurfaceView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMSurfaceView$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Landroid/view/SurfaceView;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/player/online/fake/FakeVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/biz/player/online/fake/FakeVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/fake/FakeVideoView;->access$getMSurfaceView$p(Lcom/miui/video/biz/player/online/fake/FakeVideoView;)Landroid/view/SurfaceView;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, -0x1

    invoke-interface {p1, p2, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_6
    return-void
.end method
