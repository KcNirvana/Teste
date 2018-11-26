.class final Lcom/miui/optimizemanage/b/f;
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
.method public final Au(Lcom/miui/optimizemanage/b/b;Lcom/miui/optimizemanage/b/b;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p1, Lcom/miui/optimizemanage/b/b;->zd:I

    iget v3, p1, Lcom/miui/optimizemanage/b/b;->zb:I

    add-int/2addr v2, v3

    iget v3, p2, Lcom/miui/optimizemanage/b/b;->zd:I

    iget v4, p2, Lcom/miui/optimizemanage/b/b;->zb:I

    add-int/2addr v3, v4

    if-eq v2, v3, :cond_1

    if-le v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v2, p1, Lcom/miui/optimizemanage/b/b;->yP:Z

    iget-boolean v3, p2, Lcom/miui/optimizemanage/b/b;->yP:Z

    if-eq v2, v3, :cond_3

    iget-boolean v2, p1, Lcom/miui/optimizemanage/b/b;->yP:Z

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-boolean v2, p1, Lcom/miui/optimizemanage/b/b;->ze:Z

    iget-boolean v3, p2, Lcom/miui/optimizemanage/b/b;->ze:Z

    if-eq v2, v3, :cond_5

    iget-boolean v2, p1, Lcom/miui/optimizemanage/b/b;->yP:Z

    if-eqz v2, :cond_4

    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/optimizemanage/b/b;

    check-cast p2, Lcom/miui/optimizemanage/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/optimizemanage/b/f;->Au(Lcom/miui/optimizemanage/b/b;Lcom/miui/optimizemanage/b/b;)I

    move-result v0

    return v0
.end method
