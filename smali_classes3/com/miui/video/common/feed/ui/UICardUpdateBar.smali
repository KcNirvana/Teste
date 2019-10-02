.class public final Lcom/miui/video/common/feed/ui/UICardUpdateBar;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardUpdateBar.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001a\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/miui/video/common/feed/ui/UICardUpdateBar;",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "style",
        "",
        "(Landroid/content/Context;Landroid/view/ViewGroup;I)V",
        "eClick",
        "Landroid/view/View$OnClickListener;",
        "setData",
        "",
        "position",
        "baseUIEntity",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "common_feed_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final eClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_card_updatebar:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    sget-object p1, Lcom/miui/video/common/feed/ui/UICardUpdateBar$eClick$1;->INSTANCE:Lcom/miui/video/common/feed/ui/UICardUpdateBar$eClick$1;

    check-cast p1, Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UICardUpdateBar;->eClick:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 0
    .param p2    # Lcom/miui/video/framework/base/ui/BaseUIEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UICardUpdateBar;->vView:Landroid/view/View;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UICardUpdateBar;->eClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
