.class final Lcom/google/ads/interactivemedia/v3/internal/cn;
.super Lcom/google/ads/interactivemedia/v3/internal/co;
.source "IMASDK"


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/co;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cn;->i(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cn;->f(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cn;->g(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cn;->e(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cn;->c(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cn;->d(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cn;->h(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/internal/fp;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p0

    return p0
.end method

.method private static c(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/lang/Double;
    .locals 2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    new-instance v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method private static f(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/fp;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cn;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/cn;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static g(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/fp;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cn;->e(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cn;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/cn;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static h(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/fp;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cn;->e(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cn;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;)I

    move-result v4

    invoke-static {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/cn;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static i(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cn;->d(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/ads/interactivemedia/v3/internal/fp;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/cn;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;)I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_3

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/cn;->e(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "onMetaData"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/cn;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;)I

    move-result p2

    const/16 p3, 0x8

    if-ne p2, p3, :cond_2

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/cn;->h(Lcom/google/ads/interactivemedia/v3/internal/fp;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "duration"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "duration"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double p3, p1, v0

    if-lez p3, :cond_1

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double p1, p1, v0

    double-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cn;->a(J)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bl;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bl;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>()V

    throw p1
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
