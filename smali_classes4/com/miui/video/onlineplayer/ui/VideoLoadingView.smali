.class public final Lcom/miui/video/onlineplayer/ui/VideoLoadingView;
.super Ljava/lang/Object;
.source "VideoLoadingView.kt"

# interfaces
.implements Lcom/miui/video/biz/player/online/LoadingContract$LoadingView;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0006\u0010\u001a\u001a\u00020\u0019J\u0006\u0010\u001b\u001a\u00020\u0019J\u0006\u0010\u001c\u001a\u00020\u0019J\u0008\u0010\u001d\u001a\u00020\u0019H\u0016J\u0006\u0010\u001e\u001a\u00020\u0019J\u0010\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u0010H\u0016J\u0010\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u0010H\u0016J\u0010\u0010#\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u0010H\u0016J\u0008\u0010$\u001a\u00020\u0019H\u0016J\u0006\u0010%\u001a\u00020\u0019J\u000e\u0010&\u001a\u00020\u00192\u0006\u0010\'\u001a\u00020\u0010J\u000e\u0010(\u001a\u00020\u00192\u0006\u0010)\u001a\u00020\u0010J\u0006\u0010*\u001a\u00020\u0019J\u000e\u0010+\u001a\u00020\u00192\u0006\u0010,\u001a\u00020\u0010J$\u0010-\u001a\u00020\u00192\u0006\u0010.\u001a\u00020/2\u0008\u0008\u0002\u00100\u001a\u00020\u00062\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010\u0010R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/miui/video/onlineplayer/ui/VideoLoadingView;",
        "Lcom/miui/video/biz/player/online/LoadingContract$LoadingView;",
        "mParent",
        "Landroid/widget/FrameLayout;",
        "(Landroid/widget/FrameLayout;)V",
        "isActive",
        "",
        "()Z",
        "isShowing",
        "mLoadingText",
        "Landroid/widget/TextView;",
        "mLoadingView",
        "Landroid/view/View;",
        "mNetWorkBtn",
        "mNetWorkView",
        "mPosterImageUrl",
        "",
        "mShowLoadingText",
        "mUpdateBtn",
        "mUpdateInfo",
        "mUpdateView",
        "mVideoPosterView",
        "Landroid/widget/ImageView;",
        "viewIsShowing",
        "hide",
        "",
        "hideLoadingView",
        "hideNetWorkView",
        "hideUpdateView",
        "refresh",
        "release",
        "setLoadingIcon",
        "img",
        "setMainTitle",
        "text",
        "setSubTitle",
        "show",
        "showBuffering",
        "showLoading",
        "title",
        "showLoadingErrorText",
        "error",
        "showNetWorkView",
        "showPluginDownloading",
        "cp_name",
        "showUpdateView",
        "context",
        "Landroid/content/Context;",
        "showUpdateBtn",
        "targetVersionName",
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
.field private final isActive:Z

.field private final isShowing:Z

.field private mLoadingText:Landroid/widget/TextView;

.field private mLoadingView:Landroid/view/View;

.field private mNetWorkBtn:Landroid/widget/TextView;

.field private mNetWorkView:Landroid/view/View;

.field private final mParent:Landroid/widget/FrameLayout;

.field private mPosterImageUrl:Ljava/lang/String;

.field private mShowLoadingText:Z

.field private mUpdateBtn:Landroid/widget/TextView;

.field private mUpdateInfo:Landroid/widget/TextView;

.field private mUpdateView:Landroid/view/View;

.field private mVideoPosterView:Landroid/widget/ImageView;

.field private viewIsShowing:Z


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mParent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    iget-boolean p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->viewIsShowing:Z

    iput-boolean p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->isActive:Z

    iget-boolean p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->viewIsShowing:Z

    iput-boolean p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->isShowing:Z

    return-void
.end method

