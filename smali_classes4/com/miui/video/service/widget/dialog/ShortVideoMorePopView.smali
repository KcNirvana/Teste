.class public final Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "ShortVideoMorePopView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0010H\u0002J\u0012\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0010H\u0002J\u0012\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0010H\u0002J\u0008\u0010\u001f\u001a\u00020\u0015H\u0002J\u0010\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"H\u0002J\u0012\u0010#\u001a\u00020\u00152\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0002J\u0008\u0010&\u001a\u00020\u0015H\u0002J\u0008\u0010\'\u001a\u00020\u0015H\u0002J\u001a\u0010(\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\u00072\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u000e\u0010*\u001a\u00020\u00152\u0006\u0010+\u001a\u00020\u0005J\u0006\u0010,\u001a\u00020-R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "context",
        "Landroid/content/Context;",
        "itemView",
        "Landroid/view/View;",
        "style",
        "",
        "actionWrapper",
        "Lcom/miui/video/service/action/ContentActionWrapper;",
        "(Landroid/content/Context;Landroid/view/View;ILcom/miui/video/service/action/ContentActionWrapper;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "mBaseUIEntity",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        "popupWindow",
        "Landroid/widget/PopupWindow;",
        "xOffset",
        "bgAlpha",
        "",
        "alpha",
        "",
        "convertToOVFavorPlayList",
        "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
        "cardEntity",
        "convertToOVFavorVideo",
        "Lcom/miui/video/base/database/OVFavorVideoEntity;",
        "convertToQueryFavorBody",
        "Lcom/miui/video/base/common/data/QueryFavorBody;",
        "dismiss",
        "doFavorite",
        "favoriteIcon",
        "Landroid/widget/ImageView;",
        "doReport",
        "entity",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "doShare",
        "initPopWindow",
        "setData",
        "position",
        "show",
        "view",
        "showing",
        "",
        "video_service_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final actionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mBaseUIEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private xOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILcom/miui/video/service/action/ContentActionWrapper;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/miui/video/service/action/ContentActionWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object p1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->actionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    return-void
.end method

