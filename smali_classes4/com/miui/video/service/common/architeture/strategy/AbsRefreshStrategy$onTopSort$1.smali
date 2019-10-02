.class final Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy$onTopSort$1;
.super Ljava/lang/Object;
.source "AbsRefreshStrategy.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;->onTopSort(Ljava/util/List;)V
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
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "o1",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "kotlin.jvm.PlatformType",
        "o2",
        "compare"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy$onTopSort$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy$onTopSort$1;

    invoke-direct {v0}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy$onTopSort$1;-><init>()V

    sput-object v0, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy$onTopSort$1;->INSTANCE:Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy$onTopSort$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/miui/video/framework/base/ui/BaseUIEntity;Lcom/miui/video/framework/base/ui/BaseUIEntity;)I
    .locals 1

    const-string v0, "o2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getTopped()I

    move-result p2

    const-string v0, "o1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getTopped()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    check-cast p2, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy$onTopSort$1;->compare(Lcom/miui/video/framework/base/ui/BaseUIEntity;Lcom/miui/video/framework/base/ui/BaseUIEntity;)I

    move-result p1

    return p1
.end method
