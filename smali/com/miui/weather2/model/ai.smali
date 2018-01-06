.class public Lcom/miui/weather2/model/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final j:[Ljava/lang/String;

.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "3"

    aput-object v1, v0, v4

    const-string v1, "4"

    aput-object v1, v0, v5

    const-string v1, "2"

    aput-object v1, v0, v6

    const-string v1, "3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/weather2/model/ai;->j:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0,0"

    aput-object v1, v0, v3

    const-string v1, "1,1"

    aput-object v1, v0, v4

    const-string v1, "2,2"

    aput-object v1, v0, v5

    const-string v1, "0,3"

    aput-object v1, v0, v6

    const-string v1, "1,3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "6,1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/weather2/model/ai;->k:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sunny"

    aput-object v1, v0, v3

    const-string v1, "rainy_light"

    aput-object v1, v0, v4

    const-string v1, "snowy"

    aput-object v1, v0, v5

    const-string v1, "overcast"

    aput-object v1, v0, v6

    const-string v1, "rainy_heavy"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "haze"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/weather2/model/ai;->l:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/weather2/model/ai;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/weather2/model/ai;->b:Ljava/lang/String;

    invoke-static {}, Lcom/miui/weather2/f/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/ai;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/weather2/model/ai;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/weather2/tools/bi;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/ai;->e:Ljava/lang/String;

    invoke-static {}, Lcom/miui/weather2/f/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/ai;->f:Ljava/lang/String;

    sget-object v0, Lcom/miui/weather2/model/ai;->j:[Ljava/lang/String;

    aget-object v0, v0, p5

    iput-object v0, p0, Lcom/miui/weather2/model/ai;->g:Ljava/lang/String;

    sget-object v0, Lcom/miui/weather2/model/ai;->k:[Ljava/lang/String;

    aget-object v0, v0, p5

    iput-object v0, p0, Lcom/miui/weather2/model/ai;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/weather2/tools/bi;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/ai;->i:Ljava/lang/String;

    const-string v0, "feedback_detail"

    const-string v1, "category"

    sget-object v2, Lcom/miui/weather2/model/ai;->l:[Ljava/lang/String;

    aget-object v2, v2, p5

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/ai;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/ai;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/ai;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/ai;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/ai;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/ai;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/ai;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/ai;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/ai;->i:Ljava/lang/String;

    return-object v0
.end method
