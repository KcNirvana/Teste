.class public final Lcom/miui/video/biz/player/online/ad/MiAdsView;
.super Landroid/widget/RelativeLayout;
.source "MiAdsView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;,
        Lcom/miui/video/biz/player/online/ad/MiAdsView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMiAdsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MiAdsView.kt\ncom/miui/video/biz/player/online/ad/MiAdsView\n*L\n1#1,145:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 +2\u00020\u0001:\u0002+,B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B#\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nB+\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u0016\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&J\u0006\u0010\'\u001a\u00020\u001fJ\u0006\u0010(\u001a\u00020\u001fJ\u0006\u0010)\u001a\u00020\u001fJ\u001e\u0010*\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006-"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/ad/MiAdsView;",
        "Landroid/widget/RelativeLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "instreamAdManager",
        "Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;",
        "getInstreamAdManager",
        "()Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;",
        "setInstreamAdManager",
        "(Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;)V",
        "instreamVideoAdCallback",
        "Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;",
        "getInstreamVideoAdCallback",
        "()Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;",
        "setInstreamVideoAdCallback",
        "(Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;)V",
        "isEnd",
        "",
        "()Z",
        "setEnd",
        "(Z)V",
        "addToView",
        "",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "loadAndShow",
        "tagId",
        "",
        "outCallback",
        "Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;",
        "onResume",
        "release",
        "removeFromParent",
        "showAsChild",
        "Companion",
        "InstreamAdListener",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/biz/player/online/ad/MiAdsView$Companion;

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "MiAdsView"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private instreamAdManager:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private instreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isEnd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/player/online/ad/MiAdsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/player/online/ad/MiAdsView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->Companion:Lcom/miui/video/biz/player/online/ad/MiAdsView$Companion;

    const-string v0, "MiAdsView"

    sput-object v0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/player/online/R$layout;->ovp_ad_instream_views:I

    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iput-boolean p4, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->isEnd:Z

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final addToView(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->removeFromParent()V

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final getInstreamAdManager()Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->instreamAdManager:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;

    return-object v0
.end method

.method public final getInstreamVideoAdCallback()Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->instreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    return-object v0
.end method

.method public final isEnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->isEnd:Z

    return v0
.end method

.method public final loadAndShow(Ljava/lang/String;Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tagId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->isEnd:Z

    new-instance v0, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;

    invoke-direct {v0, p0, p2}, Lcom/miui/video/biz/player/online/ad/MiAdsView$loadAndShow$1;-><init>(Lcom/miui/video/biz/player/online/ad/MiAdsView;Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;)V

    check-cast v0, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->instreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    new-instance p2, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->instreamAdManager:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->instreamAdManager:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->instreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    invoke-virtual {p1, p2}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->setInstreamAdCallback(Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->instreamAdManager:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;

    if-eqz p1, :cond_1

    sget p2, Lcom/miui/video/biz/player/online/R$id;->v_instream_ad_container:I

    invoke-virtual {p0, p2}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->loadAd(Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->isEnd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->instreamAdManager:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->onResume()V

    :cond_0
    return-void
.end method

.method public final release()V
    .locals 3

    sget v0, Lcom/miui/video/biz/player/online/R$id;->v_instream_ad_root:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/player/online/R$color;->c_transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->instreamAdManager:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->destroyAd()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->instreamAdManager:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;->setInstreamAdCallback(Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;)V

    :cond_1
    check-cast v1, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    iput-object v1, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->instreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->removeFromParent()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->isEnd:Z

    return-void
.end method

.method public final removeFromParent()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final setEnd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->isEnd:Z

    return-void
.end method

.method public final setInstreamAdManager(Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;)V
    .locals 0
    .param p1    # Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->instreamAdManager:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdManager;

    return-void
.end method

.method public final setInstreamVideoAdCallback(Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;)V
    .locals 0
    .param p1    # Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ad/MiAdsView;->instreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    return-void
.end method

.method public final showAsChild(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->addToView(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p2, p3}, Lcom/miui/video/biz/player/online/ad/MiAdsView;->loadAndShow(Ljava/lang/String;Lcom/miui/video/biz/player/online/ad/MiAdsView$InstreamAdListener;)V

    return-void
.end method
