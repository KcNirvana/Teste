.class public Lcom/xiaomi/utils/m;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/xiaomi/utils/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/xiaomi/utils/m;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/utils/m;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/xiaomi/utils/m;-><init>(IIII)V

    sput-object v0, Lcom/xiaomi/utils/m;->a:Lcom/xiaomi/utils/m;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/utils/m;->b:I

    iput v0, p0, Lcom/xiaomi/utils/m;->c:I

    iput v0, p0, Lcom/xiaomi/utils/m;->d:I

    iput v0, p0, Lcom/xiaomi/utils/m;->e:I

    iput p1, p0, Lcom/xiaomi/utils/m;->b:I

    iput p2, p0, Lcom/xiaomi/utils/m;->c:I

    iput p3, p0, Lcom/xiaomi/utils/m;->d:I

    iput p4, p0, Lcom/xiaomi/utils/m;->e:I

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/utils/m;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget v0, p0, Lcom/xiaomi/utils/m;->b:I

    iget v1, p1, Lcom/xiaomi/utils/m;->b:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/xiaomi/utils/m;->b:I

    iget p1, p1, Lcom/xiaomi/utils/m;->b:I

    sub-int/2addr v0, p1

    return v0

    :cond_1
    iget v0, p0, Lcom/xiaomi/utils/m;->c:I

    iget v1, p1, Lcom/xiaomi/utils/m;->c:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/xiaomi/utils/m;->c:I

    iget p1, p1, Lcom/xiaomi/utils/m;->c:I

    sub-int/2addr v0, p1

    return v0

    :cond_2
    iget v0, p0, Lcom/xiaomi/utils/m;->d:I

    iget p1, p1, Lcom/xiaomi/utils/m;->d:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/xiaomi/utils/m;

    invoke-virtual {p0, p1}, Lcom/xiaomi/utils/m;->a(Lcom/xiaomi/utils/m;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/xiaomi/utils/m;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/xiaomi/utils/m;

    iget v1, p0, Lcom/xiaomi/utils/m;->b:I

    iget v2, p1, Lcom/xiaomi/utils/m;->b:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/xiaomi/utils/m;->c:I

    iget v2, p1, Lcom/xiaomi/utils/m;->c:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/xiaomi/utils/m;->d:I

    iget p1, p1, Lcom/xiaomi/utils/m;->d:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaomi/utils/m;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/utils/m;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/utils/m;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/utils/m;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
