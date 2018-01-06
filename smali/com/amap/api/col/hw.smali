.class Lcom/amap/api/col/hw;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/amap/api/col/ar$b;
.implements Lcom/amap/api/col/ay$a;
.implements Lcom/amap/api/col/h;
.implements Lcom/amap/api/col/im$a;
.implements Lcom/amap/api/col/io$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/hw$a;
    }
.end annotation


# static fields
.field private static aI:I

.field private static aJ:Landroid/graphics/Paint;

.field private static aK:Landroid/graphics/Bitmap;


# instance fields
.field private A:Lcom/amap/api/col/ib;

.field private B:Lcom/amap/api/maps2d/a$l;

.field private C:Z

.field private D:Lcom/amap/api/col/as;

.field private E:Lcom/amap/api/col/bq;

.field private F:Lcom/amap/api/col/ax;

.field private G:Lcom/amap/api/maps2d/h;

.field private H:Lcom/amap/api/col/iq;

.field private I:Lcom/amap/api/col/hj;

.field private J:Z

.field private K:Z

.field private L:Lcom/amap/api/maps2d/a$c;

.field private M:Lcom/amap/api/col/il;

.field private N:Lcom/amap/api/maps2d/a$a;

.field private O:Lcom/amap/api/col/ah;

.field private P:Z

.field private Q:Z

.field private R:Landroid/view/View;

.field private S:Lcom/amap/api/maps2d/a$d;

.field private T:Lcom/amap/api/maps2d/a$b;

.field private U:Lcom/amap/api/col/ak;

.field private V:Lcom/amap/api/maps2d/a$j;

.field private W:Landroid/graphics/drawable/Drawable;

.field a:Lcom/amap/api/col/am;

.field private aA:Z

.field private aB:F

.field private aC:F

.field private aD:I

.field private aE:I

.field private aF:J

.field private aG:I

.field private aH:I

.field private aL:I

.field private aM:Z

.field private aN:Lcom/amap/api/col/hw$a;

.field private aa:Lcom/amap/api/col/o;

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Lcom/amap/api/maps2d/a$k;

.field private af:Lcom/amap/api/maps2d/a$i;

.field private ag:Lcom/amap/api/maps2d/a$g;

.field private ah:Lcom/amap/api/maps2d/a$f;

.field private ai:Lcom/amap/api/maps2d/a$e;

.field private aj:Z

.field private ak:Lcom/amap/api/maps2d/a$h;

.field private al:Ljava/util/Timer;

.field private am:Ljava/lang/Thread;

.field private an:Ljava/util/TimerTask;

.field private ao:Landroid/os/Handler;

.field private ap:Landroid/os/Handler;

.field private aq:Landroid/graphics/Point;

.field private ar:Landroid/view/GestureDetector;

.field private as:Lcom/amap/api/col/ar$a;

.field private at:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/GestureDetector$OnGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private au:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/ar$b;",
            ">;"
        }
    .end annotation
.end field

.field private av:Landroid/widget/Scroller;

.field private aw:I

.field private ax:I

.field private ay:Landroid/graphics/Matrix;

.field private az:F

.field public b:Lcom/amap/api/col/z;