.method public static final synthetic access$getMParent$p(Lcom/miui/video/onlineplayer/ui/VideoLoadingView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic showUpdateView$default(Lcom/miui/video/onlineplayer/ui/VideoLoadingView;Landroid/content/Context;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->showUpdateView(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->viewIsShowing:Z

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mVideoPosterView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mVideoPosterView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mVideoPosterView:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final hideLoadingView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingView:Landroid/view/View;

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingText:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mVideoPosterView:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method public final hideNetWorkView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mNetWorkView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mNetWorkView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mNetWorkView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final hideUpdateView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateBtn:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->isActive:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->isShowing:Z

    return v0
.end method

.method public refresh()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->viewIsShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public final release()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->hideLoadingView()V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->hideNetWorkView()V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->hideUpdateView()V

    return-void
.end method

.method public setLoadingIcon(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "img"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->viewIsShowing:Z

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->hideNetWorkView()V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->hideUpdateView()V

    iget-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/miui/video/biz/player/online/R$layout;->vp_loading_view:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingView:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sget v3, Lcom/miui/video/biz/player/online/R$id;->loading_progressbar:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    sget v5, Lcom/miui/video/biz/player/online/R$drawable;->video_loading_gif:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingView:Landroid/view/View;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-wide v5, 0x80000000L

    long-to-int v3, v5

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingView:Landroid/view/View;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1, v0, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    sget v1, Lcom/miui/video/biz/player/online/R$id;->loading_textview:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    sget v1, Lcom/miui/video/biz/player/online/R$id;->video_poster:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mVideoPosterView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mPosterImageUrl:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mPosterImageUrl:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const-string v1, "http"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mVideoPosterView:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mPosterImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mVideoPosterView:Landroid/widget/ImageView;

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_6
    iget-boolean v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mShowLoadingText:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingText:Landroid/widget/TextView;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingView:Landroid/view/View;

    if-nez v0, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public final showBuffering()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-object v4, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "mParent.resources"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    mul-double v4, v4, v2

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingText:Landroid/widget/TextView;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    sget v1, Lcom/miui/video/biz/player/online/R$string;->ovp_buffering_video_netplay_label_v5:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public final showLoading(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v6, "mParent.resources"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v0

    mul-double v6, v6, v4

    cmpg-double v0, v2, v6

    if-gez v0, :cond_2

    iget-object p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingText:Landroid/widget/TextView;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingText:Landroid/widget/TextView;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingText:Landroid/widget/TextView;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final showLoadingErrorText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "mParent.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/player/online/R$string;->ovp_start_error_msg:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mParent.context.resource\u2026ring.ovp_start_error_msg)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->showLoading(Ljava/lang/String;)V

    return-void
.end method

.method public final showNetWorkView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/NetworkUtils;->checkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->hideUpdateView()V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mNetWorkView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/miui/video/biz/player/online/R$layout;->vp_network_view:I

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mNetWorkView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mNetWorkView:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    sget v2, Lcom/miui/video/biz/player/online/R$id;->btn_network:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mNetWorkBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mNetWorkBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/miui/video/onlineplayer/ui/VideoLoadingView$showNetWorkView$1;

    invoke-direct {v2, p0}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView$showNetWorkView$1;-><init>(Lcom/miui/video/onlineplayer/ui/VideoLoadingView;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mNetWorkView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mNetWorkView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mNetWorkView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mNetWorkView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final showPluginDownloading(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cp_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingView:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "mParent.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/video/biz/player/online/R$string;->ovp_video_plugin_installation_two:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    iget-object v5, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "mParent.resources"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v5

    mul-double v5, v5, v3

    cmpg-double v1, v1, v5

    if-gez v1, :cond_2

    iget-object p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingText:Landroid/widget/TextView;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingText:Landroid/widget/TextView;

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mLoadingText:Landroid/widget/TextView;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final showUpdateView(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->hideUpdateView()V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/miui/video/biz/player/online/R$layout;->vp_hint_view:I

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sget v2, Lcom/miui/video/biz/player/online/R$id;->v_player_update_ok:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateView:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    sget v2, Lcom/miui/video/biz/player/online/R$id;->v_player_update_info:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateInfo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/miui/video/onlineplayer/ui/VideoLoadingView$showUpdateView$1;

    invoke-direct {v2, p3, p1}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView$showUpdateView$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    if-eqz p2, :cond_8

    const-string p2, "player"

    invoke-static {p2, p3}, Lcom/miui/video/service/update/UpgradeStatisticUtils;->exposeUpgrade(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateBtn:Landroid/widget/TextView;

    if-eqz p2, :cond_7

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    iget-object p2, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateInfo:Landroid/widget/TextView;

    if-eqz p2, :cond_a

    sget p3, Lcom/miui/video/biz/player/online/R$string;->ovp_player_update_info:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateBtn:Landroid/widget/TextView;

    if-eqz p2, :cond_9

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    iget-object p2, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateInfo:Landroid/widget/TextView;

    if-eqz p2, :cond_a

    sget p3, Lcom/miui/video/biz/player/online/R$string;->ovp_start_error_msg:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mParent:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->mUpdateView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
