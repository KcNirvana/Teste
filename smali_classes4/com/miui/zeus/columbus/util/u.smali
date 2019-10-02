.class public Lcom/miui/zeus/columbus/util/u;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/zeus/columbus/util/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/zeus/columbus/util/u;

.field private static final b:I = -0x1


# instance fields
.field private c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/zeus/columbus/util/u;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1}, Lcom/miui/zeus/columbus/util/u;-><init>(III)V

    sput-object v0, Lcom/miui/zeus/columbus/util/u;->a:Lcom/miui/zeus/columbus/util/u;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/zeus/columbus/util/u;->c:I

    iput v0, p0, Lcom/miui/zeus/columbus/util/u;->d:I

    iput v0, p0, Lcom/miui/zeus/columbus/util/u;->e:I

    iput p1, p0, Lcom/miui/zeus/columbus/util/u;->c:I

    iput p2, p0, Lcom/miui/zeus/columbus/util/u;->d:I

    iput p3, p0, Lcom/miui/zeus/columbus/util/u;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/zeus/columbus/util/u;->c:I

    iput v0, p0, Lcom/miui/zeus/columbus/util/u;->d:I

    iput v0, p0, Lcom/miui/zeus/columbus/util/u;->e:I

    :try_start_0
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/zeus/columbus/util/u;->c:I

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/zeus/columbus/util/u;->d:I

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/zeus/columbus/util/u;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/util/u;->c:I

    return v0
.end method

.method public a(Lcom/miui/zeus/columbus/util/u;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget v0, p0, Lcom/miui/zeus/columbus/util/u;->c:I

    iget v1, p1, Lcom/miui/zeus/columbus/util/u;->c:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/miui/zeus/columbus/util/u;->c:I

    iget p1, p1, Lcom/miui/zeus/columbus/util/u;->c:I

    sub-int/2addr v0, p1

    return v0

    :cond_1
    iget v0, p0, Lcom/miui/zeus/columbus/util/u;->d:I

    iget v1, p1, Lcom/miui/zeus/columbus/util/u;->d:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/miui/zeus/columbus/util/u;->d:I

    iget p1, p1, Lcom/miui/zeus/columbus/util/u;->d:I

    sub-int/2addr v0, p1

    return v0

    :cond_2
    iget v0, p0, Lcom/miui/zeus/columbus/util/u;->e:I

    iget p1, p1, Lcom/miui/zeus/columbus/util/u;->e:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/util/u;->d:I

    return v0
.end method

.method public b(Lcom/miui/zeus/columbus/util/u;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/zeus/columbus/util/u;->a(Lcom/miui/zeus/columbus/util/u;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/util/u;->e:I

    return v0
.end method

.method public c(Lcom/miui/zeus/columbus/util/u;)Z
    .locals 4

    iget v0, p0, Lcom/miui/zeus/columbus/util/u;->c:I

    iget v1, p1, Lcom/miui/zeus/columbus/util/u;->c:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/miui/zeus/columbus/util/u;->d:I

    iget v1, p1, Lcom/miui/zeus/columbus/util/u;->d:I

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    iget v0, p0, Lcom/miui/zeus/columbus/util/u;->d:I

    iget v1, p1, Lcom/miui/zeus/columbus/util/u;->d:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/miui/zeus/columbus/util/u;->e:I

    iget p1, p1, Lcom/miui/zeus/columbus/util/u;->e:I

    if-lt v0, p1, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/zeus/columbus/util/u;

    invoke-virtual {p0, p1}, Lcom/miui/zeus/columbus/util/u;->a(Lcom/miui/zeus/columbus/util/u;)I

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/miui/zeus/columbus/util/u;->c:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/miui/zeus/columbus/util/u;->d:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/miui/zeus/columbus/util/u;->e:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Lcom/miui/zeus/columbus/util/u;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/miui/zeus/columbus/util/u;->c:I

    iget v2, p1, Lcom/miui/zeus/columbus/util/u;->c:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/miui/zeus/columbus/util/u;->d:I

    iget p1, p1, Lcom/miui/zeus/columbus/util/u;->d:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/miui/zeus/columbus/util/u;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/miui/zeus/columbus/util/u;

    iget v1, p0, Lcom/miui/zeus/columbus/util/u;->c:I

    iget v2, p1, Lcom/miui/zeus/columbus/util/u;->c:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/miui/zeus/columbus/util/u;->d:I

    iget v2, p1, Lcom/miui/zeus/columbus/util/u;->d:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/miui/zeus/columbus/util/u;->e:I

    iget p1, p1, Lcom/miui/zeus/columbus/util/u;->e:I

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

    iget v1, p0, Lcom/miui/zeus/columbus/util/u;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/zeus/columbus/util/u;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/zeus/columbus/util/u;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
