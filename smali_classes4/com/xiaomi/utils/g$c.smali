.class public Lcom/xiaomi/utils/g$c;
.super Ljava/lang/Object;
.source "NetWorkRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/utils/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:[B

.field private e:Lcom/xiaomi/utils/g$b;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/utils/g$c;->a:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/utils/g$c;->c:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/xiaomi/utils/g$c;->f:Z

    const/16 v0, 0x1388

    iput v0, p0, Lcom/xiaomi/utils/g$c;->h:I

    iget-object v0, p0, Lcom/xiaomi/utils/g$c;->c:Ljava/util/HashMap;

    const-string v1, "User-Agent"

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/utils/g$c;)Lcom/xiaomi/utils/g$b;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/utils/g$c;->e:Lcom/xiaomi/utils/g$b;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/utils/g$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/utils/g$c;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaomi/utils/g$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/utils/g$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/utils/g$c;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/utils/g$c;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/utils/g$c;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/utils/g$c;->a:I

    return p0
.end method

.method static synthetic e(Lcom/xiaomi/utils/g$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/utils/g$c;->f:Z

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/utils/g$c;->h:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/utils/g$c;->a:I

    return-void
.end method

.method public a(Lcom/xiaomi/utils/g$b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/utils/g$c;->e:Lcom/xiaomi/utils/g$b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/utils/g$c;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/utils/g$c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/utils/g$c;->d:[B

    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/utils/g$c;->d:[B

    return-object v0
.end method
