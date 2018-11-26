.class Lcom/miui/hybrid/accessory/a/f/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/hybrid/accessory/a/f/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/hybrid/accessory/a/f/g;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_3

    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_6

    instance-of v0, p1, [B

    if-nez v0, :cond_7

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1, p2}, Lcom/miui/hybrid/accessory/a/f/f;->bDK(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0

    :cond_1
    if-nez p2, :cond_0

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/miui/hybrid/accessory/a/f/f;->bDH(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    return v0

    :cond_5
    check-cast p1, Ljava/util/Set;

    check-cast p2, Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/miui/hybrid/accessory/a/f/f;->bDF(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    return v0

    :cond_6
    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/miui/hybrid/accessory/a/f/f;->bDD(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    return v0

    :cond_7
    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Lcom/miui/hybrid/accessory/a/f/f;->bDE([B[B)I

    move-result v0

    return v0
.end method
