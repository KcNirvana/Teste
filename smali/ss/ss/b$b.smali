.class final Lss/ss/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field private final c:[Ljava/io/File;

.field private final d:[Ljava/io/File;

.field private e:Z

.field private f:Lss/ss/b$a;

.field private g:J


# direct methods
.method static synthetic a(Lss/ss/b$b;J)J
    .locals 1

    iput-wide p1, p0, Lss/ss/b$b;->g:J

    return-wide p1
.end method

.method static synthetic a(Lss/ss/b$b;)Lss/ss/b$a;
    .locals 1

    iget-object v0, p0, Lss/ss/b$b;->f:Lss/ss/b$a;

    return-object v0
.end method

.method static synthetic a(Lss/ss/b$b;Lss/ss/b$a;)Lss/ss/b$a;
    .locals 0

    iput-object p1, p0, Lss/ss/b$b;->f:Lss/ss/b$a;

    return-object p1
.end method

.method static synthetic a(Lss/ss/b$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lss/ss/b$b;->e:Z

    return p1
.end method

.method static synthetic b(Lss/ss/b$b;)[J
    .locals 1

    iget-object v0, p0, Lss/ss/b$b;->b:[J

    return-object v0
.end method

.method static synthetic c(Lss/ss/b$b;)[Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lss/ss/b$b;->c:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic d(Lss/ss/b$b;)[Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lss/ss/b$b;->d:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic e(Lss/ss/b$b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lss/ss/b$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lss/ss/b$b;)Z
    .locals 1

    iget-boolean v0, p0, Lss/ss/b$b;->e:Z

    return v0
.end method


# virtual methods
.method a(LgK/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lss/ss/b$b;->b:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, v1, v0

    const/16 v3, 0x20

    invoke-interface {p1, v3}, LgK/d;->h(I)LgK/d;

    move-result-object v3

    invoke-interface {v3, v4, v5}, LgK/d;->k(J)LgK/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
