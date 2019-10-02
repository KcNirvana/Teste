.class final Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$registerPresentAction$3;
.super Ljava/lang/Object;
.source "ShortChannelFragment.kt"

# interfaces
.implements Lcom/miui/video/common/feed/architeture/action/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;->registerPresentAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/video/common/feed/architeture/action/ActionListener<",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n \u0004*\u0004\u0018\u00010\u00080\u00082\u000e\u0010\t\u001a\n \u0004*\u0004\u0018\u00010\n0\nH\n\u00a2\u0006\u0002\u0008\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/Context;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "data",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        "<anonymous parameter 3>",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "call"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$registerPresentAction$3;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Landroid/content/Context;ILcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    instance-of p1, p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object p1

    const-string p2, "shortvideo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object p1

    const-string p2, "longvideo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/shortvideo/router/ServiceHolder;->getLocalServerService()Lcom/miui/video/base/routers/localserver/LocalServerService;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$registerPresentAction$3;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;

    invoke-static {p2, p3}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;->access$createPreDownloadEntity(Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;Lcom/miui/video/common/feed/entity/TinyCardEntity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/video/base/routers/localserver/LocalServerService;->preDownloadForItemId(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Landroid/content/Context;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    check-cast p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$registerPresentAction$3;->call(Landroid/content/Context;ILcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method