.method public static final synthetic access$bgAlpha(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->bgAlpha(F)V

    return-void
.end method

.method public static final synthetic access$dismiss(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->dismiss()V

    return-void
.end method

.method public static final synthetic access$doFavorite(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->doFavorite(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static final synthetic access$doReport(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;Lcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->doReport(Lcom/miui/video/framework/base/ui/BaseUIEntity;)V

    return-void
.end method

.method public static final synthetic access$doShare(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->doShare()V

    return-void
.end method

.method public static final synthetic access$getMBaseUIEntity$p(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;)Lcom/miui/video/common/feed/entity/TinyCardEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->mBaseUIEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    return-object p0
.end method

.method public static final synthetic access$setMBaseUIEntity$p(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->mBaseUIEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    return-void
.end method

.method private final bgAlpha(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final convertToOVFavorPlayList(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/database/OVFavorPlayListEntity;
    .locals 3

    new-instance v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/OVFavorPlayListEntity;-><init>()V

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setUser_id(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setItem_type(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setAuthorId(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setAuthor_name(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getPlaylistId()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setPlaylist_id(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTopRightLogo()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setCp_logo(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v1

    :goto_5
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setImage_url(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_6
    move-object v2, v1

    :goto_6
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setTitle(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_7
    move-object v2, v1

    :goto_7
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setTarget(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getVideoCount()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setVideo_count(I)V

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getVideoCountText()Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setVideo_count_text(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setSave_time(J)V

    return-object v0
.end method

.method private final convertToOVFavorVideo(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/database/OVFavorVideoEntity;
    .locals 4

    new-instance v0, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/OVFavorVideoEntity;-><init>()V

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setUser_id(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setItem_type(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setAuthorId(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setAuthor_name(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getPlaylistId()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setPlaylist_id(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setVideoId(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTopRightLogo()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v1

    :goto_5
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setCp_logo(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    iget-wide v2, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_6

    :cond_6
    move-object v2, v1

    :goto_6
    if-nez v2, :cond_7

    const-wide/16 v2, 0x0

    goto :goto_7

    :cond_7
    iget-wide v2, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->duration:J

    :goto_7
    invoke-virtual {v0, v2, v3}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setDuration(J)V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_8
    move-object v2, v1

    :goto_8
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setImage_url(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_9
    move-object v2, v1

    :goto_9
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setTitle(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v1

    :cond_a
    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setTarget(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setSave_time(J)V

    return-object v0
.end method

.method private final convertToQueryFavorBody(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/common/data/QueryFavorBody;
    .locals 5

    new-instance v0, Lcom/miui/video/base/common/data/QueryFavorBody;

    invoke-direct {v0}, Lcom/miui/video/base/common/data/QueryFavorBody;-><init>()V

    iget-object v1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->mBaseUIEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    goto :goto_5

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x8e1fb7f

    if-eq v3, v4, :cond_6

    const v4, 0x5e95fd7f

    if-eq v3, v4, :cond_5

    const v4, 0x700681d2

    if-eq v3, v4, :cond_2

    goto :goto_5

    :cond_2
    const-string v3, "playlist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getPlaylistId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    iput-object v1, v0, Lcom/miui/video/base/common/data/QueryFavorBody;->playlist_id:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v2

    :cond_4
    iput-object v2, v0, Lcom/miui/video/base/common/data/QueryFavorBody;->feed_type:Ljava/lang/String;

    goto :goto_5

    :cond_5
    const-string v3, "shortvideo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_6
    const-string v3, "longvideo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_2
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getPlaylistId()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    move-object v1, v2

    :goto_3
    iput-object v1, v0, Lcom/miui/video/base/common/data/QueryFavorBody;->playlist_id:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    move-object v1, v2

    :goto_4
    iput-object v1, v0, Lcom/miui/video/base/common/data/QueryFavorBody;->video_id:Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v2

    :cond_9
    iput-object v2, v0, Lcom/miui/video/base/common/data/QueryFavorBody;->feed_type:Ljava/lang/String;

    :cond_a
    :goto_5
    return-object v0
.end method

.method private final dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private final doFavorite(Landroid/widget/ImageView;)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->mBaseUIEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x8e1fb7f

    if-eq v2, v3, :cond_4

    const v3, 0x5e95fd7f

    if-eq v2, v3, :cond_3

    const v3, 0x700681d2

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "playlist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->actionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->mBaseUIEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {p0, v2}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->convertToOVFavorPlayList(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/database/OVFavorPlayListEntity;

    move-result-object v2

    new-instance v3, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$doFavorite$2;

    invoke-direct {v3, p1}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$doFavorite$2;-><init>(Landroid/widget/ImageView;)V

    check-cast v3, Lcom/miui/video/service/action/ContentActionView;

    invoke-virtual {v1, v2, v0, v3}, Lcom/miui/video/service/action/ContentActionWrapper;->doPlayListFavorAction(Lcom/miui/video/base/database/OVFavorPlayListEntity;ZLcom/miui/video/service/action/ContentActionView;)V

    goto :goto_2

    :cond_3
    const-string v2, "shortvideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_4
    const-string v2, "longvideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->actionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->mBaseUIEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {p0, v2}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->convertToOVFavorVideo(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/database/OVFavorVideoEntity;

    move-result-object v2

    new-instance v3, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$doFavorite$1;

    invoke-direct {v3, p1}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$doFavorite$1;-><init>(Landroid/widget/ImageView;)V

    check-cast v3, Lcom/miui/video/service/action/ContentActionView;

    invoke-virtual {v1, v2, v0, v3}, Lcom/miui/video/service/action/ContentActionWrapper;->doVideoFavorAction(Lcom/miui/video/base/database/OVFavorVideoEntity;ZLcom/miui/video/service/action/ContentActionView;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final doReport(Lcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 4

    instance-of v0, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getKvList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;

    iget-boolean v2, v1, Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;->checked:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->actionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v2, :cond_0

    const-string v3, "kv"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v1}, Lcom/miui/video/service/action/ContentActionWrapper;->doReport(Lcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/common/feed/entity/TinyCardEntity$KvEntity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final doShare()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->mBaseUIEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/uri/CEntitys;->getLinkEntity(Ljava/lang/String;)Lcom/miui/video/framework/uri/LinkEntity;

    move-result-object v2

    const-string v3, "entity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/video/framework/uri/LinkEntity;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/video/service/share/data/ShareInfo$Builder;

    invoke-direct {v3}, Lcom/miui/video/service/share/data/ShareInfo$Builder;-><init>()V

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->type(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->id(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->title(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->bitmap(Landroid/graphics/Bitmap;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->subTitle(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->imageUrl(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/blank_transition?target="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->link(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v0

    const-string v1, "short_channel_page"

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->from(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->build()Lcom/miui/video/service/share/data/ShareInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->actionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v1, :cond_1

    const-string v2, "shareInfo"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/miui/video/service/action/ContentActionWrapper;->doVideoShareAction(Lcom/miui/video/service/share/data/ShareInfo;Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.feed.entity.TinyCardEntity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final initPopWindow()V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/service/R$layout;->ui_short_video_more_pop:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/miui/video/service/R$dimen;->dp_203:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v3, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->mBaseUIEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const-string v4, "playlist"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/miui/video/service/R$dimen;->dp_137_33:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :cond_1
    iget-object v3, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/service/R$dimen;->dp_73:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    new-instance v4, Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v1, v3, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v4, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_3

    new-instance v3, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$1;

    invoke-direct {v3, p0}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$1;-><init>(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;)V

    check-cast v3, Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_3
    iget-object v1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    :cond_4
    iget-object v1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/miui/video/service/R$dimen;->dp_10:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->xOffset:I

    sget v1, Lcom/miui/video/service/R$id;->v_report:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "layout.findViewById(R.id.v_report)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;

    invoke-direct {v3, p0}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;-><init>(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/miui/video/service/R$id;->v_favorite:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "layout.findViewById(R.id.v_favorite)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/LinearLayout;

    sget v3, Lcom/miui/video/service/R$id;->v_favorite_icon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "layout.findViewById(R.id.v_favorite_icon)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->actionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->mBaseUIEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-direct {p0, v5}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->convertToQueryFavorBody(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/common/data/QueryFavorBody;

    move-result-object v5

    new-instance v6, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$3;

    invoke-direct {v6, v3}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$3;-><init>(Landroid/widget/ImageView;)V

    check-cast v6, Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;

    invoke-virtual {v4, v5, v6}, Lcom/miui/video/service/action/ContentActionWrapper;->queryFavorState(Lcom/miui/video/base/common/data/QueryFavorBody;Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;)V

    :cond_5
    new-instance v4, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$4;

    invoke-direct {v4, p0, v3}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$4;-><init>(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;Landroid/widget/ImageView;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/miui/video/service/R$id;->v_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "layout.findViewById(R.id.v_share)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$5;

    invoke-direct {v1, p0}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$5;-><init>(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->mBaseUIEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v2

    :cond_6
    const-string v1, "playlist"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->context:Landroid/content/Context;

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 0
    .param p2    # Lcom/miui/video/framework/base/ui/BaseUIEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iput-object p2, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->mBaseUIEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    :cond_0
    return-void
.end method

.method public final show(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->initPopWindow()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->xOffset:I

    neg-int v1, v1

    const/4 v2, 0x0

    const v3, 0x800005

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    :cond_1
    const p1, 0x3e99999a    # 0.3f

    invoke-direct {p0, p1}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->bgAlpha(F)V

    return-void
.end method

.method public final showing()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
