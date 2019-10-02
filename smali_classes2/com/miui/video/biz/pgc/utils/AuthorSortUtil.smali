.class public Lcom/miui/video/biz/pgc/utils/AuthorSortUtil;
.super Ljava/lang/Object;
.source "AuthorSortUtil.java"


# static fields
.field public static final ORDER_A_Z:I = 0x2

.field public static final ORDER_ORIGINAL:I = -0x1

.field public static final ORDER_SUBSCRIBE:I = 0x1

.field public static final ORDER_UPDATE:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrderTypeDesc(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "authors_order_letter"

    return-object p0

    :pswitch_1
    const-string p0, "authors_order_subscribed"

    return-object p0

    :pswitch_2
    const-string p0, "authors_order_published"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$sortFeedRowEntity$17(ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/entity/FeedRowEntity;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    invoke-virtual {p2, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/miui/video/biz/pgc/utils/AuthorSortUtil;->sort(Lcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/common/feed/entity/TinyCardEntity;I)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$sortTinyCardEntity$18(ILcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/common/feed/entity/TinyCardEntity;)I
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/miui/video/biz/pgc/utils/AuthorSortUtil;->sort(Lcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/common/feed/entity/TinyCardEntity;I)I

    move-result p0

    return p0
.end method

.method private static sort(Lcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/common/feed/entity/TinyCardEntity;I)I
    .locals 2

    packed-switch p2, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getGmtSubscribe()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getGmtSubscribe()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-int p0, p1

    return p0

    :pswitch_2
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getGmtPublish()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getGmtPublish()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-int p0, p1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sortFeedRowEntity(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/biz/pgc/utils/-$$Lambda$AuthorSortUtil$aKh4XNeapnxHW1m1loQ9x6MS1jM;

    invoke-direct {v0, p1}, Lcom/miui/video/biz/pgc/utils/-$$Lambda$AuthorSortUtil$aKh4XNeapnxHW1m1loQ9x6MS1jM;-><init>(I)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static sortTinyCardEntity(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/biz/pgc/utils/-$$Lambda$AuthorSortUtil$vf9FQiXhJu9zt-_4FTrFki4DY7Y;

    invoke-direct {v0, p1}, Lcom/miui/video/biz/pgc/utils/-$$Lambda$AuthorSortUtil$vf9FQiXhJu9zt-_4FTrFki4DY7Y;-><init>(I)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
