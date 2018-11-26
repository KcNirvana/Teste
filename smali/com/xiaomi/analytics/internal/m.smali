.class public Lcom/xiaomi/analytics/internal/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public bok:I

.field public bol:I

.field public bom:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/xiaomi/analytics/internal/m;->bol:I

    iput v0, p0, Lcom/xiaomi/analytics/internal/m;->bom:I

    iput v0, p0, Lcom/xiaomi/analytics/internal/m;->bok:I

    :try_start_0
    const-string/jumbo v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/analytics/internal/m;->bol:I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/analytics/internal/m;->bom:I

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/analytics/internal/m;->bok:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public bLS(Lcom/xiaomi/analytics/internal/m;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/xiaomi/analytics/internal/m;->bol:I

    iget v1, p1, Lcom/xiaomi/analytics/internal/m;->bol:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/xiaomi/analytics/internal/m;->bol:I

    iget v1, p1, Lcom/xiaomi/analytics/internal/m;->bol:I

    sub-int/2addr v0, v1

    return v0

    :cond_1
    iget v0, p0, Lcom/xiaomi/analytics/internal/m;->bom:I

    iget v1, p1, Lcom/xiaomi/analytics/internal/m;->bom:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/xiaomi/analytics/internal/m;->bom:I

    iget v1, p1, Lcom/xiaomi/analytics/internal/m;->bom:I

    sub-int/2addr v0, v1

    return v0

    :cond_2
    iget v0, p0, Lcom/xiaomi/analytics/internal/m;->bok:I

    iget v1, p1, Lcom/xiaomi/analytics/internal/m;->bok:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/analytics/internal/m;

    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/internal/m;->bLS(Lcom/xiaomi/analytics/internal/m;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaomi/analytics/internal/m;->bol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/analytics/internal/m;->bom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/analytics/internal/m;->bok:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
