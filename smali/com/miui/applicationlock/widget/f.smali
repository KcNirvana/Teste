.class public final Lcom/miui/applicationlock/widget/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final adn:[[Lcom/miui/applicationlock/widget/f;


# instance fields
.field final adm:I

.field final row:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/applicationlock/widget/f;->aiQ()[[Lcom/miui/applicationlock/widget/f;

    move-result-object v0

    sput-object v0, Lcom/miui/applicationlock/widget/f;->adn:[[Lcom/miui/applicationlock/widget/f;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/miui/applicationlock/widget/f;->aiP(II)V

    iput p1, p0, Lcom/miui/applicationlock/widget/f;->row:I

    iput p2, p0, Lcom/miui/applicationlock/widget/f;->adm:I

    return-void
.end method

.method public static aiN(II)Lcom/miui/applicationlock/widget/f;
    .locals 1

    invoke-static {p0, p1}, Lcom/miui/applicationlock/widget/f;->aiP(II)V

    sget-object v0, Lcom/miui/applicationlock/widget/f;->adn:[[Lcom/miui/applicationlock/widget/f;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    return-object v0
.end method

.method private static aiP(II)V
    .locals 2

    const/4 v0, 0x2

    if-ltz p0, :cond_0

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "row must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p1, :cond_2

    if-le p1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "column must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method private static aiQ()[[Lcom/miui/applicationlock/widget/f;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x3

    const-class v0, Lcom/miui/applicationlock/widget/f;

    filled-new-array {v6, v6}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/miui/applicationlock/widget/f;

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_1

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_0

    aget-object v4, v0, v3

    new-instance v5, Lcom/miui/applicationlock/widget/f;

    invoke-direct {v5, v3, v1}, Lcom/miui/applicationlock/widget/f;-><init>(II)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public aiO()I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/widget/f;->adm:I

    return v0
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/widget/f;->row:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/applicationlock/widget/f;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/applicationlock/widget/f;->adm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
