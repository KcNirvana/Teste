.class public Lcom/miui/powercenter/bootshutdown/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aGz:[I


# instance fields
.field private aGA:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/powercenter/bootshutdown/b;->aGz:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    return-void
.end method

.method private isSet(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    shl-int v3, v0, p1

    and-int/2addr v2, v3

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public aSD(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const v0, 0x7f070457

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_2

    const v0, 0x7f070455

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget v0, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_4

    const v0, 0x7f070456

    invoke-static {p1}, Lcom/miui/powercenter/a/j;->bcb(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f07045d

    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget v0, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    move v1, v0

    move v0, v2

    :goto_1
    if-lez v1, :cond_6

    and-int/lit8 v4, v1, 0x1

    if-ne v4, v6, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    shr-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    if-le v0, v6, :cond_8

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    :goto_2
    const/4 v4, 0x7

    if-ge v2, v4, :cond_9

    iget v4, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    sget-object v4, Lcom/miui/powercenter/bootshutdown/b;->aGz:[I

    aget v4, v4, v2

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_7

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aSE()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    return v0
.end method

.method public aSF([I)V
    .locals 7

    const/4 v6, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_3

    add-int/lit8 v0, v3, 0x1

    :goto_1
    if-ge v0, v6, :cond_4

    iget v4, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    shl-int v5, v2, v0

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    sub-int/2addr v0, v3

    aput v0, p1, v3

    move v0, v2

    :goto_2
    if-nez v0, :cond_0

    move v0, v1

    :goto_3
    if-ge v0, v6, :cond_0

    iget v4, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    shl-int v5, v2, v0

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    rsub-int/lit8 v4, v3, 0x7

    add-int/2addr v0, v4

    aput v0, p1, v3

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public aSG()[Z
    .locals 4

    const/4 v3, 0x7

    new-array v1, v3, [Z

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/bootshutdown/b;->isSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public aSH()Z
    .locals 7

    const/4 v6, 0x7

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_2

    iget v3, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    shl-int v4, v5, v0

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v5, :cond_1

    return v5

    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v4, v0, 0x2

    if-ne v3, v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public aSI(Lcom/miui/powercenter/bootshutdown/b;)V
    .locals 1

    iget v0, p1, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    iput v0, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    return-void
.end method

.method public aSJ(IZ)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    shl-int/2addr v1, p1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    goto :goto_0
.end method

.method public aSK(Z)V
    .locals 2

    const/4 v1, 0x7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/miui/powercenter/bootshutdown/b;->aGA:I

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/powercenter/bootshutdown/b;->aSJ(IZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/miui/powercenter/bootshutdown/b;->aSJ(IZ)V

    goto :goto_0
.end method
