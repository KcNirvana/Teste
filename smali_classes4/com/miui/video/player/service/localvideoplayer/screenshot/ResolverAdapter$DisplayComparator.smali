.class public Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayComparator;
.super Ljava/lang/Object;
.source "ResolverAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayComparator;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;)I
    .locals 0

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->access$300(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;)I

    move-result p1

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->access$300(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;

    check-cast p2, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayComparator;->compare(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;)I

    move-result p1

    return p1
.end method
