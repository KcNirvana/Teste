.class public final synthetic Lcom/miui/video/biz/pgc/utils/-$$Lambda$AuthorSortUtil$aKh4XNeapnxHW1m1loQ9x6MS1jM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/video/biz/pgc/utils/-$$Lambda$AuthorSortUtil$aKh4XNeapnxHW1m1loQ9x6MS1jM;->f$0:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/pgc/utils/-$$Lambda$AuthorSortUtil$aKh4XNeapnxHW1m1loQ9x6MS1jM;->f$0:I

    check-cast p1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-static {v0, p1, p2}, Lcom/miui/video/biz/pgc/utils/AuthorSortUtil;->lambda$sortFeedRowEntity$17(ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/entity/FeedRowEntity;)I

    move-result p1

    return p1
.end method
