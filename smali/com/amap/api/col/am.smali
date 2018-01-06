.class Lcom/amap/api/col/am;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/am$d;,
        Lcom/amap/api/col/am$a;,
        Lcom/amap/api/col/am$e;,
        Lcom/amap/api/col/am$b;,
        Lcom/amap/api/col/am$c;
    }
.end annotation


# static fields
.field static a:D


# instance fields
.field public b:Lcom/amap/api/col/am$e;

.field public c:Lcom/amap/api/col/am$d;

.field public d:Lcom/amap/api/col/am$b;

.field public e:Lcom/amap/api/col/am$a;

.field public f:Lcom/amap/api/col/am$c;

.field public g:Lcom/amap/api/col/d;

.field public h:Lcom/amap/api/col/hw;

.field public i:Lcom/amap/api/col/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x3fe4ccccc0000000L    # 0.6499999761581421

    sput-wide v0, Lcom/amap/api/col/am;->a:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/hw;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iput-object p2, p0, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    new-instance v0, Lcom/amap/api/col/am$d;

    invoke-direct {v0, p0, p2, v2}, Lcom/amap/api/col/am$d;-><init>(Lcom/amap/api/col/am;Lcom/amap/api/col/hw;Lcom/amap/api/col/an;)V

    iput-object v0, p0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    new-instance v0, Lcom/amap/api/col/ah;

    iget-object v1, p0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-direct {v0, v1}, Lcom/amap/api/col/ah;-><init>(Lcom/amap/api/col/am$d;)V

    iput-object v0, p0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-object v0, p0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iput p3, v0, Lcom/amap/api/col/ah;->a:I

    iget-object v0, p0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iput p3, v0, Lcom/amap/api/col/ah;->b:I

    iget-object v0, p0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    invoke-virtual {v0}, Lcom/amap/api/col/ah;->a()V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/am;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/amap/api/col/am$c;

    invoke-direct {v0, p0, p0, p1, v2}, Lcom/amap/api/col/am$c;-><init>(Lcom/amap/api/col/am;Lcom/amap/api/col/am;Landroid/content/Context;Lcom/amap/api/col/an;)V

    iput-object v0, p0, Lcom/amap/api/col/am;->f:Lcom/amap/api/col/am$c;

    new-instance v0, Lcom/amap/api/col/am$a;

    invoke-direct {v0, p0, p1, v2}, Lcom/amap/api/col/am$a;-><init>(Lcom/amap/api/col/am;Landroid/content/Context;Lcom/amap/api/col/an;)V

    iput-object v0, p0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    new-instance v0, Lcom/amap/api/col/am$e;

    invoke-direct {v0, p0}, Lcom/amap/api/col/am$e;-><init>(Lcom/amap/api/col/am;)V

    iput-object v0, p0, Lcom/amap/api/col/am;->b:Lcom/amap/api/col/am$e;

    new-instance v0, Lcom/amap/api/col/am$b;

    invoke-direct {v0, p0}, Lcom/amap/api/col/am$b;-><init>(Lcom/amap/api/col/am;)V

    iput-object v0, p0, Lcom/amap/api/col/am;->d:Lcom/amap/api/col/am$b;

    new-instance v0, Lcom/amap/api/col/d;

    invoke-direct {v0, p2}, Lcom/amap/api/col/d;-><init>(Lcom/amap/api/col/h;)V

    iput-object v0, p0, Lcom/amap/api/col/am;->g:Lcom/amap/api/col/d;

    iget-object v0, p0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0, v3, v3}, Lcom/amap/api/col/am$d;->a(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {v0}, Lcom/amap/api/col/am$a;->a()V

    iput-object v1, p0, Lcom/amap/api/col/am;->b:Lcom/amap/api/col/am$e;

    iput-object v1, p0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    iput-object v1, p0, Lcom/amap/api/col/am;->d:Lcom/amap/api/col/am$b;

    iput-object v1, p0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iput-object v1, p0, Lcom/amap/api/col/am;->f:Lcom/amap/api/col/am$c;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 13

    const/16 v1, 0xa0

    const/4 v12, 0x3

    const/4 v9, 0x1

    const-wide/32 v10, 0x25800

    const/4 v8, 0x2

    const-string v3, "initialize"

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "densityDpi"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v2, v5

    int-to-long v6, v2

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    :goto_1
    const/16 v2, 0x78

    if-gt v0, v2, :cond_1

    sput v9, Lcom/amap/api/col/it;->n:I

    :goto_2
    sget v0, Lcom/amap/api/col/it;->n:I

    if-eq v0, v8, :cond_0

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/amap/api/col/it;->a(I)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v5, "Mediator"

    invoke-static {v0, v5, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v5, "Mediator"

    invoke-static {v0, v5, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "Mediator"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v2, "Mediator"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_1
    if-gt v0, v1, :cond_2

    sput v12, Lcom/amap/api/col/it;->n:I

    goto :goto_2

    :cond_2
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_3

    sput v8, Lcom/amap/api/col/it;->n:I

    goto :goto_2

    :cond_3
    cmp-long v0, v6, v10

    if-lez v0, :cond_4

    sput v8, Lcom/amap/api/col/it;->n:I

    goto :goto_2

    :cond_4
    cmp-long v0, v6, v10

    if-gez v0, :cond_5

    sput v9, Lcom/amap/api/col/it;->n:I

    goto :goto_2

    :cond_5
    sput v12, Lcom/amap/api/col/it;->n:I

    goto :goto_2

    :cond_6
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, v0, v10

    if-lez v2, :cond_7

    sput v8, Lcom/amap/api/col/it;->n:I

    goto :goto_2

    :cond_7
    cmp-long v0, v0, v10

    if-gez v0, :cond_8

    sput v9, Lcom/amap/api/col/it;->n:I

    goto :goto_2

    :cond_8
    sput v12, Lcom/amap/api/col/it;->n:I

    goto :goto_2
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/am$a;->b(Z)V

    return-void
.end method
