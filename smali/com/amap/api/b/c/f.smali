.class public Lcom/amap/api/b/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/amap/api/b/c/f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/16 v1, 0x4e20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "zh-CN"

    iput-object v0, p0, Lcom/amap/api/b/c/f;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/b/c/f;->b:I

    iput v1, p0, Lcom/amap/api/b/c/f;->d:I

    iput v1, p0, Lcom/amap/api/b/c/f;->e:I

    return-void
.end method

.method public static c()Lcom/amap/api/b/c/f;
    .locals 1

    sget-object v0, Lcom/amap/api/b/c/f;->c:Lcom/amap/api/b/c/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/b/c/f;

    invoke-direct {v0}, Lcom/amap/api/b/c/f;-><init>()V

    sput-object v0, Lcom/amap/api/b/c/f;->c:Lcom/amap/api/b/c/f;

    :cond_0
    sget-object v0, Lcom/amap/api/b/c/f;->c:Lcom/amap/api/b/c/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/amap/api/b/c/f;->d:I

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zh-CN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/amap/api/b/c/f;->a:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/amap/api/b/c/f;->e:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/b/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/amap/api/b/c/f;->b:I

    return v0
.end method
