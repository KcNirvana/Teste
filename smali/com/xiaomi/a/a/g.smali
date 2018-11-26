.class public Lcom/xiaomi/a/a/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static bpI:[Lcom/xiaomi/a/a/h;


# instance fields
.field private bpC:[I

.field public bpD:[Lcom/xiaomi/a/a/j;

.field private bpE:Lcom/xiaomi/a/i;

.field private bpF:I

.field private bpG:Z

.field private bpH:I

.field private bpJ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/a/a/g;->bpI:[Lcom/xiaomi/a/a/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/a/a/g;->bpE:Lcom/xiaomi/a/i;

    iput-boolean v0, p0, Lcom/xiaomi/a/a/g;->bpG:Z

    sget-object v1, Lcom/xiaomi/a/a/g;->bpI:[Lcom/xiaomi/a/a/h;

    if-eqz v1, :cond_0

    :goto_0
    new-array v1, v4, [Lcom/xiaomi/a/a/j;

    new-instance v2, Lcom/xiaomi/a/a/c;

    invoke-direct {v2}, Lcom/xiaomi/a/a/c;-><init>()V

    aput-object v2, v1, v0

    new-instance v2, Lcom/xiaomi/a/a/d;

    invoke-direct {v2}, Lcom/xiaomi/a/a/d;-><init>()V

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/xiaomi/a/a/g;->bpD:[Lcom/xiaomi/a/a/j;

    iput v0, p0, Lcom/xiaomi/a/a/g;->bpF:I

    sget-object v1, Lcom/xiaomi/a/a/g;->bpI:[Lcom/xiaomi/a/a/h;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/xiaomi/a/a/g;->bpC:[I

    :goto_1
    sget-object v1, Lcom/xiaomi/a/a/g;->bpI:[Lcom/xiaomi/a/a/h;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/xiaomi/a/a/g;->bpI:[Lcom/xiaomi/a/a/h;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/xiaomi/a/a/h;->bNi()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/a/a/g;->bpC:[I

    iget v3, p0, Lcom/xiaomi/a/a/g;->bpF:I

    aput v3, v2, v0

    iget v2, p0, Lcom/xiaomi/a/a/g;->bpF:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/xiaomi/a/a/g;->bpF:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/xiaomi/a/a/h;

    new-instance v2, Lcom/xiaomi/a/a/e;

    invoke-direct {v2}, Lcom/xiaomi/a/a/e;-><init>()V

    aput-object v2, v1, v0

    new-instance v2, Lcom/xiaomi/a/a/b;

    invoke-direct {v2}, Lcom/xiaomi/a/a/b;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lcom/xiaomi/a/a/i;

    invoke-direct {v2}, Lcom/xiaomi/a/a/i;-><init>()V

    aput-object v2, v1, v4

    sput-object v1, Lcom/xiaomi/a/a/g;->bpI:[Lcom/xiaomi/a/a/h;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private bNx(Lcom/xiaomi/a/j;)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/a/j;->bOR()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/a/a/g;->bpE:Lcom/xiaomi/a/i;

    invoke-virtual {v4, v0}, Lcom/xiaomi/a/i;->bOL(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    invoke-static {v6}, Lcom/xiaomi/a/g;->bOE(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/xiaomi/a/a/g;->bpE:Lcom/xiaomi/a/i;

    invoke-virtual {v7, v6}, Lcom/xiaomi/a/i;->bOM(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Lcom/xiaomi/a/j;->bPc(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public bNr()[Lcom/xiaomi/a/a/j;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/g;->bpD:[Lcom/xiaomi/a/a/j;

    return-object v0
.end method

.method public bNs(Lcom/xiaomi/a/j;)V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/a/j;->bPb()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/xiaomi/a/a/g;->bpF:I

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/xiaomi/a/a/g;->bpI:[Lcom/xiaomi/a/a/h;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/xiaomi/a/a/g;->bpI:[Lcom/xiaomi/a/a/h;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/xiaomi/a/a/h;->reset()V

    sget-object v3, Lcom/xiaomi/a/a/g;->bpI:[Lcom/xiaomi/a/a/h;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lcom/xiaomi/a/a/h;->bNy(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/a/a/g;->bpI:[Lcom/xiaomi/a/a/h;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/xiaomi/a/a/g;->bpC:[I

    aget v4, v4, v0

    invoke-virtual {v3, p1, v2, v4}, Lcom/xiaomi/a/a/h;->bNz(Lcom/xiaomi/a/j;[II)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/xiaomi/a/j;->bOO(Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lcom/xiaomi/a/j;->bOV([I)V

    return-void
.end method

.method public bNt(Lcom/xiaomi/a/j;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/a/j;->bOX()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/a/a/g;->bNu()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p1}, Lcom/xiaomi/a/j;->bOW()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/a/a/g;->bNu()I

    move-result v0

    new-array v3, v0, [I

    move v0, v1

    :goto_1
    iget v4, p0, Lcom/xiaomi/a/a/g;->bpF:I

    if-ge v0, v4, :cond_2

    aget v4, v2, v0

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/a/a/g;->bNx(Lcom/xiaomi/a/j;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/a/j;->bOX()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/a/j;->bOZ(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/a/a/g;->bpD:[Lcom/xiaomi/a/a/j;

    aget-object v0, v0, v1

    iget v2, p0, Lcom/xiaomi/a/a/g;->bpF:I

    iget-object v4, p0, Lcom/xiaomi/a/a/g;->bpJ:[I

    aget v4, v4, v1

    add-int/2addr v2, v4

    invoke-virtual {v0, p1, v3, v2}, Lcom/xiaomi/a/a/j;->bNN(Lcom/xiaomi/a/j;[II)Z

    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/a/a/g;->bpD:[Lcom/xiaomi/a/a/j;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    invoke-virtual {p1, v3}, Lcom/xiaomi/a/j;->bOV([I)V

    return-void
.end method

.method public bNu()I
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/a/a/g;->bpG:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "RuleManager"

    const-string/jumbo v1, "getRuleCount failed for having not be initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget v0, p0, Lcom/xiaomi/a/a/g;->bpH:I

    iget v1, p0, Lcom/xiaomi/a/a/g;->bpF:I

    add-int/2addr v0, v1

    return v0
.end method

.method public bNv()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/a/a/g;->bpH:I

    iget-object v1, p0, Lcom/xiaomi/a/a/g;->bpD:[Lcom/xiaomi/a/a/j;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/xiaomi/a/a/g;->bpJ:[I

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/a/a/g;->bpD:[Lcom/xiaomi/a/a/j;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/a/a/g;->bpD:[Lcom/xiaomi/a/a/j;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/xiaomi/a/a/j;->bNi()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/a/a/g;->bpJ:[I

    iget v3, p0, Lcom/xiaomi/a/a/g;->bpH:I

    aput v3, v2, v0

    iget v2, p0, Lcom/xiaomi/a/a/g;->bpH:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/xiaomi/a/a/g;->bpH:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/a/a/g;->bpG:Z

    return-void
.end method

.method public bNw(Lcom/xiaomi/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/g;->bpE:Lcom/xiaomi/a/i;

    return-void
.end method
