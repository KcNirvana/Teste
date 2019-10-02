.class public interface abstract Lcom/miui/video/common/feed/architeture/action/ViewObjectActionListener;
.super Ljava/lang/Object;
.source "ViewObjectActionListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J8\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\u0008H&\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/miui/video/common/feed/architeture/action/ViewObjectActionListener;",
        "",
        "onActionRaised",
        "",
        "context",
        "Landroid/content/Context;",
        "voClass",
        "Ljava/lang/Class;",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "actionId",
        "",
        "data",
        "viewObject",
        "common_feed_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# virtual methods
.method public abstract onActionRaised(Landroid/content/Context;Ljava/lang/Class;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
            ">;I",
            "Ljava/lang/Object;",
            "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
            ")V"
        }
    .end annotation
.end method