.field c:[F

.field d:Z

.field e:Lcom/amap/api/col/ac;

.field f:Lcom/amap/api/col/br;

.field public g:Lcom/amap/api/col/ag;

.field protected h:Lcom/amap/api/col/s;

.field public i:Lcom/amap/api/col/be;

.field public j:Lcom/amap/api/col/ad;

.field final k:Landroid/os/Handler;

.field l:I

.field m:F

.field private n:Landroid/content/Context;

.field private o:Z

.field private p:Z

.field private q:Lcom/amap/api/maps2d/a/j;

.field private r:Lcom/amap/api/col/k;

.field private final s:[I

.field private t:Z

.field private u:I

.field private v:Lcom/amap/api/maps2d/f;

.field private w:J

.field private x:Lcom/amap/api/maps2d/a$a;

.field private y:Lcom/amap/api/col/w;

.field private z:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0xde

    const/16 v1, 0xd7

    const/16 v2, 0xd6

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/amap/api/col/hw;->aI:I

    sput-object v3, Lcom/amap/api/col/hw;->aJ:Landroid/graphics/Paint;

    sput-object v3, Lcom/amap/api/col/hw;->aK:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/amap/api/col/hw;->o:Z

    iput-boolean v4, p0, Lcom/amap/api/col/hw;->p:Z

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/col/hw;->s:[I

    iput-boolean v4, p0, Lcom/amap/api/col/hw;->t:Z

    iput v4, p0, Lcom/amap/api/col/hw;->u:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/col/hw;->c:[F

    iput-boolean v2, p0, Lcom/amap/api/col/hw;->d:Z

    new-instance v0, Lcom/amap/api/col/ac;

    invoke-direct {v0, p0}, Lcom/amap/api/col/ac;-><init>(Lcom/amap/api/col/hw;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->e:Lcom/amap/api/col/ac;

    iput-boolean v4, p0, Lcom/amap/api/col/hw;->C:Z

    iput-object v3, p0, Lcom/amap/api/col/hw;->I:Lcom/amap/api/col/hj;

    iput-boolean v2, p0, Lcom/amap/api/col/hw;->J:Z

    iput-boolean v2, p0, Lcom/amap/api/col/hw;->K:Z

    iput-object v3, p0, Lcom/amap/api/col/hw;->N:Lcom/amap/api/maps2d/a$a;

    iput-boolean v2, p0, Lcom/amap/api/col/hw;->P:Z

    iput-boolean v2, p0, Lcom/amap/api/col/hw;->Q:Z

    iput-object v3, p0, Lcom/amap/api/col/hw;->W:Landroid/graphics/drawable/Drawable;

    iput-boolean v2, p0, Lcom/amap/api/col/hw;->ab:Z

    iput-boolean v2, p0, Lcom/amap/api/col/hw;->ac:Z

    iput-boolean v2, p0, Lcom/amap/api/col/hw;->ad:Z

    iput-boolean v2, p0, Lcom/amap/api/col/hw;->aj:Z

    iput-object v3, p0, Lcom/amap/api/col/hw;->ak:Lcom/amap/api/maps2d/a$h;

    iput-object v3, p0, Lcom/amap/api/col/hw;->al:Ljava/util/Timer;

    iput-object v3, p0, Lcom/amap/api/col/hw;->am:Ljava/lang/Thread;

    new-instance v0, Lcom/amap/api/col/hx;

    invoke-direct {v0, p0}, Lcom/amap/api/col/hx;-><init>(Lcom/amap/api/col/hw;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->an:Ljava/util/TimerTask;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/hw;->ao:Landroid/os/Handler;

    new-instance v0, Lcom/amap/api/col/hy;

    invoke-direct {v0, p0}, Lcom/amap/api/col/hy;-><init>(Lcom/amap/api/col/hw;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->ap:Landroid/os/Handler;

    new-instance v0, Lcom/amap/api/col/hz;

    invoke-direct {v0, p0}, Lcom/amap/api/col/hz;-><init>(Lcom/amap/api/col/hw;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->k:Landroid/os/Handler;

    iput v2, p0, Lcom/amap/api/col/hw;->l:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/hw;->at:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/hw;->au:Ljava/util/ArrayList;

    iput v2, p0, Lcom/amap/api/col/hw;->aw:I

    iput v2, p0, Lcom/amap/api/col/hw;->ax:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/hw;->ay:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/col/hw;->az:F

    iput-boolean v2, p0, Lcom/amap/api/col/hw;->aA:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/hw;->aF:J

    iput v2, p0, Lcom/amap/api/col/hw;->aG:I

    iput v2, p0, Lcom/amap/api/col/hw;->aH:I

    iput v2, p0, Lcom/amap/api/col/hw;->aL:I

    iput-boolean v2, p0, Lcom/amap/api/col/hw;->aM:Z

    iput-object v3, p0, Lcom/amap/api/col/hw;->aN:Lcom/amap/api/col/hw$a;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/amap/api/col/hw;->m:F

    invoke-direct {p0}, Lcom/amap/api/col/hw;->O()V

    invoke-virtual {p0, v4}, Lcom/amap/api/col/hw;->setClickable(Z)V

    invoke-direct {p0, p1, v3}, Lcom/amap/api/col/hw;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        0x989680
        0x4c4b40
        0x1e8480
        0xf4240
        0x7a120
        0x30d40
        0x186a0
        0xc350
        0x7530
        0x4e20
        0x2710
        0x1388
        0x7d0
        0x3e8
        0x1f4
        0xc8
        0x64
        0x32
        0x19
        0xa
        0x5
    .end array-data
.end method

.method public static C()I
    .locals 1

    sget v0, Lcom/amap/api/col/hw;->aI:I

    return v0
.end method

.method public static declared-synchronized D()Landroid/graphics/Paint;
    .locals 4

    const-class v1, Lcom/amap/api/col/hw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/col/hw;->aJ:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/amap/api/col/hw;->aJ:Landroid/graphics/Paint;

    sget-object v0, Lcom/amap/api/col/hw;->aJ:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/amap/api/col/hw;->aJ:Landroid/graphics/Paint;

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    sget-object v2, Lcom/amap/api/col/hw;->aJ:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_0
    sget-object v0, Lcom/amap/api/col/hw;->aJ:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40200000    # 2.5f
    .end array-data
.end method

.method private N()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->v:Lcom/amap/api/maps2d/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->v:Lcom/amap/api/maps2d/f;

    iget-wide v2, p0, Lcom/amap/api/col/hw;->w:J

    iget-object v1, p0, Lcom/amap/api/col/hw;->x:Lcom/amap/api/maps2d/a$a;

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/amap/api/col/hw;->a(Lcom/amap/api/maps2d/f;JLcom/amap/api/maps2d/a$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/hw;->v:Lcom/amap/api/maps2d/f;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/hw;->w:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/hw;->x:Lcom/amap/api/maps2d/a$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "handleUnHandleMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private O()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v3, "setLayerType"

    const-class v2, Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "setLayerType"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const/4 v1, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v1, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private P()V
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/col/hw;->a(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/col/hw;->g:Lcom/amap/api/col/ag;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/amap/api/col/ag;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private Q()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    invoke-virtual {v0}, Lcom/amap/api/col/am;->a()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/z;->b(Z)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-virtual {v0}, Lcom/amap/api/col/z;->e()V

    :cond_0
    iput-object v2, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    iput-object v2, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    return-void
.end method

.method private R()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/amap/api/col/hw;->P:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/amap/api/col/hw;->P:Z

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/hw;->ad:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/amap/api/col/hw;->ad:Z

    invoke-static {}, Lcom/amap/api/col/in;->a()Lcom/amap/api/col/in;

    move-result-object v0

    iput-boolean v3, v0, Lcom/amap/api/col/in;->g:Z

    iget-object v1, p0, Lcom/amap/api/col/hw;->e:Lcom/amap/api/col/ac;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/ac;->a(Lcom/amap/api/col/in;)V

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/hw;->Q:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/amap/api/col/hw;->Q:Z

    invoke-static {}, Lcom/amap/api/col/in;->a()Lcom/amap/api/col/in;

    move-result-object v0

    iput-boolean v3, v0, Lcom/amap/api/col/in;->g:Z

    iget-object v1, p0, Lcom/amap/api/col/hw;->e:Lcom/amap/api/col/ac;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/ac;->a(Lcom/amap/api/col/in;)V

    :cond_2
    iput-boolean v2, p0, Lcom/amap/api/col/hw;->ac:Z

    iget-object v0, p0, Lcom/amap/api/col/hw;->ae:Lcom/amap/api/maps2d/a$k;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/hw;->q:Lcom/amap/api/maps2d/a/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/hw;->ae:Lcom/amap/api/maps2d/a$k;

    iget-object v1, p0, Lcom/amap/api/col/hw;->q:Lcom/amap/api/maps2d/a/j;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/a$k;->c(Lcom/amap/api/maps2d/a/j;)V

    iput-object v4, p0, Lcom/amap/api/col/hw;->q:Lcom/amap/api/maps2d/a/j;

    iput-object v4, p0, Lcom/amap/api/col/hw;->r:Lcom/amap/api/col/k;

    :cond_3
    return-void
.end method

.method private S()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/hw;->aq:Landroid/graphics/Point;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->aq:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/amap/api/col/hw;->aG:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/amap/api/col/hw;->aq:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/amap/api/col/hw;->aH:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/amap/api/col/hw;->aq:Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/api/col/hw;->aG:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/amap/api/col/hw;->aq:Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/api/col/hw;->aH:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/col/z;->d(II)V

    goto :goto_0
.end method

.method private T()Lcom/amap/api/maps2d/a/c;
    .locals 6

    const-wide v4, 0x412e848000000000L    # 1000000.0

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->y()Lcom/amap/api/col/f;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/col/f;->b()I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, v4

    invoke-virtual {v0}, Lcom/amap/api/col/f;->a()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    new-instance v4, Lcom/amap/api/maps2d/a/h;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->h()F

    move-result v0

    invoke-static {v4, v0}, Lcom/amap/api/maps2d/a/c;->a(Lcom/amap/api/maps2d/a/h;F)Lcom/amap/api/maps2d/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method private U()V
    .locals 12

    const/16 v1, 0x78

    const/16 v0, 0x64

    const/16 v2, 0x32

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    iget-object v3, p0, Lcom/amap/api/col/hw;->F:Lcom/amap/api/col/ax;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/amap/api/col/hw;->m:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    if-gt v5, v1, :cond_4

    :cond_2
    :goto_1
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/hw;->m:F

    :cond_3
    invoke-direct {p0}, Lcom/amap/api/col/hw;->V()Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->h()F

    move-result v1

    iget v2, p0, Lcom/amap/api/col/hw;->m:F

    iget-wide v4, v0, Lcom/amap/api/maps2d/a/h;->a:D

    mul-double/2addr v4, v8

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v10

    mul-double/2addr v4, v8

    const-wide v6, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    float-to-double v8, v1

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-float v0, v4

    float-to-double v4, v0

    iget-object v0, p0, Lcom/amap/api/col/hw;->s:[I

    float-to-int v3, v1

    aget v0, v0, v3

    int-to-double v6, v0

    float-to-double v2, v2

    mul-double/2addr v2, v4

    div-double v2, v6, v2

    double-to-int v0, v2

    iget-object v2, p0, Lcom/amap/api/col/hw;->s:[I

    float-to-int v1, v1

    aget v1, v2, v1

    invoke-static {v1}, Lcom/amap/api/col/bz;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/hw;->F:Lcom/amap/api/col/ax;

    invoke-virtual {v2, v0}, Lcom/amap/api/col/ax;->a(I)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->F:Lcom/amap/api/col/ax;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ax;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->F:Lcom/amap/api/col/ax;

    invoke-virtual {v0}, Lcom/amap/api/col/ax;->invalidate()V

    goto :goto_0

    :cond_4
    const/16 v6, 0xa0

    if-gt v5, v6, :cond_5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x1e0

    if-gt v2, v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_5
    const/16 v0, 0xf0

    if-gt v5, v0, :cond_7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_6

    const/16 v0, 0x3c

    goto :goto_1

    :cond_6
    const/16 v0, 0x46

    goto :goto_1

    :cond_7
    const/16 v0, 0x140

    if-gt v5, v0, :cond_8

    move v0, v2

    goto :goto_1

    :cond_8
    const/16 v0, 0x1e0

    if-gt v5, v0, :cond_9

    move v0, v2

    goto/16 :goto_1

    :cond_9
    const/16 v0, 0x28

    goto/16 :goto_1
.end method

.method private V()Lcom/amap/api/maps2d/a/h;
    .locals 6

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->y()Lcom/amap/api/col/f;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/col/f;->b()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/amap/api/col/iu;->a(J)D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/col/f;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/amap/api/col/iu;->a(J)D

    move-result-wide v4

    new-instance v0, Lcom/amap/api/maps2d/a/h;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    goto :goto_0
.end method

.method private W()Lcom/amap/api/col/n;
    .locals 4

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->y()Lcom/amap/api/col/f;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amap/api/col/n;

    invoke-direct {v0}, Lcom/amap/api/col/n;-><init>()V

    invoke-virtual {v1}, Lcom/amap/api/col/f;->e()D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lcom/amap/api/col/n;->a:I

    invoke-virtual {v1}, Lcom/amap/api/col/f;->f()D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Lcom/amap/api/col/n;->b:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/hw;Lcom/amap/api/maps2d/a$a;)Lcom/amap/api/maps2d/a$a;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/hw;->N:Lcom/amap/api/maps2d/a$a;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/col/hw;Lcom/amap/api/maps2d/a$h;)Lcom/amap/api/maps2d/a$h;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/hw;->ak:Lcom/amap/api/maps2d/a$h;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$i;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->af:Lcom/amap/api/maps2d/a$i;

    return-object v0
.end method

.method private a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/h;
    .locals 7

    new-instance v6, Lcom/amap/api/col/n;

    invoke-direct {v6}, Lcom/amap/api/col/n;-><init>()V

    iget-wide v2, p1, Lcom/amap/api/maps2d/a/h;->a:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/a/h;->b:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/col/hw;->a(DDLcom/amap/api/col/n;)V

    iget v0, v6, Lcom/amap/api/col/n;->b:I

    add-int/lit8 v0, v0, -0x3c

    iput v0, v6, Lcom/amap/api/col/n;->b:I

    new-instance v0, Lcom/amap/api/col/iv;

    invoke-direct {v0}, Lcom/amap/api/col/iv;-><init>()V

    iget v1, v6, Lcom/amap/api/col/n;->a:I

    iget v2, v6, Lcom/amap/api/col/n;->b:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/col/hw;->a(IILcom/amap/api/col/iv;)V

    new-instance v1, Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v0, Lcom/amap/api/col/iv;->b:D

    iget-wide v4, v0, Lcom/amap/api/col/iv;->a:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    return-object v1
.end method

.method private a(FLandroid/graphics/PointF;FF)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v1, "doScale"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->h:Lcom/amap/api/col/s;

    invoke-interface {v0}, Lcom/amap/api/col/s;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/col/hw;->aL:I

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->d()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    iget-object v4, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v4, v4, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v4}, Lcom/amap/api/col/am$d;->e()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/amap/api/col/hw;->a(F)F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v3, v3, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v3}, Lcom/amap/api/col/am$d;->e()F

    move-result v3

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amap/api/col/hw;->c:[F

    iget-object v4, p0, Lcom/amap/api/col/hw;->c:[F

    aget v4, v4, v6

    aput v4, v3, v7

    iget-object v3, p0, Lcom/amap/api/col/hw;->c:[F

    aput v2, v3, v6

    iget-object v3, p0, Lcom/amap/api/col/hw;->c:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/amap/api/col/hw;->c:[F

    aget v4, v4, v6

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v3, v3, Lcom/amap/api/col/am;->b:Lcom/amap/api/col/am$e;

    invoke-virtual {v3, v0, v1}, Lcom/amap/api/col/am$e;->a(II)Lcom/amap/api/col/f;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1, v2}, Lcom/amap/api/col/am$d;->a(F)V

    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/am$d;->a(Lcom/amap/api/col/f;)V

    invoke-direct {p0}, Lcom/amap/api/col/hw;->U()V

    goto :goto_0
.end method

.method private a(II)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->aq:Landroid/graphics/Point;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/amap/api/col/hw;->aG:I

    iput p2, p0, Lcom/amap/api/col/hw;->aH:I

    invoke-direct {p0}, Lcom/amap/api/col/hw;->S()V

    goto :goto_0
.end method

.method private a(IILcom/amap/api/col/n;)V
    .locals 7

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->h()F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, p1

    int-to-float v2, p2

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    iget-object v2, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    iget-object v2, v2, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    iget-object v3, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    iget-object v3, v3, Lcom/amap/api/col/ah;->n:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    iget-wide v4, v4, Lcom/amap/api/col/ah;->k:D

    iget-object v6, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    iget-object v6, v6, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/col/ah;->a(Landroid/graphics/PointF;Lcom/amap/api/col/f;Landroid/graphics/Point;DLcom/amap/api/col/ah$a;)Lcom/amap/api/col/f;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/f;->e()D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p3, Lcom/amap/api/col/n;->a:I

    invoke-virtual {v0}, Lcom/amap/api/col/f;->f()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p3, Lcom/amap/api/col/n;->b:I

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/hw;->aq:Landroid/graphics/Point;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->ar:Landroid/view/GestureDetector;

    invoke-static {p1, p0}, Lcom/amap/api/col/ar;->a(Landroid/content/Context;Lcom/amap/api/col/ar$b;)Lcom/amap/api/col/ar$a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/hw;->as:Lcom/amap/api/col/ar$a;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->av:Landroid/widget/Scroller;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/amap/api/col/hw;->aD:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/amap/api/col/hw;->aE:I

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/amap/api/col/hw;->aw:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/api/col/hw;->ax:I

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const/16 v10, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v1, -0x2

    const-wide/16 v8, 0x0

    invoke-static {p1}, Lcom/amap/api/col/cu;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/it;->c:Ljava/lang/String;

    const-string v7, "initEnviornment"

    iput-object p1, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/col/ih;

    iget-object v2, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/col/ih;-><init>(Landroid/content/Context;Lcom/amap/api/col/h;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->am:Ljava/lang/Thread;

    new-instance v0, Lcom/amap/api/col/av;

    invoke-direct {v0, p0}, Lcom/amap/api/col/av;-><init>(Lcom/amap/api/col/h;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->aa:Lcom/amap/api/col/o;

    const/16 v0, 0xde

    const/16 v2, 0xd7

    const/16 v3, 0xd6

    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/hw;->setBackgroundColor(I)V

    invoke-static {}, Lcom/amap/api/col/io;->a()Lcom/amap/api/col/io;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/io;->a(Lcom/amap/api/col/io$a;)V

    invoke-static {}, Lcom/amap/api/col/im;->a()Lcom/amap/api/col/im;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/im;->a(Lcom/amap/api/col/im$a;)V

    new-instance v0, Lcom/amap/api/col/hj;

    invoke-direct {v0, p0}, Lcom/amap/api/col/hj;-><init>(Lcom/amap/api/col/hw;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->I:Lcom/amap/api/col/hj;

    new-instance v0, Lcom/amap/api/col/ib;

    invoke-direct {v0, p0}, Lcom/amap/api/col/ib;-><init>(Lcom/amap/api/col/h;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->A:Lcom/amap/api/col/ib;

    new-instance v0, Lcom/amap/api/col/il;

    invoke-direct {v0, p1}, Lcom/amap/api/col/il;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->M:Lcom/amap/api/col/il;

    new-instance v0, Lcom/amap/api/col/be;

    iget-object v2, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/col/be;-><init>(Landroid/content/Context;Lcom/amap/api/col/h;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->i:Lcom/amap/api/col/be;

    new-instance v0, Lcom/amap/api/col/am;

    iget-object v2, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    sget v3, Lcom/amap/api/col/it;->k:I

    invoke-direct {v0, v2, p0, v3}, Lcom/amap/api/col/am;-><init>(Landroid/content/Context;Lcom/amap/api/col/hw;I)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, p0, Lcom/amap/api/col/hw;->i:Lcom/amap/api/col/be;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/col/be;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iput-object v0, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    new-instance v0, Lcom/amap/api/col/z;

    iget-object v2, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    invoke-direct {v0, v2}, Lcom/amap/api/col/z;-><init>(Lcom/amap/api/col/am;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    new-instance v0, Lcom/amap/api/col/bm;

    invoke-direct {v0, p0}, Lcom/amap/api/col/bm;-><init>(Lcom/amap/api/col/h;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->h:Lcom/amap/api/col/s;

    new-instance v0, Lcom/amap/api/col/br;

    iget-object v2, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-direct {v0, v2, v3, p0}, Lcom/amap/api/col/br;-><init>(Landroid/content/Context;Lcom/amap/api/col/z;Lcom/amap/api/col/h;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->f:Lcom/amap/api/col/br;

    new-instance v0, Lcom/amap/api/col/ag;

    iget-object v2, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/col/ag;-><init>(Landroid/content/Context;Lcom/amap/api/col/h;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->g:Lcom/amap/api/col/ag;

    new-instance v0, Lcom/amap/api/col/w;

    iget-object v2, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/hw;->e:Lcom/amap/api/col/ac;

    invoke-direct {v0, v2, v3, p0}, Lcom/amap/api/col/w;-><init>(Landroid/content/Context;Lcom/amap/api/col/ac;Lcom/amap/api/col/h;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->y:Lcom/amap/api/col/w;

    new-instance v0, Lcom/amap/api/col/bq;

    iget-object v2, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/col/bq;-><init>(Landroid/content/Context;Lcom/amap/api/col/hw;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->E:Lcom/amap/api/col/bq;

    new-instance v0, Lcom/amap/api/col/ax;

    iget-object v2, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/col/ax;-><init>(Landroid/content/Context;Lcom/amap/api/col/hw;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->F:Lcom/amap/api/col/ax;

    new-instance v0, Lcom/amap/api/col/iq;

    iget-object v2, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/hw;->e:Lcom/amap/api/col/ac;

    invoke-direct {v0, v2, v3, p0}, Lcom/amap/api/col/iq;-><init>(Landroid/content/Context;Lcom/amap/api/col/ac;Lcom/amap/api/col/h;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->H:Lcom/amap/api/col/iq;

    new-instance v0, Lcom/amap/api/col/ad;

    iget-object v2, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    invoke-direct {v0, v2, p2, p0}, Lcom/amap/api/col/ad;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amap/api/col/hw;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/amap/api/col/hw;->P()V

    iget-object v2, p0, Lcom/amap/api/col/hw;->g:Lcom/amap/api/col/ag;

    iget-object v3, p0, Lcom/amap/api/col/hw;->i:Lcom/amap/api/col/be;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/col/ag;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/amap/api/col/hw;->g:Lcom/amap/api/col/ag;

    iget-object v3, p0, Lcom/amap/api/col/hw;->E:Lcom/amap/api/col/bq;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/col/ag;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/amap/api/col/hw;->g:Lcom/amap/api/col/ag;

    iget-object v3, p0, Lcom/amap/api/col/hw;->F:Lcom/amap/api/col/ax;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/col/ag;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/amap/api/col/ag$a;

    invoke-direct {v2, v0}, Lcom/amap/api/col/ag$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->g:Lcom/amap/api/col/ag;

    iget-object v3, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {v0, v3, v2}, Lcom/amap/api/col/ag;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/amap/api/col/ag$a;

    new-instance v3, Lcom/amap/api/maps2d/a/h;

    invoke-direct {v3, v8, v9, v8, v9}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    const/16 v6, 0x53

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/ag$a;-><init>(IILcom/amap/api/maps2d/a/h;III)V

    iget-object v2, p0, Lcom/amap/api/col/hw;->g:Lcom/amap/api/col/ag;

    iget-object v3, p0, Lcom/amap/api/col/hw;->f:Lcom/amap/api/col/br;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/col/ag;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/amap/api/col/ag$a;

    new-instance v3, Lcom/amap/api/maps2d/a/h;

    invoke-direct {v3, v8, v9, v8, v9}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    const/16 v6, 0x53

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/ag$a;-><init>(IILcom/amap/api/maps2d/a/h;III)V

    iget-object v2, p0, Lcom/amap/api/col/hw;->g:Lcom/amap/api/col/ag;

    iget-object v3, p0, Lcom/amap/api/col/hw;->y:Lcom/amap/api/col/w;

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/col/ag;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->p()Lcom/amap/api/col/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/s;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->y:Lcom/amap/api/col/w;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/amap/api/col/w;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->H:Lcom/amap/api/col/iq;

    invoke-virtual {v0, v10}, Lcom/amap/api/col/iq;->setVisibility(I)V

    new-instance v0, Lcom/amap/api/col/ag$a;

    new-instance v3, Lcom/amap/api/maps2d/a/h;

    invoke-direct {v3, v8, v9, v8, v9}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    const/16 v6, 0x33

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/ag$a;-><init>(IILcom/amap/api/maps2d/a/h;III)V

    iget-object v1, p0, Lcom/amap/api/col/hw;->g:Lcom/amap/api/col/ag;

    iget-object v2, p0, Lcom/amap/api/col/hw;->H:Lcom/amap/api/col/iq;

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/col/ag;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/amap/api/col/as;

    invoke-direct {v0, p0}, Lcom/amap/api/col/as;-><init>(Lcom/amap/api/col/h;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->D:Lcom/amap/api/col/as;

    iget-object v0, p0, Lcom/amap/api/col/hw;->f:Lcom/amap/api/col/br;

    sget v1, Lcom/amap/api/col/ii;->a:I

    invoke-virtual {v0, v1}, Lcom/amap/api/col/br;->setId(I)V

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->am:Ljava/lang/Thread;

    const-string v1, "AuthThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->am:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->al:Ljava/util/Timer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/hw;->al:Ljava/util/Timer;

    iget-object v0, p0, Lcom/amap/api/col/hw;->al:Ljava/util/Timer;

    iget-object v1, p0, Lcom/amap/api/col/hw;->an:Ljava/util/TimerTask;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v7}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v1, v7}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/col/hw;->ac:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->r:Lcom/amap/api/col/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->q:Lcom/amap/api/maps2d/a/j;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Lcom/amap/api/col/iv;

    invoke-direct {v2}, Lcom/amap/api/col/iv;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/col/hw;->a(IILcom/amap/api/col/iv;)V

    new-instance v0, Lcom/amap/api/maps2d/a/h;

    iget-wide v4, v2, Lcom/amap/api/col/iv;->b:D

    iget-wide v2, v2, Lcom/amap/api/col/iv;->a:D

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    iget-object v1, p0, Lcom/amap/api/col/hw;->r:Lcom/amap/api/col/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/hw;->r:Lcom/amap/api/col/k;

    invoke-interface {v1}, Lcom/amap/api/col/k;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/hw;->r:Lcom/amap/api/col/k;

    invoke-interface {v1, v0}, Lcom/amap/api/col/k;->a(Lcom/amap/api/maps2d/a/h;)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->ae:Lcom/amap/api/maps2d/a$k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->ae:Lcom/amap/api/maps2d/a$k;

    iget-object v1, p0, Lcom/amap/api/col/hw;->q:Lcom/amap/api/maps2d/a/j;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/a$k;->b(Lcom/amap/api/maps2d/a/j;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/hw;ZLcom/amap/api/maps2d/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/hw;->a(ZLcom/amap/api/maps2d/a/c;)V

    return-void
.end method

.method private a(ZLcom/amap/api/maps2d/a/c;)V
    .locals 3

    const-string v0, "cameraChangeFinish"

    iget-object v1, p0, Lcom/amap/api/col/hw;->L:Lcom/amap/api/maps2d/a$c;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/hw;->M:Lcom/amap/api/col/il;

    invoke-virtual {v1}, Lcom/amap/api/col/il;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->i()Lcom/amap/api/maps2d/a/c;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p2

    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->L:Lcom/amap/api/maps2d/a$c;

    invoke-interface {v0, p2}, Lcom/amap/api/maps2d/a$c;->b(Lcom/amap/api/maps2d/a/c;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v1, v2, v0}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/amap/api/col/hw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/hw;->J:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/col/hw;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/hw;->U()V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->as:Lcom/amap/api/col/ar$a;

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getHeight()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/amap/api/col/ar$a;->a(Landroid/view/MotionEvent;II)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->ar:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/hw;->ad:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amap/api/col/im;->a()Lcom/amap/api/col/im;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/col/im;->b()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/amap/api/col/hw;->a(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-direct {p0}, Lcom/amap/api/col/hw;->R()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    :goto_2
    const-string v2, "AMapDelegateImpGLSurfaceView"

    const-string v3, "handleTouch"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/col/hw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/hw;->K:Z

    return p1
.end method

.method static synthetic c(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$f;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->ah:Lcom/amap/api/maps2d/a$f;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/col/hw;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/hw;->N()V

    return-void
.end method

.method static synthetic e(Lcom/amap/api/col/hw;)Lcom/amap/api/col/bq;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->E:Lcom/amap/api/col/bq;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/col/hw;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/amap/api/col/hw;)Lcom/amap/api/col/ak;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->U:Lcom/amap/api/col/ak;

    return-object v0
.end method

.method static synthetic h(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$h;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->ak:Lcom/amap/api/maps2d/a$h;

    return-object v0
.end method

.method static synthetic i(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a/c;
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/hw;->T()Lcom/amap/api/maps2d/a/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$c;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->L:Lcom/amap/api/maps2d/a$c;

    return-object v0
.end method

.method static synthetic k(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->N:Lcom/amap/api/maps2d/a$a;

    return-object v0
.end method

.method static synthetic l(Lcom/amap/api/col/hw;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/hw;->K:Z

    return v0
.end method

.method static synthetic m(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a/h;
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/hw;->V()Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Lcom/amap/api/col/hw;)Lcom/amap/api/col/il;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->M:Lcom/amap/api/col/il;

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v2, v2, Lcom/amap/api/col/am$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amap/api/col/am$a;->a(Ljava/lang/String;)Lcom/amap/api/col/u;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/col/u;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public B()Lcom/amap/api/col/ar;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->as:Lcom/amap/api/col/ar$a;

    return-object v0
.end method

.method public E()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/hw;->az:F

    return v0
.end method

.method public F()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/hw;->aB:F

    iput v0, p0, Lcom/amap/api/col/hw;->aC:F

    return-void
.end method

.method public G()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected H()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/hw;->k:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method I()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/hw;->k:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public J()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->N:Lcom/amap/api/maps2d/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->N:Lcom/amap/api/maps2d/a$a;

    invoke-interface {v0}, Lcom/amap/api/maps2d/a$a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/hw;->N:Lcom/amap/api/maps2d/a$a;

    :cond_0
    return-void
.end method

.method public K()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/hw;->k:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public L()Lcom/amap/api/maps2d/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/maps2d/k;

    iget-object v1, p0, Lcom/amap/api/col/hw;->h:Lcom/amap/api/col/s;

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/k;-><init>(Lcom/amap/api/a/j;)V

    return-object v0
.end method

.method public M()Lcom/amap/api/maps2d/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/maps2d/j;

    iget-object v1, p0, Lcom/amap/api/col/hw;->aa:Lcom/amap/api/col/o;

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/j;-><init>(Lcom/amap/api/a/g;)V

    return-object v0
.end method

.method public a(F)F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->b()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->b()I

    move-result v0

    int-to-float p1, v0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->a()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->a()I

    move-result v0

    int-to-float p1, v0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/a/k;)Lcom/amap/api/col/ak;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/col/ak;

    iget-object v1, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/col/ak;-><init>(Lcom/amap/api/maps2d/a/k;Lcom/amap/api/col/ad;)V

    iget-object v1, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/ad;->a(Lcom/amap/api/col/k;)V

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->invalidate()V

    return-object v0
.end method

.method public a()Lcom/amap/api/col/am;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    return-object v0
.end method

.method public a(Lcom/amap/api/maps2d/a/e;)Lcom/amap/api/maps2d/a/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->g:Lcom/amap/api/col/d;

    invoke-virtual {v1, p1}, Lcom/amap/api/col/d;->a(Lcom/amap/api/maps2d/a/e;)Lcom/amap/api/col/i;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->invalidate()V

    if-eqz v2, :cond_0

    new-instance v1, Lcom/amap/api/maps2d/a/d;

    invoke-direct {v1, v2}, Lcom/amap/api/maps2d/a/d;-><init>(Lcom/amap/api/a/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AMapDelegateImpGLSurfaceView"

    const-string v3, "addCircle"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/a/g;)Lcom/amap/api/maps2d/a/f;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->g:Lcom/amap/api/col/d;

    invoke-virtual {v1, p1}, Lcom/amap/api/col/d;->a(Lcom/amap/api/maps2d/a/g;)Lcom/amap/api/col/j;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->invalidate()V

    if-eqz v2, :cond_0

    new-instance v1, Lcom/amap/api/maps2d/a/f;

    invoke-direct {v1, v2}, Lcom/amap/api/maps2d/a/f;-><init>(Lcom/amap/api/col/j;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AMapDelegateImpGLSurfaceView"

    const-string v3, "addGroundOverlay"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(DDLcom/amap/api/col/n;)V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->h()F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, p2}, Lcom/amap/api/col/iu;->a(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p3, p4}, Lcom/amap/api/col/iu;->a(D)J

    move-result-wide v2

    long-to-int v2, v2

    new-instance v1, Lcom/amap/api/col/f;

    invoke-direct {v1, v0, v2}, Lcom/amap/api/col/f;-><init>(II)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    iget-object v2, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    iget-object v2, v2, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    iget-object v3, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    iget-object v3, v3, Lcom/amap/api/col/ah;->n:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    iget-wide v4, v4, Lcom/amap/api/col/ah;->k:D

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/ah;->b(Lcom/amap/api/col/f;Lcom/amap/api/col/f;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz p5, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, p5, Lcom/amap/api/col/n;->a:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p5, Lcom/amap/api/col/n;->b:I

    goto :goto_0
.end method

.method public a(FLandroid/graphics/Point;ZJ)V
    .locals 14

    iget-object v2, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->h()F

    move-result v2

    add-float v3, v2, p1

    invoke-static {v3}, Lcom/amap/api/col/bz;->b(F)F

    move-result v9

    sub-float v2, v9, v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    new-instance v2, Lcom/amap/api/col/n;

    invoke-direct {v2}, Lcom/amap/api/col/n;-><init>()V

    invoke-direct {p0}, Lcom/amap/api/col/hw;->W()Lcom/amap/api/col/n;

    move-result-object v2

    if-eqz p2, :cond_0

    if-eqz v2, :cond_0

    new-instance v3, Lcom/amap/api/col/n;

    invoke-direct {v3}, Lcom/amap/api/col/n;-><init>()V

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v4, v5, v3}, Lcom/amap/api/col/hw;->a(IILcom/amap/api/col/n;)V

    iget v4, v2, Lcom/amap/api/col/n;->a:I

    iget v5, v3, Lcom/amap/api/col/n;->a:I

    sub-int/2addr v4, v5

    iget v5, v2, Lcom/amap/api/col/n;->b:I

    iget v6, v3, Lcom/amap/api/col/n;->b:I

    sub-int/2addr v5, v6

    int-to-double v6, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    float-to-double v12, p1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v6, v10

    int-to-double v10, v4

    sub-double/2addr v6, v10

    double-to-int v4, v6

    int-to-double v6, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    float-to-double v12, p1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v6, v10

    int-to-double v10, v5

    sub-double/2addr v6, v10

    double-to-int v5, v6

    iget v6, v3, Lcom/amap/api/col/n;->a:I

    add-int/2addr v4, v6

    iput v4, v2, Lcom/amap/api/col/n;->a:I

    iget v3, v3, Lcom/amap/api/col/n;->b:I

    add-int/2addr v3, v5

    iput v3, v2, Lcom/amap/api/col/n;->b:I

    new-instance v3, Lcom/amap/api/col/f;

    iget v4, v2, Lcom/amap/api/col/n;->b:I

    int-to-double v4, v4

    iget v2, v2, Lcom/amap/api/col/n;->a:I

    int-to-double v6, v2

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/col/f;-><init>(DDZ)V

    iget-object v2, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v2, v2, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    invoke-virtual {v2, v3}, Lcom/amap/api/col/ah;->b(Lcom/amap/api/col/f;)Lcom/amap/api/col/f;

    move-result-object v2

    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-wide/from16 v0, p4

    long-to-int v5, v0

    invoke-virtual {v2, v9, v3, v4, v5}, Lcom/amap/api/col/z;->a(FIII)Z

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-virtual {v3, v2}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/f;)V

    invoke-static {}, Lcom/amap/api/col/im;->a()Lcom/amap/api/col/im;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/col/im;->b()V

    goto/16 :goto_0
.end method

.method public a(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iput v0, p0, Lcom/amap/api/col/hw;->u:I

    invoke-virtual {p0, v1}, Lcom/amap/api/col/hw;->g(Z)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->E:Lcom/amap/api/col/bq;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bq;->a(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->postInvalidate()V

    return-void

    :cond_0
    iput v1, p0, Lcom/amap/api/col/hw;->u:I

    invoke-virtual {p0, v2}, Lcom/amap/api/col/hw;->g(Z)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->E:Lcom/amap/api/col/bq;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/bq;->a(Z)V

    goto :goto_0
.end method

.method public a(IILcom/amap/api/col/iv;)V
    .locals 7

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, p1

    int-to-float v2, p2

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    iget-object v2, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    iget-object v2, v2, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    iget-object v3, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    iget-object v3, v3, Lcom/amap/api/col/ah;->n:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    iget-wide v4, v4, Lcom/amap/api/col/ah;->k:D

    iget-object v6, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    iget-object v6, v6, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/col/ah;->a(Landroid/graphics/PointF;Lcom/amap/api/col/f;Landroid/graphics/Point;DLcom/amap/api/col/ah$a;)Lcom/amap/api/col/f;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/f;->b()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/amap/api/col/iu;->a(J)D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/col/f;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/amap/api/col/iu;->a(J)D

    move-result-wide v0

    iput-wide v2, p3, Lcom/amap/api/col/iv;->b:D

    iput-wide v0, p3, Lcom/amap/api/col/iv;->a:D

    :cond_0
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 8

    :try_start_0
    const-string v1, "showMyLocationOverlay"

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/amap/api/maps2d/a/h;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hw;->G:Lcom/amap/api/maps2d/h;

    if-nez v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->D:Lcom/amap/api/col/as;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/hw;->D:Lcom/amap/api/col/as;

    invoke-virtual {v0}, Lcom/amap/api/col/as;->a()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/hw;->D:Lcom/amap/api/col/as;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v3, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->D:Lcom/amap/api/col/as;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {v0, v2, v4, v5}, Lcom/amap/api/col/as;->a(Lcom/amap/api/maps2d/a/h;D)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->B:Lcom/amap/api/maps2d/a$l;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/hw;->z:Landroid/location/Location;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/hw;->z:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/hw;->z:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/hw;->z:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/hw;->z:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/hw;->B:Lcom/amap/api/maps2d/a$l;

    invoke-interface {v0, p1}, Lcom/amap/api/maps2d/a$l;->a(Landroid/location/Location;)V

    :cond_5
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->z:Landroid/location/Location;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/hw;->D:Lcom/amap/api/col/as;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/hw;->z:Landroid/location/Location;

    if-nez v0, :cond_3

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/hw;->D:Lcom/amap/api/col/as;

    if-nez v0, :cond_8

    new-instance v0, Lcom/amap/api/col/as;

    invoke-direct {v0, p0}, Lcom/amap/api/col/as;-><init>(Lcom/amap/api/col/h;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->D:Lcom/amap/api/col/as;

    :cond_8
    if-eqz v2, :cond_3

    new-instance v0, Lcom/amap/api/maps2d/f;

    iget-object v3, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v3, v3, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v3}, Lcom/amap/api/col/am$d;->e()F

    move-result v3

    invoke-static {v2, v3}, Lcom/amap/api/col/in;->a(Lcom/amap/api/maps2d/a/h;F)Lcom/amap/api/col/in;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/amap/api/maps2d/f;-><init>(Lcom/amap/api/a/k;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/hw;->a(Lcom/amap/api/maps2d/f;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method protected a(Lcom/amap/api/a/k;ZJ)V
    .locals 15

    const-string v8, "newLatLngBoundsWithSize"

    iget-object v2, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/amap/api/a/k;->i:Lcom/amap/api/maps2d/a/i;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-wide v4, v3, Lcom/amap/api/maps2d/a/h;->a:D

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    iget-object v3, v2, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v6, v3, Lcom/amap/api/maps2d/a/h;->a:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v10

    sub-double/2addr v4, v6

    double-to-float v3, v4

    iget-object v4, v2, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-wide v4, v4, Lcom/amap/api/maps2d/a/h;->b:D

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    iget-object v6, v2, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v6, v6, Lcom/amap/api/maps2d/a/h;->b:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v10

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iget-object v5, v2, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-wide v6, v5, Lcom/amap/api/maps2d/a/h;->a:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v10

    iget-object v5, v2, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v10, v5, Lcom/amap/api/maps2d/a/h;->a:D

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    double-to-int v5, v6

    iget-object v6, v2, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-wide v6, v6, Lcom/amap/api/maps2d/a/h;->b:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v10

    iget-object v2, v2, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v10, v2, Lcom/amap/api/maps2d/a/h;->b:D

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    double-to-int v2, v6

    new-instance v6, Lcom/amap/api/col/f;

    invoke-direct {v6, v5, v2}, Lcom/amap/api/col/f;-><init>(II)V

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    move-wide/from16 v0, p3

    long-to-int v5, v0

    invoke-virtual {v2, v6, v5}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/f;I)V

    :goto_1
    iget-object v2, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/amap/api/a/k;->k:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/amap/api/a/k;->l:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/amap/api/a/k;->j:I

    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/col/z;->a(FFIII)V

    invoke-static {}, Lcom/amap/api/col/im;->a()Lcom/amap/api/col/im;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/col/im;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ggb"

    const-string v4, "====>"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "AMapDelegateImpGLSurfaceView"

    invoke-static {v2, v3, v8}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-virtual {v2, v6}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/f;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Lcom/amap/api/col/k;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, -0x2

    const/high16 v5, -0x1000000

    const-string v1, "showInfoWindow"

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/amap/api/col/k;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/amap/api/col/k;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->q()V

    new-instance v3, Lcom/amap/api/maps2d/a/j;

    invoke-direct {v3, p1}, Lcom/amap/api/maps2d/a/j;-><init>(Lcom/amap/api/a/e;)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->T:Lcom/amap/api/maps2d/a$b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/hw;->T:Lcom/amap/api/maps2d/a$b;

    invoke-interface {v0, v3}, Lcom/amap/api/maps2d/a$b;->a(Lcom/amap/api/maps2d/a/j;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->W:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    const-string v4, "infowindow_bg2d.9.png"

    invoke-static {v0, v4}, Lcom/amap/api/col/at;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/hw;->W:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/hw;->T:Lcom/amap/api/maps2d/a$b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/hw;->T:Lcom/amap/api/maps2d/a$b;

    invoke-interface {v0, v3}, Lcom/amap/api/maps2d/a$b;->b(Lcom/amap/api/maps2d/a/j;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    iget-object v1, p0, Lcom/amap/api/col/hw;->W:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v1, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheQuality(I)V

    invoke-interface {p1}, Lcom/amap/api/col/k;->b()Lcom/amap/api/col/iv;

    move-result-object v5

    if-eqz v0, :cond_8

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_3
    new-instance v0, Lcom/amap/api/col/ag$a;

    invoke-interface {p1}, Lcom/amap/api/col/k;->u()Lcom/amap/api/maps2d/a/h;

    move-result-object v3

    iget-wide v6, v5, Lcom/amap/api/col/iv;->a:D

    double-to-int v4, v6

    neg-int v4, v4

    invoke-interface {p1}, Lcom/amap/api/col/k;->h()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget-wide v6, v5, Lcom/amap/api/col/iv;->b:D

    double-to-int v5, v6

    neg-int v5, v5

    add-int/lit8 v5, v5, 0x2

    const/16 v6, 0x51

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/ag$a;-><init>(IILcom/amap/api/maps2d/a/h;III)V

    check-cast p1, Lcom/amap/api/col/ak;

    iput-object p1, p0, Lcom/amap/api/col/hw;->U:Lcom/amap/api/col/ak;

    iget-object v1, p0, Lcom/amap/api/col/hw;->g:Lcom/amap/api/col/ag;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/hw;->g:Lcom/amap/api/col/ag;

    iget-object v2, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/col/ag;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v4, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v4, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/amap/api/col/hw;->W:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Lcom/amap/api/col/k;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-interface {p1}, Lcom/amap/api/col/k;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    goto/16 :goto_2

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method public a(Lcom/amap/api/maps2d/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/hw;->L:Lcom/amap/api/maps2d/a$c;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/hw;->ai:Lcom/amap/api/maps2d/a$e;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/a$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/hw;->ah:Lcom/amap/api/maps2d/a$f;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/a$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/hw;->V:Lcom/amap/api/maps2d/a$j;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/a/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->n()Lcom/amap/api/col/as;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->n()Lcom/amap/api/col/as;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/as;->a(Lcom/amap/api/maps2d/a/l;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->I:Lcom/amap/api/col/hj;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/f;->a()Lcom/amap/api/a/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/hj;->a(Lcom/amap/api/a/k;)V

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->K()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/f;JLcom/amap/api/maps2d/a$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide v4, 0x412e848000000000L    # 1000000.0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/maps2d/f;->a()Lcom/amap/api/a/k;

    move-result-object v0

    iget-object v1, v0, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v2, Lcom/amap/api/a/k$a;->j:Lcom/amap/api/a/k$a;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/amap/api/col/bz;->a(II)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p1, p0, Lcom/amap/api/col/hw;->v:Lcom/amap/api/maps2d/f;

    iput-wide p2, p0, Lcom/amap/api/col/hw;->w:J

    iput-object p4, p0, Lcom/amap/api/col/hw;->x:Lcom/amap/api/maps2d/a$a;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    if-eqz v1, :cond_0

    if-eqz p4, :cond_3

    :try_start_0
    iput-object p4, p0, Lcom/amap/api/col/hw;->N:Lcom/amap/api/maps2d/a$a;

    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-virtual {v1}, Lcom/amap/api/col/z;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-virtual {v1}, Lcom/amap/api/col/z;->g()V

    :cond_4
    if-eqz p4, :cond_5

    iput-object p4, p0, Lcom/amap/api/col/hw;->N:Lcom/amap/api/maps2d/a$a;

    :cond_5
    iget-boolean v1, p0, Lcom/amap/api/col/hw;->J:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/col/hw;->K:Z

    :cond_6
    iget-object v1, v0, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v2, Lcom/amap/api/a/k$a;->h:Lcom/amap/api/a/k$a;

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->H()V

    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/hw;->o:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    iget v2, v0, Lcom/amap/api/a/k;->b:F

    float-to-int v2, v2

    iget v0, v0, Lcom/amap/api/a/k;->c:F

    float-to-int v0, v0

    long-to-int v3, p2

    invoke-virtual {v1, v2, v0, v3}, Lcom/amap/api/col/z;->a(III)V

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "animateCameraWithDurationAndCallback"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    :try_start_1
    iget-object v1, v0, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v2, Lcom/amap/api/a/k$a;->b:Lcom/amap/api/a/k$a;

    if-ne v1, v2, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/amap/api/col/z;->a(I)Z

    goto :goto_0

    :cond_8
    iget-object v1, v0, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v2, Lcom/amap/api/a/k$a;->e:Lcom/amap/api/a/k$a;

    if-ne v1, v2, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/amap/api/col/z;->b(I)Z

    goto/16 :goto_0

    :cond_9
    iget-object v1, v0, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v2, Lcom/amap/api/a/k$a;->f:Lcom/amap/api/a/k$a;

    if-ne v1, v2, :cond_a

    iget v0, v0, Lcom/amap/api/a/k;->d:F

    iget-object v1, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/col/z;->a(FI)F

    goto/16 :goto_0

    :cond_a
    iget-object v1, v0, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v2, Lcom/amap/api/a/k$a;->g:Lcom/amap/api/a/k$a;

    if-ne v1, v2, :cond_c

    iget v1, v0, Lcom/amap/api/a/k;->e:F

    iget-object v2, v0, Lcom/amap/api/a/k;->h:Landroid/graphics/Point;

    if-nez v2, :cond_b

    new-instance v2, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v3, v3, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v3}, Lcom/amap/api/col/am$d;->d()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    :cond_b
    const/4 v3, 0x1

    move-object v0, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/hw;->a(FLandroid/graphics/Point;ZJ)V

    goto/16 :goto_0

    :cond_c
    iget-object v1, v0, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v2, Lcom/amap/api/a/k$a;->i:Lcom/amap/api/a/k$a;

    if-ne v1, v2, :cond_d

    iget-object v0, v0, Lcom/amap/api/a/k;->f:Lcom/amap/api/maps2d/a/c;

    iget-object v1, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    iget v2, v0, Lcom/amap/api/maps2d/a/c;->b:F

    invoke-virtual {v1, v2}, Lcom/amap/api/col/z;->c(F)F

    iget-object v1, v0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v1, Lcom/amap/api/maps2d/a/h;->a:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-object v0, v0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v0, Lcom/amap/api/maps2d/a/h;->b:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iget-object v2, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    new-instance v3, Lcom/amap/api/col/f;

    invoke-direct {v3, v1, v0}, Lcom/amap/api/col/f;-><init>(II)V

    long-to-int v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/f;I)V

    goto/16 :goto_0

    :cond_d
    iget-object v1, v0, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v2, Lcom/amap/api/a/k$a;->c:Lcom/amap/api/a/k$a;

    if-ne v1, v2, :cond_e

    iget-object v0, v0, Lcom/amap/api/a/k;->f:Lcom/amap/api/maps2d/a/c;

    iget-object v1, v0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v1, Lcom/amap/api/maps2d/a/h;->a:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-object v0, v0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v0, Lcom/amap/api/maps2d/a/h;->b:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iget-object v2, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    new-instance v3, Lcom/amap/api/col/f;

    invoke-direct {v3, v1, v0}, Lcom/amap/api/col/f;-><init>(II)V

    long-to-int v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/f;I)V

    goto/16 :goto_0

    :cond_e
    iget-object v1, v0, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v2, Lcom/amap/api/a/k$a;->j:Lcom/amap/api/a/k$a;

    if-eq v1, v2, :cond_f

    iget-object v1, v0, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v2, Lcom/amap/api/a/k$a;->k:Lcom/amap/api/a/k$a;

    if-ne v1, v2, :cond_10

    :cond_f
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->H()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/amap/api/col/hw;->a(Lcom/amap/api/a/k;ZJ)V

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/a/k;->g:Z

    iget-object v1, p0, Lcom/amap/api/col/hw;->e:Lcom/amap/api/col/ac;

    check-cast v0, Lcom/amap/api/col/in;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/ac;->a(Lcom/amap/api/col/in;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/f;Lcom/amap/api/maps2d/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0xfa

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amap/api/col/hw;->a(Lcom/amap/api/maps2d/f;JLcom/amap/api/maps2d/a$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/hw;->G:Lcom/amap/api/maps2d/h;

    iget-object v0, p0, Lcom/amap/api/col/hw;->y:Lcom/amap/api/col/w;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hw;->y:Lcom/amap/api/col/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/w;->a(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->y:Lcom/amap/api/col/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/w;->a(Z)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public a(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/z;->b(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/hw;->aA:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amap/api/col/hw;->aB:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/amap/api/col/hw;->aB:F

    iget v0, p0, Lcom/amap/api/col/hw;->aC:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/amap/api/col/hw;->aC:F

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->invalidate()V

    iget-boolean v0, p0, Lcom/amap/api/col/hw;->aA:Z

    return v0
.end method

.method public a(FLandroid/graphics/PointF;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v3, "onScale"

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/hw;->h:Lcom/amap/api/col/s;

    invoke-interface {v2}, Lcom/amap/api/col/s;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v2

    const-string v4, "AMapDelegateImpGLSurfaceView"

    invoke-static {v2, v4, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v2, v2, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v2, v2, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iput-boolean v0, v2, Lcom/amap/api/col/am$a;->c:Z

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->H()V

    iget v2, p0, Lcom/amap/api/col/hw;->aB:F

    iget v3, p0, Lcom/amap/api/col/hw;->aC:F

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/amap/api/col/hw;->a(FLandroid/graphics/PointF;FF)V

    iput-boolean v0, p0, Lcom/amap/api/col/hw;->aA:Z

    const-wide/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lcom/amap/api/col/hw;->postInvalidateDelayed(J)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/am;->a(Z)V

    move v0, v1

    goto :goto_0
.end method

.method public a(Landroid/graphics/Matrix;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/graphics/PointF;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v3, "startScale"

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/hw;->h:Lcom/amap/api/col/s;

    invoke-interface {v2}, Lcom/amap/api/col/s;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v2

    const-string v4, "AMapDelegateImpGLSurfaceView"

    invoke-static {v2, v4, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->p()Lcom/amap/api/col/s;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/col/s;->d()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-boolean v2, p0, Lcom/amap/api/col/hw;->p:Z

    invoke-virtual {v0, v2}, Lcom/amap/api/col/am;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/am$a;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iput-boolean v1, v0, Lcom/amap/api/col/am$a;->c:Z

    :cond_2
    iput-boolean v1, p0, Lcom/amap/api/col/hw;->aA:Z

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->g:Lcom/amap/api/col/d;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/d;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected b(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getHeight()I

    move-result v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v4, v1, 0x1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    shr-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v6, v4

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    float-to-double v8, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->G()I

    move-result v3

    int-to-double v8, v3

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    shr-int/lit8 v1, v1, 0x1

    int-to-double v10, v1

    add-double/2addr v8, v10

    double-to-float v1, v8

    iput v1, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    shr-int/lit8 v1, v2, 0x1

    int-to-double v2, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public b()Lcom/amap/api/col/au;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->b:Lcom/amap/api/col/am$e;

    goto :goto_0
.end method

.method public b(Lcom/amap/api/maps2d/a/k;)Lcom/amap/api/maps2d/a/j;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Lcom/amap/api/col/ak;

    iget-object v1, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-direct {v2, p1, v1}, Lcom/amap/api/col/ak;-><init>(Lcom/amap/api/maps2d/a/k;Lcom/amap/api/col/ad;)V

    iget-object v1, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {v1, v2}, Lcom/amap/api/col/ad;->a(Lcom/amap/api/col/k;)V

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->invalidate()V

    new-instance v1, Lcom/amap/api/maps2d/a/j;

    invoke-direct {v1, v2}, Lcom/amap/api/maps2d/a/j;-><init>(Lcom/amap/api/a/e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AMapDelegateImpGLSurfaceView"

    const-string v3, "addMarker"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/hw;->az:F

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->E:Lcom/amap/api/col/bq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->E:Lcom/amap/api/col/bq;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/bq;->a(I)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->E:Lcom/amap/api/col/bq;

    invoke-virtual {v0}, Lcom/amap/api/col/bq;->invalidate()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->F:Lcom/amap/api/col/ax;

    invoke-virtual {v0}, Lcom/amap/api/col/ax;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->F:Lcom/amap/api/col/ax;

    invoke-virtual {v0}, Lcom/amap/api/col/ax;->invalidate()V

    :cond_0
    return-void
.end method

.method public b(Lcom/amap/api/maps2d/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/col/hw;->a(Lcom/amap/api/maps2d/f;Lcom/amap/api/maps2d/a$a;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/col/hw;->G:Lcom/amap/api/maps2d/h;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/hw;->G:Lcom/amap/api/maps2d/h;

    iget-object v1, p0, Lcom/amap/api/col/hw;->A:Lcom/amap/api/col/ib;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/h;->a(Lcom/amap/api/maps2d/h$a;)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->y:Lcom/amap/api/col/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/w;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->D:Lcom/amap/api/col/as;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/as;

    invoke-direct {v0, p0}, Lcom/amap/api/col/as;-><init>(Lcom/amap/api/col/h;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->D:Lcom/amap/api/col/as;

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hw;->h:Lcom/amap/api/col/s;

    invoke-interface {v0, p1}, Lcom/amap/api/col/s;->d(Z)V

    :cond_1
    iput-boolean p1, p0, Lcom/amap/api/col/hw;->C:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/hw;->D:Lcom/amap/api/col/as;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/hw;->D:Lcom/amap/api/col/as;

    invoke-virtual {v0}, Lcom/amap/api/col/as;->a()V

    iput-object v2, p0, Lcom/amap/api/col/hw;->D:Lcom/amap/api/col/as;

    :cond_3
    iput-object v2, p0, Lcom/amap/api/col/hw;->z:Landroid/location/Location;

    iget-object v0, p0, Lcom/amap/api/col/hw;->G:Lcom/amap/api/maps2d/h;

    invoke-interface {v0}, Lcom/amap/api/maps2d/h;->b()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->y:Lcom/amap/api/col/w;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/w;->a(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/hw;->y:Lcom/amap/api/col/w;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/w;->a(Z)V

    goto :goto_0
.end method

.method public b(FLandroid/graphics/PointF;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "endScale"

    iput-boolean v0, p0, Lcom/amap/api/col/hw;->aA:Z

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/hw;->h:Lcom/amap/api/col/s;

    invoke-interface {v2}, Lcom/amap/api/col/s;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/amap/api/col/im;->a()Lcom/amap/api/col/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/im;->b()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Landroid/graphics/Matrix;)Z
    .locals 3

    const-string v1, "onScale"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->h:Lcom/amap/api/col/s;

    invoke-interface {v0}, Lcom/amap/api/col/s;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->ay:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->postInvalidate()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/amap/api/col/k;)Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/hw;->U:Lcom/amap/api/col/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->U:Lcom/amap/api/col/ak;

    invoke-virtual {v0}, Lcom/amap/api/col/ak;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amap/api/col/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    const-string v2, "removeMarker"

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/ad;->a(Ljava/lang/String;)Lcom/amap/api/col/k;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/ad;->b(Lcom/amap/api/col/k;)Z

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string v3, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v3, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected c(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getHeight()I

    move-result v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v4, v1, 0x1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    shr-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v6, v4

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    float-to-double v8, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->G()I

    move-result v3

    int-to-double v8, v3

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    shr-int/lit8 v1, v1, 0x1

    int-to-double v10, v1

    add-double/2addr v8, v10

    double-to-float v1, v8

    iput v1, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    shr-int/lit8 v1, v2, 0x1

    int-to-double v2, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->f:Lcom/amap/api/col/br;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/br;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->f:Lcom/amap/api/col/br;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/col/br;->setVisibility(I)V

    goto :goto_0
.end method

.method public c(F)Z
    .locals 4

    const/4 v3, 0x0

    const-string v1, "onScale"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->h:Lcom/amap/api/col/s;

    invoke-interface {v0}, Lcom/amap/api/col/s;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/hw;->b(F)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/col/hw;->av:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/hw;->av:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lcom/amap/api/col/hw;->aw:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/amap/api/col/hw;->av:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lcom/amap/api/col/hw;->ax:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/amap/api/col/hw;->av:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/amap/api/col/hw;->aw:I

    iget-object v2, p0, Lcom/amap/api/col/hw;->av:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iput v2, p0, Lcom/amap/api/col/hw;->ax:I

    iget-object v2, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v2, v2, Lcom/amap/api/col/am;->b:Lcom/amap/api/col/am$e;

    iget-object v3, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v3, v3, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-object v3, v3, Lcom/amap/api/col/ah;->n:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v3, v3, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-object v3, v3, Lcom/amap/api/col/ah;->n:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/col/am$e;->a(II)Lcom/amap/api/col/f;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/hw;->av:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/amap/api/col/im;->a()Lcom/amap/api/col/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/im;->b()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->L:Lcom/amap/api/maps2d/a$c;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/hw;->T()Lcom/amap/api/maps2d/a/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/amap/api/col/hw;->a(ZLcom/amap/api/maps2d/a/c;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/col/am$d;->a(ZZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/am$d;->b(Lcom/amap/api/col/f;)V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    goto :goto_0
.end method

.method public d()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->k:Landroid/os/Handler;

    return-object v0
.end method

.method public d(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->y:Lcom/amap/api/col/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/w;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->y:Lcom/amap/api/col/w;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/col/w;->setVisibility(I)V

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->c()I

    move-result v0

    goto :goto_0
.end method

.method public e(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->H:Lcom/amap/api/col/iq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/iq;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->H:Lcom/amap/api/col/iq;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/col/iq;->setVisibility(I)V

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->d()I

    move-result v0

    goto :goto_0
.end method

.method public f(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->F:Lcom/amap/api/col/ax;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/ax;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->I()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->F:Lcom/amap/api/col/ax;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ax;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->F:Lcom/amap/api/col/ax;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/ax;->a(I)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->F:Lcom/amap/api/col/ax;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ax;->setVisibility(I)V

    goto :goto_0
.end method

.method public g()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/hw;->g:Lcom/amap/api/col/ag;

    return-object v0
.end method

.method public g(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->A()Z

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v1, v1, Lcom/amap/api/col/am$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/amap/api/col/am$a;->a(Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v1, v1, Lcom/amap/api/col/am$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/amap/api/col/am$a;->a(Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/col/am$d;->a(ZZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v1, v1, Lcom/amap/api/col/am$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/am$a;->a(Ljava/lang/String;)Lcom/amap/api/col/u;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v1, v1, Lcom/amap/api/col/am$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/amap/api/col/am$a;->a(Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/col/am$d;->a(ZZ)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/amap/api/col/u;

    iget-object v1, p0, Lcom/amap/api/col/hw;->O:Lcom/amap/api/col/ah;

    invoke-direct {v0, v1}, Lcom/amap/api/col/u;-><init>(Lcom/amap/api/col/ah;)V

    new-instance v1, Lcom/amap/api/col/bg;

    iget-object v2, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v3, p0, Lcom/amap/api/col/hw;->n:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v0}, Lcom/amap/api/col/bg;-><init>(Lcom/amap/api/col/am;Landroid/content/Context;Lcom/amap/api/col/u;)V

    iput-object v1, v0, Lcom/amap/api/col/u;->q:Lcom/amap/api/col/bg;

    new-instance v1, Lcom/amap/api/col/ia;

    invoke-direct {v1, p0}, Lcom/amap/api/col/ia;-><init>(Lcom/amap/api/col/hw;)V

    iput-object v1, v0, Lcom/amap/api/col/u;->j:Lcom/amap/api/col/bo;

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v1, v1, Lcom/amap/api/col/am$a;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/api/col/u;->b:Ljava/lang/String;

    iput-boolean v5, v0, Lcom/amap/api/col/u;->e:Z

    invoke-virtual {v0, v5}, Lcom/amap/api/col/u;->a(Z)V

    iput-boolean v5, v0, Lcom/amap/api/col/u;->f:Z

    sget v1, Lcom/amap/api/col/it;->d:I

    iput v1, v0, Lcom/amap/api/col/u;->c:I

    sget v1, Lcom/amap/api/col/it;->e:I

    iput v1, v0, Lcom/amap/api/col/u;->d:I

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/col/am$a;->a(Lcom/amap/api/col/u;Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v1, v1, Lcom/amap/api/col/am$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/amap/api/col/am$a;->a(Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/col/am$d;->a(ZZ)V

    goto/16 :goto_0
.end method

.method public h()F
    .locals 4

    const-string v2, "getZoomLevel"

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->e()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "AMapDelegateImpGLSurfaceView"

    invoke-static {v1, v3, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public i()Lcom/amap/api/maps2d/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/col/hw;->V()Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->h()F

    move-result v1

    invoke-static {}, Lcom/amap/api/maps2d/a/c;->a()Lcom/amap/api/maps2d/a/c$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/maps2d/a/c$a;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a/c$a;->a(F)Lcom/amap/api/maps2d/a/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a/c$a;->a()Lcom/amap/api/maps2d/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method public j()F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/amap/api/col/it;->d:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->a()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public k()F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/amap/api/col/it;->e:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->b()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public l()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "clear"

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->q()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->g:Lcom/amap/api/col/d;

    invoke-virtual {v0}, Lcom/amap/api/col/d;->a()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {v0}, Lcom/amap/api/col/ad;->c()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->i:Lcom/amap/api/col/be;

    invoke-virtual {v0}, Lcom/amap/api/col/be;->b()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->D:Lcom/amap/api/col/as;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hw;->D:Lcom/amap/api/col/as;

    invoke-virtual {v0}, Lcom/amap/api/col/as;->a()V

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "amapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMapDelegateImpGLSurfaceView clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public m()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/col/hw;->C:Z

    return v0
.end method

.method public n()Lcom/amap/api/col/as;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->D:Lcom/amap/api/col/as;

    return-object v0
.end method

.method public o()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/hw;->G:Lcom/amap/api/maps2d/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->A:Lcom/amap/api/col/ib;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->A:Lcom/amap/api/col/ib;

    iget-object v0, v0, Lcom/amap/api/col/ib;->a:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const-string v1, "onDoubleTap"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->h:Lcom/amap/api/col/s;

    invoke-interface {v0}, Lcom/amap/api/col/s;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/hw;->t:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/hw;->h:Lcom/amap/api/col/s;

    invoke-interface {v0}, Lcom/amap/api/col/s;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-virtual {v0}, Lcom/amap/api/col/z;->c()Z

    :cond_2
    :goto_1
    iget v0, p0, Lcom/amap/api/col/hw;->aL:I

    if-gt v0, v3, :cond_0

    iput-boolean v3, p0, Lcom/amap/api/col/hw;->aM:Z

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->f:Lcom/amap/api/col/br;

    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->e()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/col/br;->a(F)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/z;->c(II)Z

    goto :goto_1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/hw;->ad:Z

    iget-boolean v0, p0, Lcom/amap/api/col/hw;->aM:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hw;->M:Lcom/amap/api/col/il;

    invoke-virtual {v0}, Lcom/amap/api/col/il;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hw;->M:Lcom/amap/api/col/il;

    invoke-virtual {v0, v3}, Lcom/amap/api/col/il;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->N:Lcom/amap/api/maps2d/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->N:Lcom/amap/api/maps2d/a$a;

    invoke-interface {v0}, Lcom/amap/api/maps2d/a$a;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/hw;->N:Lcom/amap/api/maps2d/a$a;

    :cond_1
    iput-boolean v1, p0, Lcom/amap/api/col/hw;->aM:Z

    iput v1, p0, Lcom/amap/api/col/hw;->aL:I

    iget-object v0, p0, Lcom/amap/api/col/hw;->aq:Landroid/graphics/Point;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->aq:Landroid/graphics/Point;

    :goto_0
    return v3

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/hw;->aq:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/hw;->D()Landroid/graphics/Paint;

    move-result-object v5

    invoke-static {}, Lcom/amap/api/col/hw;->C()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_6

    move v13, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getTop()I

    move-result v2

    int-to-float v8, v2

    move v12, v0

    :goto_1
    if-ge v12, v13, :cond_0

    int-to-float v2, v12

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    int-to-float v4, v12

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v7, v12

    int-to-float v9, v12

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v10, v8, v0

    move-object v6, p1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit16 v0, v12, 0x100

    move v12, v0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/hw;->ab:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/col/hw;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->buildDrawingCache()V

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/hw;->k:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/amap/api/col/hw;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/hw;->ab:Z

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/am$d;->a(II)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v1, p0, Lcom/amap/api/col/hw;->ay:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/amap/api/col/hw;->aB:F

    iget v3, p0, Lcom/amap/api/col/hw;->aC:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amap/api/col/am$a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;FF)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/hw;->M:Lcom/amap/api/col/il;

    invoke-virtual {v0}, Lcom/amap/api/col/il;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/hw;->k:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    iget-boolean v0, p0, Lcom/amap/api/col/hw;->aj:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/hw;->k:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/hw;->aj:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "onDraw"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move v13, v2

    goto/16 :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    const/4 v9, 0x1

    const-string v1, "onFling"

    iget-object v0, p0, Lcom/amap/api/col/hw;->as:Lcom/amap/api/col/ar$a;

    iget-boolean v0, v0, Lcom/amap/api/col/ar$a;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/amap/api/col/hw;->as:Lcom/amap/api/col/ar$a;

    iget-wide v4, v0, Lcom/amap/api/col/ar$a;->o:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->invalidate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/hw;->ad:Z

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->h:Lcom/amap/api/col/s;

    invoke-interface {v0}, Lcom/amap/api/col/s;->c()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/hw;->N:Lcom/amap/api/maps2d/a$a;

    iget-object v0, p0, Lcom/amap/api/col/hw;->av:Landroid/widget/Scroller;

    iget v1, p0, Lcom/amap/api/col/hw;->aw:I

    iget v2, p0, Lcom/amap/api/col/hw;->ax:I

    neg-float v3, p3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    neg-float v4, p4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x5

    iget v5, p0, Lcom/amap/api/col/hw;->aD:I

    neg-int v5, v5

    iget v6, p0, Lcom/amap/api/col/hw;->aD:I

    iget v7, p0, Lcom/amap/api/col/hw;->aE:I

    neg-int v7, v7

    iget v8, p0, Lcom/amap/api/col/hw;->aE:I

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/amap/api/col/hw;->o:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v2, v2, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {v2, p1, p2}, Lcom/amap/api/col/am$a;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-virtual {v2, p0, p1, p2}, Lcom/amap/api/col/z;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/amap/api/col/hw;->o:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v2, v2, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {v2, p1, p2}, Lcom/amap/api/col/am$a;->b(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-virtual {v2, p0, p1, p2}, Lcom/amap/api/col/z;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/col/hw;->ad:Z

    iget-object v0, p0, Lcom/amap/api/col/hw;->ag:Lcom/amap/api/maps2d/a$g;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/col/iv;

    invoke-direct {v0}, Lcom/amap/api/col/iv;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/col/hw;->a(IILcom/amap/api/col/iv;)V

    iget-object v1, p0, Lcom/amap/api/col/hw;->ag:Lcom/amap/api/maps2d/a$g;

    new-instance v2, Lcom/amap/api/maps2d/a/h;

    iget-wide v4, v0, Lcom/amap/api/col/iv;->b:D

    iget-wide v6, v0, Lcom/amap/api/col/iv;->a:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/amap/api/maps2d/a$g;->a(Lcom/amap/api/maps2d/a/h;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/hw;->P:Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/ad;->a(Landroid/view/MotionEvent;)Lcom/amap/api/col/k;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/hw;->r:Lcom/amap/api/col/k;

    iget-object v0, p0, Lcom/amap/api/col/hw;->r:Lcom/amap/api/col/k;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/amap/api/maps2d/a/j;

    iget-object v1, p0, Lcom/amap/api/col/hw;->r:Lcom/amap/api/col/k;

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/a/j;-><init>(Lcom/amap/api/a/e;)V

    iput-object v0, p0, Lcom/amap/api/col/hw;->q:Lcom/amap/api/maps2d/a/j;

    iget-object v0, p0, Lcom/amap/api/col/hw;->ae:Lcom/amap/api/maps2d/a$k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hw;->r:Lcom/amap/api/col/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hw;->r:Lcom/amap/api/col/k;

    invoke-interface {v0}, Lcom/amap/api/col/k;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hw;->r:Lcom/amap/api/col/k;

    invoke-interface {v0}, Lcom/amap/api/col/k;->u()Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/hw;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/hw;->r:Lcom/amap/api/col/k;

    invoke-interface {v1, v0}, Lcom/amap/api/col/k;->a(Lcom/amap/api/maps2d/a/h;)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    iget-object v1, p0, Lcom/amap/api/col/hw;->r:Lcom/amap/api/col/k;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ad;->c(Lcom/amap/api/col/k;)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->ae:Lcom/amap/api/maps2d/a$k;

    iget-object v1, p0, Lcom/amap/api/col/hw;->q:Lcom/amap/api/maps2d/a/j;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/a$k;->a(Lcom/amap/api/maps2d/a/j;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/hw;->ac:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v1, "onScroll"

    iget-object v0, p0, Lcom/amap/api/col/hw;->as:Lcom/amap/api/col/ar$a;

    iget-boolean v0, v0, Lcom/amap/api/col/ar$a;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/amap/api/col/hw;->as:Lcom/amap/api/col/ar$a;

    iget-wide v4, v0, Lcom/amap/api/col/ar$a;->o:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->h:Lcom/amap/api/col/s;

    invoke-interface {v0}, Lcom/amap/api/col/s;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/hw;->ad:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/amap/api/col/hw;->aL:I

    if-le v0, v6, :cond_3

    iput-boolean v7, p0, Lcom/amap/api/col/hw;->ad:Z

    goto :goto_0

    :cond_3
    iput-boolean v6, p0, Lcom/amap/api/col/hw;->ad:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/amap/api/col/hw;->a(II)V

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->postInvalidate()V

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->H()V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "onSingleTapConfirmed"

    iget-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/am$a;->b(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/amap/api/col/hw;->at:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/amap/api/col/hw;->ad:Z

    iget-boolean v0, p0, Lcom/amap/api/col/hw;->P:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/amap/api/col/hw;->P:Z

    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v4, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v0, v2, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v0, v4, v5}, Lcom/amap/api/col/ad;->a(Landroid/graphics/Rect;II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/hw;->S:Lcom/amap/api/maps2d/a$d;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {v0}, Lcom/amap/api/col/ad;->e()Lcom/amap/api/col/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/k;->q()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/amap/api/maps2d/a/j;

    invoke-direct {v2, v0}, Lcom/amap/api/maps2d/a/j;-><init>(Lcom/amap/api/a/e;)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->S:Lcom/amap/api/maps2d/a$d;

    invoke-interface {v0, v2}, Lcom/amap/api/maps2d/a$d;->a(Lcom/amap/api/maps2d/a/j;)V

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/ad;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {v0}, Lcom/amap/api/col/ad;->e()Lcom/amap/api/col/k;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/amap/api/col/k;->q()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/amap/api/maps2d/a/j;

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/a/j;-><init>(Lcom/amap/api/a/e;)V

    iget-object v4, p0, Lcom/amap/api/col/hw;->V:Lcom/amap/api/maps2d/a$j;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/amap/api/col/hw;->V:Lcom/amap/api/maps2d/a$j;

    invoke-interface {v4, v0}, Lcom/amap/api/maps2d/a$j;->a(Lcom/amap/api/maps2d/a/j;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {v0}, Lcom/amap/api/col/ad;->b()I

    move-result v0

    if-gtz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/ad;->c(Lcom/amap/api/col/k;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    goto/16 :goto_0

    :cond_9
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {v0}, Lcom/amap/api/col/ad;->e()Lcom/amap/api/col/k;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Lcom/amap/api/col/k;->w()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {v2}, Lcom/amap/api/col/k;->u()Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v4, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-static {v0}, Lcom/amap/api/col/bz;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/col/f;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/f;)V

    invoke-static {}, Lcom/amap/api/col/im;->a()Lcom/amap/api/col/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/im;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    :goto_2
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/amap/api/col/hw;->a(Lcom/amap/api/col/k;)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/ad;->c(Lcom/amap/api/col/k;)V

    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v4, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v4, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_b
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/hw;->ai:Lcom/amap/api/maps2d/a$e;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/amap/api/col/iv;

    invoke-direct {v0}, Lcom/amap/api/col/iv;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v4, v0}, Lcom/amap/api/col/hw;->a(IILcom/amap/api/col/iv;)V

    iget-object v2, p0, Lcom/amap/api/col/hw;->ai:Lcom/amap/api/maps2d/a$e;

    new-instance v4, Lcom/amap/api/maps2d/a/h;

    iget-wide v6, v0, Lcom/amap/api/col/iv;->b:D

    iget-wide v8, v0, Lcom/amap/api/col/iv;->a:D

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    invoke-interface {v2, v4}, Lcom/amap/api/maps2d/a$e;->a(Lcom/amap/api/maps2d/a/h;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_c
    move v0, v1

    goto/16 :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance v0, Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/ah;->a(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/col/am$d;->a(II)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-virtual {v0}, Lcom/amap/api/col/z;->a()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-virtual {v0}, Lcom/amap/api/col/z;->b()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    iget-object v1, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-virtual {v1}, Lcom/amap/api/col/z;->a()F

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-virtual {v2}, Lcom/amap/api/col/z;->b()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/z;->a(FF)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-virtual {v0, v3}, Lcom/amap/api/col/z;->a(F)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    invoke-virtual {v0, v3}, Lcom/amap/api/col/z;->b(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/hw;->r()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->aN:Lcom/amap/api/col/hw$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hw;->aN:Lcom/amap/api/col/hw$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amap/api/col/hw$a;->a(IIII)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/amap/api/col/it;->r:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/hw;->o:Z

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/hw;->af:Lcom/amap/api/maps2d/a$i;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/hw;->ap:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/amap/api/col/hw;->ap:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {v1, p1}, Lcom/amap/api/col/am$a;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/amap/api/col/hw;->b(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public p()Lcom/amap/api/col/s;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/hw;->h:Lcom/amap/api/col/s;

    return-object v0
.end method

.method public q()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->g:Lcom/amap/api/col/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->g:Lcom/amap/api/col/ag;

    iget-object v1, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ag;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iput-object v2, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    :cond_2
    iput-object v2, p0, Lcom/amap/api/col/hw;->U:Lcom/amap/api/col/ak;

    return-void
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hw;->U:Lcom/amap/api/col/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hw;->R:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/ag$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/hw;->U:Lcom/amap/api/col/ak;

    invoke-virtual {v1}, Lcom/amap/api/col/ak;->u()Lcom/amap/api/maps2d/a/h;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/ag$a;->b:Lcom/amap/api/maps2d/a/h;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->g:Lcom/amap/api/col/ag;

    invoke-virtual {v0}, Lcom/amap/api/col/ag;->a()V

    :cond_1
    return-void
.end method

.method public s()V
    .locals 3

    const-string v1, "destroy"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->al:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->al:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/hw;->al:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->an:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hw;->an:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/hw;->an:Ljava/util/TimerTask;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->ap:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/hw;->ap:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/hw;->k:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/hw;->k:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/hw;->am:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/hw;->am:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/hw;->am:Ljava/lang/Thread;

    :cond_4
    invoke-static {}, Lcom/amap/api/col/io;->a()Lcom/amap/api/col/io;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/io;->b(Lcom/amap/api/col/io$a;)V

    invoke-static {}, Lcom/amap/api/col/ay;->a()Lcom/amap/api/col/ay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/ay;->a(Lcom/amap/api/col/ay$a;)V

    invoke-static {}, Lcom/amap/api/col/im;->a()Lcom/amap/api/col/im;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/im;->b(Lcom/amap/api/col/im$a;)V

    iget-object v0, p0, Lcom/amap/api/col/hw;->f:Lcom/amap/api/col/br;

    invoke-virtual {v0}, Lcom/amap/api/col/br;->a()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->F:Lcom/amap/api/col/ax;

    invoke-virtual {v0}, Lcom/amap/api/col/ax;->a()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->E:Lcom/amap/api/col/bq;

    invoke-virtual {v0}, Lcom/amap/api/col/bq;->a()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->y:Lcom/amap/api/col/w;

    invoke-virtual {v0}, Lcom/amap/api/col/w;->a()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->H:Lcom/amap/api/col/iq;

    invoke-virtual {v0}, Lcom/amap/api/col/iq;->a()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->g:Lcom/amap/api/col/d;

    invoke-virtual {v0}, Lcom/amap/api/col/d;->b()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {v0}, Lcom/amap/api/col/ad;->f()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->W:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/hw;->W:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/hw;->g:Lcom/amap/api/col/ag;

    invoke-virtual {v0}, Lcom/amap/api/col/ag;->removeAllViews()V

    invoke-virtual {p0}, Lcom/amap/api/col/hw;->q()V

    iget-object v0, p0, Lcom/amap/api/col/hw;->i:Lcom/amap/api/col/be;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/hw;->i:Lcom/amap/api/col/be;

    invoke-virtual {v0}, Lcom/amap/api/col/be;->e()V

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->d:Lcom/amap/api/col/am$b;

    invoke-virtual {v0}, Lcom/amap/api/col/am$b;->b()V

    invoke-direct {p0}, Lcom/amap/api/col/hw;->Q()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/hw;->G:Lcom/amap/api/maps2d/h;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/hw;->ai:Lcom/amap/api/maps2d/a$e;

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/col/it;->i:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/col/it;->h:Ljava/lang/String;

    invoke-static {}, Lcom/amap/api/col/dq;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/hw;->o:Z

    invoke-super {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public t()Lcom/amap/api/maps2d/a/i;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->d:Lcom/amap/api/col/am$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->d:Lcom/amap/api/col/am$b;

    invoke-virtual {v0}, Lcom/amap/api/col/am$b;->c()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->i:Lcom/amap/api/col/be;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hw;->i:Lcom/amap/api/col/be;

    invoke-virtual {v0}, Lcom/amap/api/col/be;->d()V

    :cond_1
    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->d:Lcom/amap/api/col/am$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->d:Lcom/amap/api/col/am$b;

    invoke-virtual {v0}, Lcom/amap/api/col/am$b;->d()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hw;->i:Lcom/amap/api/col/be;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hw;->i:Lcom/amap/api/col/be;

    invoke-virtual {v0}, Lcom/amap/api/col/be;->c()V

    :cond_1
    return-void
.end method

.method w()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->E:Lcom/amap/api/col/bq;

    invoke-virtual {v0}, Lcom/amap/api/col/bq;->c()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/hw;->p:Z

    return v0
.end method

.method public y()Lcom/amap/api/col/f;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->f()Lcom/amap/api/col/f;

    move-result-object v0

    goto :goto_0
.end method

.method public z()Lcom/amap/api/col/z;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    return-object v0
.end method
