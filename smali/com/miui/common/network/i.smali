.class final Lcom/miui/common/network/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aMm(Lcom/miui/common/g/a;Lcom/miui/common/g/a;)I
    .locals 2

    invoke-virtual {p1}, Lcom/miui/common/g/a;->aMy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/common/g/a;->aMy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/common/g/a;

    check-cast p2, Lcom/miui/common/g/a;

    invoke-virtual {p0, p1, p2}, Lcom/miui/common/network/i;->aMm(Lcom/miui/common/g/a;Lcom/miui/common/g/a;)I

    move-result v0

    return v0
.end method
