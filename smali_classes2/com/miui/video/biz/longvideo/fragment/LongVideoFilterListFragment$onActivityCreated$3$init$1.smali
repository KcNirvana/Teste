.class final Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3$init$1;
.super Ljava/lang/Object;
.source "LongVideoFilterListFragment.kt"

# interfaces
.implements Lcom/miui/video/common/feed/architeture/action/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3;->init()V
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
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
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
        "context",
        "Landroid/content/Context;",
        "kotlin.jvm.PlatformType",
        "actionId",
        "",
        "data",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
        "viewObject",
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
.field final synthetic this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3$init$1;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Landroid/content/Context;ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3$init$1;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "viewObject"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3;->onNewsClick(Landroid/content/Context;ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method

.method public bridge synthetic call(Landroid/content/Context;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    check-cast p3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/video/biz/longvideo/fragment/LongVideoFilterListFragment$onActivityCreated$3$init$1;->call(Landroid/content/Context;ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method
