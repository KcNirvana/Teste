.class public Lcom/amap/api/col/it;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/it$a;
    }
.end annotation


# static fields
.field public static volatile a:Landroid/content/Context;

.field public static b:F

.field public static c:Ljava/lang/String;

.field public static d:I

.field public static e:I

.field public static final f:Lcom/amap/api/col/it$a;

.field public static final g:[Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field static n:I

.field static o:I

.field static p:I

.field public static volatile q:Lcom/amap/api/col/de;

.field static r:Z

.field static s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/amap/api/col/it;->b:F

    const-string v0, ""

    sput-object v0, Lcom/amap/api/col/it;->c:Ljava/lang/String;

    const/16 v0, 0x13

    sput v0, Lcom/amap/api/col/it;->d:I

    const/4 v0, 0x3

    sput v0, Lcom/amap/api/col/it;->e:I

    sget-object v0, Lcom/amap/api/col/it$a;->a:Lcom/amap/api/col/it$a;

    sput-object v0, Lcom/amap/api/col/it;->f:Lcom/amap/api/col/it$a;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.amap.api.mapcore2d"

    aput-object v1, v0, v2

    const-string v1, "com.amap.api.maps2d"

    aput-object v1, v0, v3

    sput-object v0, Lcom/amap/api/col/it;->g:[Ljava/lang/String;

    sput v3, Lcom/amap/api/col/it;->j:I

    const/16 v0, 0x100

    sput v0, Lcom/amap/api/col/it;->k:I

    const/16 v0, 0x15

    sput v0, Lcom/amap/api/col/it;->l:I

    sput v2, Lcom/amap/api/col/it;->n:I

    sput v2, Lcom/amap/api/col/it;->o:I

    sput v2, Lcom/amap/api/col/it;->p:I

    sput-boolean v3, Lcom/amap/api/col/it;->r:Z

    sput-boolean v3, Lcom/amap/api/col/it;->s:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/amap/api/col/it;->d:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const-string v0, "/appmaptile?z=%d&x=%d&y=%d&lang=%s&size=1&scale=1&style=8"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/appmaptile?z=%d&x=%d&y=%d&lang=%s&size=1&scale=1&style=7"

    goto :goto_0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/amap/api/col/it;->d:I

    return-void
.end method
