.class public Lcom/xiaomi/c/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/xiaomi/c/a/b$a;->a:I

    iput v0, p0, Lcom/xiaomi/c/a/b$a;->b:I

    iput v0, p0, Lcom/xiaomi/c/a/b$a;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/c/a/b$a;->d:Ljava/lang/String;

    iput-wide v2, p0, Lcom/xiaomi/c/a/b$a;->e:J

    iput-wide v2, p0, Lcom/xiaomi/c/a/b$a;->f:J

    iput-wide v2, p0, Lcom/xiaomi/c/a/b$a;->g:J

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/c/a/b$a;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/c/a/b$a;->a:I

    return v0
.end method

.method static synthetic b(Lcom/xiaomi/c/a/b$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/c/a/b$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/c/a/b$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/c/a/b$a;->e:J

    return-wide v0
.end method

.method static synthetic d(Lcom/xiaomi/c/a/b$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/c/a/b$a;->f:J

    return-wide v0
.end method

.method static synthetic e(Lcom/xiaomi/c/a/b$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/c/a/b$a;->g:J

    return-wide v0
.end method

.method static synthetic f(Lcom/xiaomi/c/a/b$a;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/c/a/b$a;->b:I

    return v0
.end method

.method static synthetic g(Lcom/xiaomi/c/a/b$a;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/c/a/b$a;->c:I

    return v0
.end method


# virtual methods
.method public a(J)Lcom/xiaomi/c/a/b$a;
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/c/a/b$a;->f:J

    return-object p0
.end method

.method public a(Z)Lcom/xiaomi/c/a/b$a;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/xiaomi/c/a/b$a;->b:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Lcom/xiaomi/c/a/b;
    .locals 2

    new-instance v0, Lcom/xiaomi/c/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/xiaomi/c/a/b;-><init>(Landroid/content/Context;Lcom/xiaomi/c/a/b$a;Lcom/xiaomi/c/a/c;)V

    return-object v0
.end method

.method public b(J)Lcom/xiaomi/c/a/b$a;
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/c/a/b$a;->g:J

    return-object p0
.end method

.method public b(Z)Lcom/xiaomi/c/a/b$a;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/xiaomi/c/a/b$a;->c:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
