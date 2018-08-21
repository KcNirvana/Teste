.class public Lcom/sdu/didi/uuid/a;
.super Ljava/lang/Object;


# static fields
.field private static G:Landroid/app/Activity;

.field private static a:Lcom/sdu/didi/uuid/a;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/lang/Object;

.field private F:Z

.field private H:Landroid/hardware/SensorEventListener;

.field private I:Landroid/hardware/SensorEventListener;

.field private J:Landroid/hardware/SensorEventListener;

.field private K:Landroid/hardware/SensorEventListener;

.field private L:Landroid/hardware/SensorEventListener;

.field private M:Landroid/hardware/SensorEventListener;

.field private N:Landroid/hardware/SensorEventListener;

.field private O:Landroid/hardware/SensorEventListener;

.field private P:Landroid/location/GpsStatus$Listener;

.field private b:Landroid/hardware/SensorManager;

.field private c:Landroid/location/LocationManager;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdu/didi/uuid/a;->D:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sdu/didi/uuid/a;->E:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->F:Z

    new-instance v0, Lcom/sdu/didi/uuid/a$3;

    invoke-direct {v0, p0}, Lcom/sdu/didi/uuid/a$3;-><init>(Lcom/sdu/didi/uuid/a;)V

    iput-object v0, p0, Lcom/sdu/didi/uuid/a;->H:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/sdu/didi/uuid/a$4;

    invoke-direct {v0, p0}, Lcom/sdu/didi/uuid/a$4;-><init>(Lcom/sdu/didi/uuid/a;)V

    iput-object v0, p0, Lcom/sdu/didi/uuid/a;->I:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/sdu/didi/uuid/a$5;

    invoke-direct {v0, p0}, Lcom/sdu/didi/uuid/a$5;-><init>(Lcom/sdu/didi/uuid/a;)V

    iput-object v0, p0, Lcom/sdu/didi/uuid/a;->J:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/sdu/didi/uuid/a$6;

    invoke-direct {v0, p0}, Lcom/sdu/didi/uuid/a$6;-><init>(Lcom/sdu/didi/uuid/a;)V

    iput-object v0, p0, Lcom/sdu/didi/uuid/a;->K:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/sdu/didi/uuid/a$7;

    invoke-direct {v0, p0}, Lcom/sdu/didi/uuid/a$7;-><init>(Lcom/sdu/didi/uuid/a;)V

    iput-object v0, p0, Lcom/sdu/didi/uuid/a;->L:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/sdu/didi/uuid/a$8;

    invoke-direct {v0, p0}, Lcom/sdu/didi/uuid/a$8;-><init>(Lcom/sdu/didi/uuid/a;)V

    iput-object v0, p0, Lcom/sdu/didi/uuid/a;->M:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/sdu/didi/uuid/a$9;

    invoke-direct {v0, p0}, Lcom/sdu/didi/uuid/a$9;-><init>(Lcom/sdu/didi/uuid/a;)V

    iput-object v0, p0, Lcom/sdu/didi/uuid/a;->N:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/sdu/didi/uuid/a$10;

    invoke-direct {v0, p0}, Lcom/sdu/didi/uuid/a$10;-><init>(Lcom/sdu/didi/uuid/a;)V

    iput-object v0, p0, Lcom/sdu/didi/uuid/a;->O:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/sdu/didi/uuid/a$2;

    invoke-direct {v0, p0}, Lcom/sdu/didi/uuid/a$2;-><init>(Lcom/sdu/didi/uuid/a;)V

    iput-object v0, p0, Lcom/sdu/didi/uuid/a;->P:Landroid/location/GpsStatus$Listener;

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sdu/didi/uuid/a;->c:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic a(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->d:F

    return p1
.end method

.method public static declared-synchronized a(Landroid/app/Activity;)Lcom/sdu/didi/uuid/a;
    .locals 2

    const-class v1, Lcom/sdu/didi/uuid/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sdu/didi/uuid/a;->a:Lcom/sdu/didi/uuid/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sdu/didi/uuid/a;

    invoke-direct {v0, p0}, Lcom/sdu/didi/uuid/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sdu/didi/uuid/a;->a:Lcom/sdu/didi/uuid/a;

    :cond_0
    sput-object p0, Lcom/sdu/didi/uuid/a;->G:Landroid/app/Activity;

    sget-object v0, Lcom/sdu/didi/uuid/a;->a:Lcom/sdu/didi/uuid/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/sdu/didi/uuid/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->C:Z

    return v0
.end method

.method static synthetic a(Lcom/sdu/didi/uuid/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sdu/didi/uuid/a;->C:Z

    return p1
.end method

.method static synthetic b(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->e:F

    return p1
.end method

.method static synthetic b(Lcom/sdu/didi/uuid/a;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic c(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->f:F

    return p1
.end method

.method static synthetic c(Lcom/sdu/didi/uuid/a;)Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->O:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic d(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->g:F

    return p1
.end method

.method static synthetic d(Lcom/sdu/didi/uuid/a;)Landroid/location/GpsStatus$Listener;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->P:Landroid/location/GpsStatus$Listener;

    return-object v0
.end method

.method static synthetic e(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->h:F

    return p1
.end method

.method static synthetic e(Lcom/sdu/didi/uuid/a;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->c:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic f(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->i:F

    return p1
.end method

.method static synthetic f(Lcom/sdu/didi/uuid/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->E:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->j:F

    return p1
.end method

.method static synthetic g(Lcom/sdu/didi/uuid/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->D:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->k:F

    return p1
.end method

.method static synthetic i(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->l:F

    return p1
.end method

.method static synthetic j(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->m:F

    return p1
.end method

.method static synthetic k(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->n:F

    return p1
.end method

.method static synthetic l(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->o:F

    return p1
.end method

.method static synthetic m(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->p:F

    return p1
.end method

.method static synthetic n(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->q:F

    return p1
.end method

.method static synthetic o(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->r:F

    return p1
.end method

.method static synthetic p(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->s:F

    return p1
.end method

.method static synthetic q(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->t:F

    return p1
.end method

.method static synthetic r(Lcom/sdu/didi/uuid/a;F)F
    .locals 0

    iput p1, p0, Lcom/sdu/didi/uuid/a;->u:F

    return p1
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->F:Z

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/util/List;

    const/4 v0, 0x0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->v:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x0

    aget-object v0, v1, v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sdu/didi/uuid/a;->H:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->v:Z

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->w:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    aget-object v0, v1, v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sdu/didi/uuid/a;->I:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->w:Z

    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->x:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x0

    aget-object v0, v1, v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sdu/didi/uuid/a;->J:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->x:Z

    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->y:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    aget-object v0, v1, v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sdu/didi/uuid/a;->K:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->y:Z

    :cond_4
    :goto_4
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->z:Z

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x0

    aget-object v0, v1, v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sdu/didi/uuid/a;->L:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->z:Z

    :cond_5
    :goto_5
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->A:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    aget-object v0, v1, v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sdu/didi/uuid/a;->M:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->A:Z

    :cond_6
    :goto_6
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->B:Z

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x0

    aget-object v0, v1, v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sdu/didi/uuid/a;->N:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->B:Z

    :cond_7
    :goto_7
    sget-object v0, Lcom/sdu/didi/uuid/a;->G:Landroid/app/Activity;

    new-instance v2, Lcom/sdu/didi/uuid/a$1;

    invoke-direct {v2, p0, v1}, Lcom/sdu/didi/uuid/a$1;-><init>(Lcom/sdu/didi/uuid/a;[Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->v:Z

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->w:Z

    goto/16 :goto_2

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->x:Z

    goto/16 :goto_3

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->y:Z

    goto/16 :goto_4

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->z:Z

    goto/16 :goto_5

    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->A:Z

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->B:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 12

    :try_start_0
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->v:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "accelerometerX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "accelerometerY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->e:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "accelerometerZ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->f:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->w:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "orientationYaw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->g:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "orientationPitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->h:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "orientationRoll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->i:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->x:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "gravityX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->j:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "gravityY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->k:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "gravityZ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->l:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->y:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "light"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->m:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->z:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "gyroscopeX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->n:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "gyroscopeY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->o:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "gyroscopeZ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->p:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->A:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "proximity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->q:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->B:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "pressValue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->r:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->C:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "rotationVectorX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->s:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "rotationVectorY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->t:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "rotationVectorZ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sdu/didi/uuid/a;->u:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v2, p0, Lcom/sdu/didi/uuid/a;->E:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_8

    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v6

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v7

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v8

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v0

    const-string/jumbo v9, "az"

    float-to-double v10, v6

    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v6, "el"

    float-to-double v10, v7

    invoke-virtual {v5, v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v6, "prn"

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v6, "snr"

    float-to-double v8, v0

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "sat"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    monitor-exit v2

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sdu/didi/uuid/a;->H:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->v:Z

    :cond_1
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->w:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sdu/didi/uuid/a;->I:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->w:Z

    :cond_2
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->x:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sdu/didi/uuid/a;->J:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->x:Z

    :cond_3
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->y:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sdu/didi/uuid/a;->K:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->y:Z

    :cond_4
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->z:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sdu/didi/uuid/a;->L:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->z:Z

    :cond_5
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->A:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sdu/didi/uuid/a;->M:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->A:Z

    :cond_6
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->B:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sdu/didi/uuid/a;->N:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->B:Z

    :cond_7
    iget-boolean v0, p0, Lcom/sdu/didi/uuid/a;->C:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sdu/didi/uuid/a;->O:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->C:Z

    :cond_8
    iget-object v0, p0, Lcom/sdu/didi/uuid/a;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sdu/didi/uuid/a;->P:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdu/didi/uuid/a;->F:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
