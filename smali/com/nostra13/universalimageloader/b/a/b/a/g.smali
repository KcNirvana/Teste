.class final Lcom/nostra13/universalimageloader/b/a/b/a/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bmP:Lcom/nostra13/universalimageloader/b/a/b/a/e;

.field private final bmQ:[J

.field private bmR:Z

.field private bmS:J

.field final synthetic bmT:Lcom/nostra13/universalimageloader/b/a/b/a/c;

.field private final key:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/b/a/b/a/c;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bmT:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJD(Lcom/nostra13/universalimageloader/b/a/b/a/c;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bmQ:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/b/a/b/a/c;Ljava/lang/String;Lcom/nostra13/universalimageloader/b/a/b/a/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/b/a/b/a/g;-><init>(Lcom/nostra13/universalimageloader/b/a/b/a/c;Ljava/lang/String;)V

    return-void
.end method

.method private bJU([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bJV([Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bmT:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-static {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJD(Lcom/nostra13/universalimageloader/b/a/b/a/c;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJU([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bmQ:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJU([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic bJW(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Lcom/nostra13/universalimageloader/b/a/b/a/e;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bmP:Lcom/nostra13/universalimageloader/b/a/b/a/e;

    return-object v0
.end method

.method static synthetic bJX(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bJY(Lcom/nostra13/universalimageloader/b/a/b/a/g;)[J
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bmQ:[J

    return-object v0
.end method

.method static synthetic bJZ(Lcom/nostra13/universalimageloader/b/a/b/a/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bmR:Z

    return v0
.end method

.method static synthetic bKa(Lcom/nostra13/universalimageloader/b/a/b/a/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bmS:J

    return-wide v0
.end method

.method static synthetic bKb(Lcom/nostra13/universalimageloader/b/a/b/a/g;Lcom/nostra13/universalimageloader/b/a/b/a/e;)Lcom/nostra13/universalimageloader/b/a/b/a/e;
    .locals 0

    iput-object p1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bmP:Lcom/nostra13/universalimageloader/b/a/b/a/e;

    return-object p1
.end method

.method static synthetic bKc(Lcom/nostra13/universalimageloader/b/a/b/a/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bmR:Z

    return p1
.end method

.method static synthetic bKd(Lcom/nostra13/universalimageloader/b/a/b/a/g;J)J
    .locals 1

    iput-wide p1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bmS:J

    return-wide p1
.end method

.method static synthetic bKe(Lcom/nostra13/universalimageloader/b/a/b/a/g;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bJV([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bJR(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bmT:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-static {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJB(Lcom/nostra13/universalimageloader/b/a/b/a/c;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public bJS(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bmT:Lcom/nostra13/universalimageloader/b/a/b/a/c;

    invoke-static {v1}, Lcom/nostra13/universalimageloader/b/a/b/a/c;->bJB(Lcom/nostra13/universalimageloader/b/a/b/a/c;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public bJT()Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/g;->bmQ:[J

    const/4 v0, 0x0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, v2, v0

    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
