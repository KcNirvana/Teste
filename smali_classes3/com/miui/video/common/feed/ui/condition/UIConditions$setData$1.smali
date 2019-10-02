.class public final Lcom/miui/video/common/feed/ui/condition/UIConditions$setData$1;
.super Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;
.source "UIConditions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/feed/ui/condition/UIConditions;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/miui/video/common/feed/ui/condition/UIConditions$setData$1",
        "Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;",
        "onTransition",
        "",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "selectPercent",
        "",
        "common_feed_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransition(Landroid/view/View;IF)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->onTransition(Landroid/view/View;IF)V

    return-void
.end method
