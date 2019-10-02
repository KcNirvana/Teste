.class final Lcom/xiaomi/push/service/g$c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/g$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private a:[Lcom/xiaomi/push/service/g$d;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lcom/xiaomi/push/service/g$c$a;->a:I

    iget v0, p0, Lcom/xiaomi/push/service/g$c$a;->a:I

    new-array v0, v0, [Lcom/xiaomi/push/service/g$d;

    iput-object v0, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    iput v0, p0, Lcom/xiaomi/push/service/g$c$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/push/service/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/service/g$c$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/g$c$a;Lcom/xiaomi/push/service/g$d;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/g$c$a;->a(Lcom/xiaomi/push/service/g$d;)I

    move-result p0

    return p0
.end method

.method private a(Lcom/xiaomi/push/service/g$d;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private c()V
    .locals 7

    iget v0, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x2

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lcom/xiaomi/push/service/g$d;->a:J

    iget-object v4, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v4, v4, v1

    iget-wide v4, v4, Lcom/xiaomi/push/service/g$d;->a:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    iget-object v4, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aput-object v2, v0, v1

    add-int/lit8 v0, v1, -0x1

    div-int/lit8 v0, v0, 0x2

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 7

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    if-lez v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v2, v2, v1

    iget-wide v2, v2, Lcom/xiaomi/push/service/g$d;->a:J

    iget-object v4, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v4, v4, v0

    iget-wide v4, v4, Lcom/xiaomi/push/service/g$d;->a:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v1, v1, p1

    iget-wide v1, v1, Lcom/xiaomi/push/service/g$d;->a:J

    iget-object v3, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v3, v3, v0

    iget-wide v3, v3, Lcom/xiaomi/push/service/g$d;->a:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    iget-object v3, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v3, v3, v0

    aput-object v3, v2, p1

    iget-object p1, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aput-object v1, p1, v0

    mul-int/lit8 p1, v0, 0x2

    add-int/lit8 p1, p1, 0x1

    move v6, v0

    move v0, p1

    move p1, v6

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/push/service/g$d;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a()V
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/service/g$c$a;->a:I

    new-array v0, v0, [Lcom/xiaomi/push/service/g$d;

    iput-object v0, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    return-void
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/xiaomi/push/service/g$d;->a:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/xiaomi/push/service/g$d;->a()Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/g$c$a;->b()V

    return-void
.end method

.method public a(ILcom/xiaomi/push/service/g$b;)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/xiaomi/push/service/g$d;->a:Lcom/xiaomi/push/service/g$b;

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/xiaomi/push/service/g$d;->a()Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/g$c$a;->b()V

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/g$d;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    array-length v0, v0

    iget v1, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/push/service/g$d;

    iget-object v1, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    iget v2, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    iget v1, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    aput-object p1, v0, v1

    invoke-direct {p0}, Lcom/xiaomi/push/service/g$c$a;->c()V

    return-void
.end method

.method public a()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/xiaomi/push/service/g$d;->a:I

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/xiaomi/push/service/g$d;->a:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/xiaomi/push/service/g$c$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/push/service/g$c$a;->c:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/g$c$a;->b(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    iget-object v1, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    iget v2, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/xiaomi/push/service/g$c$a;->a:[Lcom/xiaomi/push/service/g$d;

    iget v1, p0, Lcom/xiaomi/push/service/g$c$a;->b:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/g$c$a;->c(I)V

    :cond_0
    return-void
.end method
