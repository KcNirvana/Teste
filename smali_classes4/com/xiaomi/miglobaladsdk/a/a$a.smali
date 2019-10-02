.class public final Lcom/xiaomi/miglobaladsdk/a/a$a;
.super Ljava/lang/Object;
.source "ConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Integer;

.field private g:I

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Z

.field private m:Lcom/xiaomi/miglobaladsdk/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/a/a$a;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->a:I

    return p0
.end method

.method static synthetic b(Lcom/xiaomi/miglobaladsdk/a/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/miglobaladsdk/a/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/miglobaladsdk/a/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/miglobaladsdk/a/a$a;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/miglobaladsdk/a/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaomi/miglobaladsdk/a/a$a;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->g:I

    return p0
.end method

.method static synthetic h(Lcom/xiaomi/miglobaladsdk/a/a$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->h:Z

    return p0
.end method

.method static synthetic i(Lcom/xiaomi/miglobaladsdk/a/a$a;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->i:I

    return p0
.end method

.method static synthetic j(Lcom/xiaomi/miglobaladsdk/a/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/xiaomi/miglobaladsdk/a/a$a;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->k:I

    return p0
.end method

.method static synthetic l(Lcom/xiaomi/miglobaladsdk/a/a$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->l:Z

    return p0
.end method


# virtual methods
.method public a(I)Lcom/xiaomi/miglobaladsdk/a/a$a;
    .locals 0

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->a:I

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/xiaomi/miglobaladsdk/a/a$a;
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->f:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->m:Lcom/xiaomi/miglobaladsdk/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->m:Lcom/xiaomi/miglobaladsdk/a/a;

    iput-object p1, v0, Lcom/xiaomi/miglobaladsdk/a/a;->f:Ljava/lang/Integer;

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/a/a$a;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/xiaomi/miglobaladsdk/a/a$a;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->h:Z

    return-object p0
.end method

.method public a()Lcom/xiaomi/miglobaladsdk/a/a;
    .locals 1

    new-instance v0, Lcom/xiaomi/miglobaladsdk/a/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/miglobaladsdk/a/a;-><init>(Lcom/xiaomi/miglobaladsdk/a/a$a;)V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->m:Lcom/xiaomi/miglobaladsdk/a/a;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->m:Lcom/xiaomi/miglobaladsdk/a/a;

    return-object v0
.end method

.method public b(I)Lcom/xiaomi/miglobaladsdk/a/a$a;
    .locals 0

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->g:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/a/a$a;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/xiaomi/miglobaladsdk/a/a$a;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->l:Z

    return-object p0
.end method

.method public c(I)Lcom/xiaomi/miglobaladsdk/a/a$a;
    .locals 0

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->i:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/a/a$a;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(I)Lcom/xiaomi/miglobaladsdk/a/a$a;
    .locals 0

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->k:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/a/a$a;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/a/a$a;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a$a;->j:Ljava/lang/String;

    return-object p0
.end method
