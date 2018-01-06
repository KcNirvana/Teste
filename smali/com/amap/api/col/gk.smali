.class public Lcom/amap/api/col/gk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/gk$a;,
        Lcom/amap/api/col/gk$c;,
        Lcom/amap/api/col/gk$b;
    }
.end annotation


# static fields
.field private static S:J

.field private static volatile T:J

.field static v:I

.field static w:J

.field static x:J

.field static y:I


# instance fields
.field private volatile A:Landroid/content/Context;

.field private B:Landroid/net/ConnectivityManager;

.field private volatile C:Lcom/amap/api/col/gx;

.field private volatile D:Lcom/amap/api/col/gw;

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private volatile F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/gk$a;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/gk$a;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lcom/amap/api/col/gk$c;

.field private volatile K:Landroid/net/wifi/WifiInfo;

.field private L:Lorg/json/JSONObject;

.field private volatile M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

.field private volatile N:J

.field private O:J

.field private P:J

.field private volatile Q:Z

.field private R:Z

.field private U:I

.field private volatile V:Ljava/lang/String;

.field private W:Lcom/amap/api/col/hk;

.field private volatile X:Ljava/util/Timer;

.field private volatile Y:Ljava/util/TimerTask;

.field private Z:I

.field a:Ljava/lang/Object;

.field private aa:Ljava/lang/Object;

.field private volatile ab:Ljava/lang/Object;

.field private ac:Z

.field private ad:Z

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private ag:J

.field private volatile ah:J

.field private volatile ai:Ljava/lang/String;

.field private aj:Lcom/amap/api/col/gv;

.field private ak:Lcom/amap/api/col/hg;

.field private al:Ljava/lang/StringBuilder;

.field private am:Z

.field private an:Z

.field private volatile ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Ljava/lang/String;

.field private au:Ljava/lang/String;

.field private av:Z

.field private aw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/amap/api/col/gm;

.field c:Z

.field d:Ljava/lang/Object;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field h:Landroid/bluetooth/BluetoothAdapter;

.field i:Z

.field j:Lcom/amap/api/col/gk$b;

.field k:Z

.field volatile l:Z

.field m:I

.field n:Z

.field o:Ljava/lang/StringBuilder;

.field p:Ljava/lang/StringBuilder;

.field q:Ljava/lang/String;

.field r:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field s:Z

.field t:Z

.field u:Z

.field z:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, -0x1

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/amap/api/col/gk;->S:J

    sput-wide v0, Lcom/amap/api/col/gk;->T:J

    sput v2, Lcom/amap/api/col/gk;->v:I

    sput-wide v0, Lcom/amap/api/col/gk;->w:J

    sput-wide v0, Lcom/amap/api/col/gk;->x:J

    sput v2, Lcom/amap/api/col/gk;->y:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    iput-object v1, p0, Lcom/amap/api/col/gk;->B:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    iput-object v1, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/gk;->F:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/gk;->G:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/gk;->H:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/gk;->I:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/gk;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/amap/api/col/gk;->J:Lcom/amap/api/col/gk$c;

    iput-object v1, p0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    iput-object v1, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iput-wide v4, p0, Lcom/amap/api/col/gk;->N:J

    iput-wide v4, p0, Lcom/amap/api/col/gk;->O:J

    iput-wide v4, p0, Lcom/amap/api/col/gk;->P:J

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->Q:Z

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->R:Z

    iput v2, p0, Lcom/amap/api/col/gk;->U:I

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/amap/api/col/gk;->V:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iput-object v1, p0, Lcom/amap/api/col/gk;->X:Ljava/util/Timer;

    iput-object v1, p0, Lcom/amap/api/col/gk;->Y:Ljava/util/TimerTask;

    iput v2, p0, Lcom/amap/api/col/gk;->Z:I

    iput-object v1, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;

    iput-object v1, p0, Lcom/amap/api/col/gk;->ab:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->ac:Z

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->ad:Z

    iput-object v1, p0, Lcom/amap/api/col/gk;->ae:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/gk;->af:Ljava/lang/String;

    iput-wide v4, p0, Lcom/amap/api/col/gk;->ag:J

    iput-wide v4, p0, Lcom/amap/api/col/gk;->ah:J

    iput-object v1, p0, Lcom/amap/api/col/gk;->ai:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/gk;->aj:Lcom/amap/api/col/gv;

    iput-object v1, p0, Lcom/amap/api/col/gk;->ak:Lcom/amap/api/col/hg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->c:Z

    iput-boolean v3, p0, Lcom/amap/api/col/gk;->am:Z

    iput-boolean v3, p0, Lcom/amap/api/col/gk;->an:Z

    iput-boolean v3, p0, Lcom/amap/api/col/gk;->ao:Z

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->ap:Z

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->aq:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/gk;->d:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->e:Z

    const-string v0, "com.data.carrier_v4.CollectorManager"

    iput-object v0, p0, Lcom/amap/api/col/gk;->f:Ljava/lang/String;

    const-string v0, "com.autonavi.aps.amapapi.offline.Off"

    iput-object v0, p0, Lcom/amap/api/col/gk;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/gk;->h:Landroid/bluetooth/BluetoothAdapter;

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->i:Z

    iput-object v1, p0, Lcom/amap/api/col/gk;->j:Lcom/amap/api/col/gk$b;

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->k:Z

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->ar:Z

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->as:Z

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->l:Z

    const/16 v0, 0xc

    iput v0, p0, Lcom/amap/api/col/gk;->m:I

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->n:Z

    iput-object v1, p0, Lcom/amap/api/col/gk;->o:Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcom/amap/api/col/gk;->p:Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcom/amap/api/col/gk;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/gk;->r:Ljava/util/TreeMap;

    iput-boolean v3, p0, Lcom/amap/api/col/gk;->s:Z

    iput-boolean v3, p0, Lcom/amap/api/col/gk;->t:Z

    iput-boolean v3, p0, Lcom/amap/api/col/gk;->u:Z

    iput-object v1, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/gk;->au:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->av:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/gk;->aw:Ljava/util/Map;

    return-void
.end method

.method private A()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;

    const-string v2, "isStarted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private B()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/amap/api/col/gk;->y()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/amap/api/col/hl;->u()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/amap/api/col/gk;->D()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v3, "coll"

    invoke-static {v2, v3}, Lcom/amap/api/col/hu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v3, "coll"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    move v1, v0

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/amap/api/col/gk;->D()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "APS"

    const-string v3, "start3rdCM"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/amap/api/col/gk;->z()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/col/gk;->C()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;

    const-string v1, "start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v0, :cond_0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APS"

    const-string v2, "start3rdCM"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private C()V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/gk;->y()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/gk;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/gk;->F()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0
.end method

.method private D()V
    .locals 3

    invoke-direct {p0}, Lcom/amap/api/col/gk;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/gk;->z()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x14

    sput v0, Lcom/amap/api/col/dh;->f:I

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;

    const-string v1, "destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "stop3rdCM"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private E()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/gk;->V:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/gk;->V:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/da;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "smac"

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "APS"

    const-string v4, "setSmac"

    invoke-static {v1, v3, v4}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private F()I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;

    const-string v2, "getLeftUploadNum"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized G()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->Y:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->Y:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->Y:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->X:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/gk;->X:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/amap/api/col/gk;->X:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->X:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private H()Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->B:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    iget-object v1, p0, Lcom/amap/api/col/gk;->B:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/gx;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private I()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;

    const-string v2, "getInnerString"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "version"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "APS"

    const-string v3, "getCollVer"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private J()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/gk;->ac:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    iget-boolean v1, p0, Lcom/amap/api/col/gk;->ac:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/col/gx;->a(Z)V

    goto :goto_0
.end method

.method private K()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/col/gk;->ai:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/col/gk;->b(Lorg/json/JSONObject;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/gk;->ah:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/gk;->N:J

    invoke-static {}, Lcom/amap/api/col/gr;->a()Lcom/amap/api/col/gr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/gr;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "cleanCache"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private L()Z
    .locals 1

    invoke-static {}, Lcom/amap/api/col/hl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->ab:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/hl;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/amap/api/col/gk;->T:J

    return-wide p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/gk;->L()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/gk;->ab:Ljava/lang/Object;

    const-string v1, "getPureOfflineLocation"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    :try_start_2
    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v3, ""

    invoke-direct {v1, v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->b(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_0
    move-object v0, v2

    goto :goto_1
.end method

.method private a(ZZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v6, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v0, ""

    invoke-direct {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/amap/api/col/gk;->n:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->n:Z

    :goto_0
    return-object v6

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/gk;->N:J

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    const-string v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/gk;->s()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v9, Lcom/amap/api/col/hi;

    invoke-direct {v9}, Lcom/amap/api/col/hi;-><init>()V

    const/4 v8, 0x0

    const-string v7, ""

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    invoke-virtual {v0}, Lcom/amap/api/col/hk;->a()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/gk;->ak:Lcom/amap/api/col/hg;

    iget-object v1, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    invoke-static {}, Lcom/amap/api/col/dh;->a()Ljava/lang/String;

    move-result-object v4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/hg;->a(Landroid/content/Context;Lorg/json/JSONObject;[BLjava/lang/String;Z)Lcom/amap/api/col/fv;

    move-result-object v3

    iget-object v0, p0, Lcom/amap/api/col/gk;->ak:Lcom/amap/api/col/hg;

    invoke-virtual {v0}, Lcom/amap/api/col/hg;->a()I

    move-result v4

    if-eqz v3, :cond_1b

    iget-object v1, v3, Lcom/amap/api/col/fv;->a:[B

    iget-object v0, v3, Lcom/amap/api/col/fv;->c:Ljava/lang/String;

    move-object v2, v0

    move-object v0, v1

    :goto_1
    int-to-long v10, v4

    invoke-virtual {v6, v10, v11}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    if-nez p1, :cond_1a

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_4

    :cond_2
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    const-string v1, "please check the network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " #csid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get parames error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APS"

    const-string v2, "getApsLoc buildV4Dot2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v6, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildV4Dot2 error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "APS"

    const-string v2, "getApsLoc req"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    const-string v1, "please check the network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance v1, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v1, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v5, "\"status\":\"0\""

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-virtual {v9, v1, v0, v3}, Lcom/amap/api/col/hi;->a(Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/col/fv;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    iget-object v0, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V

    int-to-long v0, v4

    invoke-virtual {v6, v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(J)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "</body></html>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    invoke-direct {p0}, Lcom/amap/api/col/gk;->H()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    const-string v1, "make sure you are logged in to the network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " #csid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    const-string v1, "request may be intercepted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    invoke-static {v0}, Lcom/amap/api/col/gy;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    const-string v1, "decrypt response data error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " #csid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v9, v0}, Lcom/amap/api/col/hi;->a([B)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v1

    if-nez v1, :cond_c

    new-instance v6, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v0, ""

    invoke-direct {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    const-string v1, "location is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " #csid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V

    :try_start_3
    const-string v0, "-1"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v0

    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_10

    iget-boolean v0, p0, Lcom/amap/api/col/gk;->i:Z

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/amap/api/col/gk;->m()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/col/gk;->j:Lcom/amap/api/col/gk$b;

    if-nez v0, :cond_d

    new-instance v0, Lcom/amap/api/col/gk$b;

    invoke-direct {v0, p0}, Lcom/amap/api/col/gk$b;-><init>(Lcom/amap/api/col/gk;)V

    iput-object v0, p0, Lcom/amap/api/col/gk;->j:Lcom/amap/api/col/gk$b;

    :cond_d
    iget-object v0, p0, Lcom/amap/api/col/gk;->h:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/amap/api/col/gk;->j:Lcom/amap/api/col/gk$b;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->i:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_e
    :goto_3
    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(J)V

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " #csid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    :cond_f
    move-object v6, v1

    goto/16 :goto_0

    :cond_10
    :try_start_4
    invoke-direct {p0}, Lcom/amap/api/col/gk;->o()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_11
    invoke-static {v1}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->e()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_12

    :cond_12
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "-5"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "1"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "2"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "14"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "24"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "-1"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_13
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    :goto_4
    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " #csid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    :cond_15
    iget-boolean v0, p0, Lcom/amap/api/col/gk;->an:Z

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setOffset(Z)V

    iget-boolean v0, p0, Lcom/amap/api/col/gk;->am:Z

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(Z)V

    move-object v0, v1

    :goto_5
    move-object v6, v0

    goto/16 :goto_0

    :cond_16
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gk;->ae:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v3, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location faile retype:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " rdesc:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/amap/api/col/gk;->ae:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/amap/api/col/gk;->ae:Ljava/lang/String;

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " #csid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget-object v0, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    move-object v6, v1

    goto/16 :goto_0

    :cond_18
    const-string v0, "null"

    goto :goto_6

    :cond_19
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    goto/16 :goto_4

    :cond_1a
    move-object v0, v6

    goto :goto_5

    :cond_1b
    move-object v2, v7

    move-object v0, v8

    goto/16 :goto_1
.end method

.method private a(III)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "d"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "u"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([B)Ljava/lang/String;
    .locals 10

    const/16 v5, 0x10

    const/4 v2, 0x6

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x1

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v3, 0x18

    if-gt v0, v3, :cond_2

    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    aget-byte v0, p1, v1

    if-ne v0, v4, :cond_8

    aget-byte v0, p1, v9

    if-ne v0, v9, :cond_8

    aget-byte v0, p1, v4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    aget-byte v0, p1, v4

    if-ne v0, v2, :cond_8

    :cond_3
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    const/16 v3, 0x17

    if-ne v0, v3, :cond_8

    new-array v3, v5, [B

    const/16 v0, 0x9

    invoke-static {p1, v0, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    array-length v5, v3

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_4

    aget-byte v6, v3, v0

    const-string v7, "%02X"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/amap/api/col/gk;->aw:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/math/BigInteger;

    const-string v5, "8021267762677846189778330391499"

    invoke-direct {v0, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "49549924105414102803086139689747"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/amap/api/col/hu;->c([B)[B

    move-result-object v3

    invoke-static {v3, v0, v5}, Lcom/amap/api/col/gy;->a([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v0, v3

    const/16 v5, 0x8

    if-ge v0, v5, :cond_6

    :cond_5
    const-string v0, ""

    goto :goto_0

    :cond_6
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v2

    :goto_2
    if-lt v0, v9, :cond_7

    const-string v2, "%02X"

    new-array v6, v9, [Ljava/lang/Object;

    aget-byte v7, v3, v0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/gk;->aw:Ljava/util/Map;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    aget-byte v0, p1, v1

    if-ne v0, v4, :cond_a

    aget-byte v0, p1, v9

    if-ne v0, v9, :cond_a

    aget-byte v0, p1, v4

    if-ne v0, v2, :cond_a

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    const/16 v3, 0x16

    if-ne v0, v3, :cond_a

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    const/16 v3, -0x58

    if-ne v0, v3, :cond_a

    aget-byte v0, p1, v2

    if-ne v0, v9, :cond_a

    const/4 v0, 0x7

    aget-byte v0, p1, v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_a

    const/16 v0, 0xa

    const/16 v2, 0x1a

    :try_start_0
    invoke-static {p1, v0, v2}, Lcom/amap/api/col/hu;->a([BII)[B

    move-result-object v0

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Lcom/amap/api/col/gy;->b([B[B)[B

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_3
    const/16 v1, 0x8

    if-ge v0, v1, :cond_9

    const-string v1, "%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, v2, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_a
    const-string v0, ""

    goto/16 :goto_0

    :array_0
    .array-data 1
        -0x1t
        -0xft
        0x37t
        0x21t
        0x4t
        0x15t
        0x10t
        0x14t
        -0x55t
        0x9t
        0x0t
        0x2t
        -0x5bt
        -0x2bt
        -0x3bt
        -0x4bt
    .end array-data
.end method

.method static synthetic a(Lcom/amap/api/col/gk;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/gk;->H:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/col/gk;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/gk;->F:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const-string v2, "smac"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/String;

    invoke-static {v3}, Lcom/amap/api/col/da;->b(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/amap/api/col/gk;->V:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "APS"

    const-string v4, "getSmac"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/amap/api/col/gk;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/gk;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/gk;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/gk;->a(ZI)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/gk;->L()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/gk;->ab:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/gk;->ab:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->ab:Ljava/lang/Object;

    const-string v1, "stopOff"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->l:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a(ZI)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/gk;->y()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/gk;->G()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/amap/api/col/gk;->c(I)V

    goto :goto_0
.end method

.method private a(I)Z
    .locals 5

    const/16 v1, 0x14

    const/4 v0, 0x1

    const/16 v2, 0x14

    :try_start_0
    invoke-static {p1, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-lt v1, v0, :cond_0

    :goto_1
    return v0

    :catch_0
    move-exception v2

    const-string v3, "APS"

    const-string v4, "wifiSigFine"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/amap/api/col/gk;)Lcom/amap/api/col/gx;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    return-object v0
.end method

.method private b(I)V
    .locals 8

    const v1, 0x282fffff

    const v0, 0x42fffff

    const/4 v7, 0x3

    invoke-direct {p0}, Lcom/amap/api/col/gk;->y()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/amap/api/col/hl;->u()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    move v1, v0

    :cond_2
    :goto_1
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;

    const-string v2, "callBackWrapData"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {p0, v5, v1, v6}, Lcom/amap/api/col/gk;->a(III)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;

    const-string v2, "getReportDate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_3

    :try_start_2
    check-cast v0, [B

    check-cast v0, [B

    iget-object v2, p0, Lcom/amap/api/col/gk;->ak:Lcom/amap/api/col/hg;

    iget-object v3, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    const-string v4, "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&"

    invoke-virtual {v2, v0, v3, v4}, Lcom/amap/api/col/hg;->a([BLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/amap/api/col/gk;->y()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    :try_start_3
    iget-object v2, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;

    const-string v3, "setUploadResult"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/gk;->Z:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_4
    :try_start_4
    invoke-direct {p0}, Lcom/amap/api/col/gk;->C()V

    invoke-direct {p0}, Lcom/amap/api/col/gk;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/amap/api/col/gk;->F()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/amap/api/col/gk;->G()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "up"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    move v1, v0

    goto :goto_1

    :pswitch_2
    :try_start_5
    invoke-direct {p0}, Lcom/amap/api/col/gk;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7c2fffff

    move v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    const/4 v0, 0x0

    goto :goto_3

    :catch_3
    move-exception v0

    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/col/gk;->Z:I

    goto :goto_4

    :cond_4
    iget v0, p0, Lcom/amap/api/col/gk;->Z:I

    if-lt v0, v7, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/gk;->G()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/gk;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->ab:Ljava/lang/Object;

    const-string v1, "setLastLoc"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(J)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x320

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v1}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amap/api/col/hu;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    :cond_0
    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/amap/api/col/gk;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/gk;->F:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c(I)V
    .locals 6

    const-wide/16 v2, 0x7d0

    invoke-static {}, Lcom/amap/api/col/hl;->u()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/gk;->G()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/gk;->Y:Ljava/util/TimerTask;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/col/gl;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/gl;-><init>(Lcom/amap/api/col/gk;I)V

    iput-object v0, p0, Lcom/amap/api/col/gk;->Y:Ljava/util/TimerTask;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/gk;->X:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    const-string v1, "T-U"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/amap/api/col/gk;->X:Ljava/util/Timer;

    iget-object v0, p0, Lcom/amap/api/col/gk;->X:Ljava/util/Timer;

    iget-object v1, p0, Lcom/amap/api/col/gk;->Y:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/hl;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/hu;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/amap/api/col/hu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/amap/api/col/gx;

    iget-object v2, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    invoke-direct {v1, v2, v0, v3}, Lcom/amap/api/col/gx;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/gw;

    iget-object v1, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/gw;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initBase"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/amap/api/col/hg;->a(Landroid/content/Context;Z)Lcom/amap/api/col/hg;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gk;->ak:Lcom/amap/api/col/hg;

    iget-object v0, p0, Lcom/amap/api/col/gk;->B:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/amap/api/col/hu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amap/api/col/gk;->B:Landroid/net/ConnectivityManager;

    :cond_0
    new-instance v0, Lcom/amap/api/col/hk;

    invoke-direct {v0}, Lcom/amap/api/col/hk;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/gk;->ar:Z

    if-nez v0, :cond_0

    const-string v0, "Collection"

    const-string v1, "1.0.0"

    invoke-static {v0, v1}, Lcom/amap/api/col/dh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/col/de;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amap/api/col/hp;->a(Landroid/content/Context;Lcom/amap/api/col/de;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->ar:Z

    iget-boolean v0, p0, Lcom/amap/api/col/gk;->ar:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/gk;->f:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/eq;->a(Landroid/content/Context;Lcom/amap/api/col/de;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/amap/api/col/gk;->ar:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initCollection"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/amap/api/col/gk;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/gk;->w()V

    return-void
.end method

.method static synthetic e(Lcom/amap/api/col/gk;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;

    return-object v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/hl;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->ab:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/gk;->as:Z

    if-nez v0, :cond_0

    const-string v0, "OfflineLocation"

    const-string v1, "1.0.0"

    invoke-static {v0, v1}, Lcom/amap/api/col/dh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/col/de;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amap/api/col/hp;->a(Landroid/content/Context;Lcom/amap/api/col/de;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->as:Z

    iget-boolean v0, p0, Lcom/amap/api/col/gk;->as:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/gk;->g:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/eq;->a(Landroid/content/Context;Lcom/amap/api/col/de;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gk;->ab:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/amap/api/col/gk;->as:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initOffLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private f(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->ac:Z

    :cond_0
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->ad:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/amap/api/col/gk;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/gk;->G()V

    return-void
.end method

.method static synthetic g(Lcom/amap/api/col/gk;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/gk;->D()V

    return-void
.end method

.method static synthetic h(Lcom/amap/api/col/gk;)Z
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/gk;->H()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/amap/api/col/gk;)J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/gk;->P:J

    return-wide v0
.end method

.method static synthetic j(Lcom/amap/api/col/gk;)Z
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/gk;->y()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/amap/api/col/gk;)I
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/gk;->F()I

    move-result v0

    return v0
.end method

.method static synthetic l()J
    .locals 2

    sget-wide v0, Lcom/amap/api/col/gk;->T:J

    return-wide v0
.end method

.method private m()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/gk;->h:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/gk;->h:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amap/api/col/hl;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amap/api/col/hu;->c()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private n()V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v2, "reversegeo"

    invoke-static {v1, v2}, Lcom/amap/api/col/hu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v2, "reversegeo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v3, "isOffset"

    invoke-static {v2, v3}, Lcom/amap/api/col/hu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v3, "isOffset"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v4, "isLocationCacheEnable"

    invoke-static {v3, v4}, Lcom/amap/api/col/hu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v4, "isLocationCacheEnable"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    iget-object v3, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v4, "isWifiPassiveScan"

    invoke-static {v3, v4}, Lcom/amap/api/col/hu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v4, "isWifiPassiveScan"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/amap/api/col/gk;->u:Z

    :cond_1
    iget-object v3, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v4, "isMock"

    invoke-static {v3, v4}, Lcom/amap/api/col/hu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v4, "isMock"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/amap/api/col/gk;->k:Z

    :cond_2
    iget-boolean v3, p0, Lcom/amap/api/col/gk;->an:Z

    if-ne v2, v3, :cond_3

    iget-boolean v3, p0, Lcom/amap/api/col/gk;->am:Z

    if-ne v1, v3, :cond_3

    iget-boolean v3, p0, Lcom/amap/api/col/gk;->ao:Z

    if-eq v0, v3, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/amap/api/col/gk;->K()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_2
    iput-boolean v2, p0, Lcom/amap/api/col/gk;->an:Z

    iput-boolean v1, p0, Lcom/amap/api/col/gk;->am:Z

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->ao:Z

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->Q:Z

    return-void

    :catch_0
    move-exception v1

    move v1, v0

    move v2, v0

    goto :goto_2

    :catch_1
    move-exception v2

    move v2, v0

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_1

    :cond_6
    move v1, v0

    goto :goto_0
.end method

.method private o()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/hu;->c()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/gk;->h:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/gk;->j:Lcom/amap/api/col/gk$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/gk$b;

    invoke-direct {v0, p0}, Lcom/amap/api/col/gk$b;-><init>(Lcom/amap/api/col/gk;)V

    iput-object v0, p0, Lcom/amap/api/col/gk;->j:Lcom/amap/api/col/gk$b;

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/gk;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/gk;->h:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/amap/api/col/gk;->j:Lcom/amap/api/col/gk$b;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->i:Z

    iget-object v0, p0, Lcom/amap/api/col/gk;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/gk;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private p()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/gk;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->ab:Ljava/lang/Object;

    const-string v1, "resetPureOfflineCache"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private q()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->J:Lcom/amap/api/col/gk$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/gk$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/gk$c;-><init>(Lcom/amap/api/col/gk;Lcom/amap/api/col/gl;)V

    iput-object v0, p0, Lcom/amap/api/col/gk;->J:Lcom/amap/api/col/gk$c;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/gk;->J:Lcom/amap/api/col/gk$c;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/amap/api/col/gk;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initBroadcastListener"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private r()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    invoke-virtual {v0}, Lcom/amap/api/col/gw;->a()V

    return-void
.end method

.method private s()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v8, "0"

    const-string v10, "0"

    const-string v11, "0"

    const-string v12, "0"

    const-string v13, "0"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/cu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    const/16 v2, -0x8000

    const/16 v3, 0x7fff

    invoke-static {v2, v3}, Lcom/amap/api/col/hu;->a(II)I

    move-result v15

    const-string v6, ""

    const-string v5, ""

    const-string v7, ""

    const-string v3, "api_serverSDK_130905"

    const-string v2, "S128DF1572465B890OE3F7A13167KLEI"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    if-nez v4, :cond_0

    new-instance v4, Lcom/amap/api/col/hk;

    invoke-direct {v4}, Lcom/amap/api/col/hk;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/amap/api/col/gk;->an:Z

    if-nez v4, :cond_1d

    const-string v3, "UC_nlp_20131029"

    const-string v2, "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U"

    move-object v4, v3

    move-object v3, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->o:Ljava/lang/StringBuilder;

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/col/gk;->o:Ljava/lang/StringBuilder;

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->p:Ljava/lang/StringBuilder;

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/col/gk;->p:Ljava/lang/StringBuilder;

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/amap/api/col/gw;->d()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Lcom/amap/api/col/gw;->e()I

    move-result v18

    invoke-virtual/range {v16 .. v16}, Lcom/amap/api/col/gw;->g()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lcom/amap/api/col/gw;->b()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Lcom/amap/api/col/gw;->n()Ljava/util/ArrayList;

    move-result-object v21

    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_1c

    const-string v2, "1"

    move-object v9, v2

    :goto_3
    if-eqz v19, :cond_4

    sget-object v2, Lcom/amap/api/col/dh;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/cz;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amap/api/col/dh;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_4
    sget-object v2, Lcom/amap/api/col/dh;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "888888888888888"

    sput-object v2, Lcom/amap/api/col/dh;->a:Ljava/lang/String;

    :cond_2
    sget-object v2, Lcom/amap/api/col/dh;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amap/api/col/dh;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_5
    sget-object v2, Lcom/amap/api/col/dh;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "888888888888888"

    sput-object v2, Lcom/amap/api/col/dh;->b:Ljava/lang/String;

    :cond_4
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amap/api/col/gk;->B:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :goto_6
    invoke-static {v2}, Lcom/amap/api/col/hu;->a(Landroid/net/NetworkInfo;)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_f

    invoke-static/range {v19 .. v19}, Lcom/amap/api/col/hu;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/amap/api/col/gk;->s:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v6}, Lcom/amap/api/col/gx;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "2"

    move-object v6, v5

    move-object v5, v2

    :goto_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch v18, :pswitch_data_0

    const-string v2, "resetCdmaData"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/amap/api/col/gk;->a(Ljava/lang/String;)V

    move-object v2, v7

    :goto_8
    const/4 v7, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v8, v2

    :goto_9
    and-int/lit8 v2, v17, 0x4

    const/4 v7, 0x4

    if-ne v2, v7, :cond_14

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iget-object v2, v2, Lcom/amap/api/col/hk;->C:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iget-object v2, v2, Lcom/amap/api/col/hk;->C:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/gk;->x()Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v7}, Lcom/amap/api/col/gx;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->p:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v7, -0x80

    if-ge v2, v7, :cond_15

    const/4 v2, 0x0

    :cond_5
    :goto_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/gk;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x20

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v18

    const-string v19, "UTF-8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    array-length v7, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :goto_c
    const/16 v18, 0x20

    move/from16 v0, v18

    if-lt v7, v0, :cond_6

    const-string v2, "unkwn"

    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/gk;->p:Ljava/lang/StringBuilder;

    const-string v18, "*"

    const-string v19, "."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/gk;->d:Ljava/lang/Object;

    monitor-enter v7

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iget-object v2, v2, Lcom/amap/api/col/hk;->F:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iget-object v2, v2, Lcom/amap/api/col/hk;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iget-object v2, v2, Lcom/amap/api/col/hk;->F:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    :goto_d
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v18, "reversegeo"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/amap/api/col/hu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v18, "reversegeo"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-result v2

    :goto_e
    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    const/4 v7, 0x2

    iput-short v7, v2, Lcom/amap/api/col/hk;->b:S

    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v7, "multi"

    invoke-static {v2, v7}, Lcom/amap/api/col/hu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v7, "multi"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iget-short v7, v2, Lcom/amap/api/col/hk;->b:S

    add-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    iput-short v7, v2, Lcom/amap/api/col/hk;->b:S
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_a
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/gk;->m()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/gk;->f()V

    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iput-object v4, v2, Lcom/amap/api/col/hk;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iput-object v3, v2, Lcom/amap/api/col/hk;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    invoke-static {}, Lcom/amap/api/col/hu;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/col/hk;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/amap/api/col/hu;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/col/hk;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/col/hu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/col/hk;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iput-object v9, v2, Lcom/amap/api/col/hk;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iput-object v10, v2, Lcom/amap/api/col/hk;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/amap/api/col/gk;->R:Z

    if-eqz v2, :cond_1a

    const-string v2, "1"

    :goto_12
    iput-object v2, v3, Lcom/amap/api/col/hk;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iput-object v11, v2, Lcom/amap/api/col/hk;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iput-object v12, v2, Lcom/amap/api/col/hk;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iput-object v13, v2, Lcom/amap/api/col/hk;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iput-object v14, v2, Lcom/amap/api/col/hk;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    sget-object v3, Lcom/amap/api/col/dh;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/amap/api/col/hk;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    sget-object v3, Lcom/amap/api/col/dh;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/amap/api/col/hk;->q:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/col/hk;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/col/gk;->V:Ljava/lang/String;

    iput-object v3, v2, Lcom/amap/api/col/hk;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/gk;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/col/hk;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/gk;->I()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/col/hk;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    const-string v3, ""

    iput-object v3, v2, Lcom/amap/api/col/hk;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iput-object v6, v2, Lcom/amap/api/col/hk;->x:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iput-object v5, v2, Lcom/amap/api/col/hk;->y:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    move/from16 v0, v17

    iput v0, v2, Lcom/amap/api/col/hk;->z:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iput-object v8, v2, Lcom/amap/api/col/hk;->A:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/col/gk;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/col/hk;->B:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    invoke-virtual/range {v16 .. v16}, Lcom/amap/api/col/gw;->m()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/col/hk;->D:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v4

    sget-wide v6, Lcom/amap/api/col/gk;->T:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/col/hk;->H:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/col/gk;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/col/hk;->E:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/col/gk;->I:Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/amap/api/col/hk;->G:Ljava/util/ArrayList;

    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/cz;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/col/gk;->q:Ljava/lang/String;

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/col/gk;->q:Ljava/lang/String;

    iput-object v3, v2, Lcom/amap/api/col/hk;->K:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->o:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/col/gk;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->p:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/col/gk;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->o:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amap/api/col/gk;->o:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v2, v9, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->p:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amap/api/col/gk;->p:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v2, v9, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :catch_0
    move-exception v2

    const-string v8, "APS"

    const-string v22, "getApsReq part4"

    move-object/from16 v0, v22

    invoke-static {v2, v8, v0}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_1
    move-exception v2

    const-string v8, "APS"

    const-string v22, "getApsReq part2"

    move-object/from16 v0, v22

    invoke-static {v2, v8, v0}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_2
    move-exception v8

    const-string v22, "APS"

    const-string v23, "getApsReq part"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v8, v0, v1}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_e
    const-string v2, "1"

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_7

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    goto/16 :goto_7

    :pswitch_0
    const-string v2, "resetCdmaData"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/amap/api/col/gk;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/gv;

    const/4 v7, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v7, "<mcc>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/amap/api/col/gv;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</mcc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<mnc>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/amap/api/col/gv;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</mnc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<lac>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/amap/api/col/gv;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</lac>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<cellid>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/amap/api/col/gv;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "</cellid>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<signal>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v2, v2, Lcom/amap/api/col/gv;->j:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</signal>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x1

    move v7, v2

    :goto_14
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_11

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/gv;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amap/api/col/gk;->o:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    iget v0, v2, Lcom/amap/api/col/gv;->c:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v22, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amap/api/col/gk;->o:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    iget v0, v2, Lcom/amap/api/col/gv;->d:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v22, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amap/api/col/gk;->o:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    iget v2, v2, Lcom/amap/api/col/gv;->j:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v7, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->o:Ljava/lang/StringBuilder;

    const-string v18, "*"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_14

    :cond_11
    move-object v2, v8

    goto/16 :goto_8

    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/gv;

    const/4 v7, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v7, "<mcc>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/amap/api/col/gv;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</mcc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<sid>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/amap/api/col/gv;->g:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</sid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<nid>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/amap/api/col/gv;->h:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</nid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<bid>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/amap/api/col/gv;->i:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</bid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/amap/api/col/gv;->f:I

    if-lez v7, :cond_13

    iget v7, v2, Lcom/amap/api/col/gv;->e:I

    if-lez v7, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/gk;->L()Z

    move-result v7

    if-eqz v7, :cond_12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/gk;->ab:Ljava/lang/Object;

    const-string v8, "setCdmaLatLon"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    iget v0, v2, Lcom/amap/api/col/gv;->e:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v18, v20

    const/16 v20, 0x1

    iget v0, v2, Lcom/amap/api/col/gv;->f:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v18, v20

    move-object/from16 v0, v18

    invoke-static {v7, v8, v0}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const-string v7, "<lon>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/amap/api/col/gv;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</lon>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<lat>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/amap/api/col/gv;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</lat>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    const-string v7, "<signal>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v2, v2, Lcom/amap/api/col/gv;->j:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "</signal>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    :cond_13
    const-string v7, "resetCdmaData"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/amap/api/col/gk;->a(Ljava/lang/String;)V

    goto :goto_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iget-object v2, v2, Lcom/amap/api/col/hk;->C:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_a

    :cond_15
    const/16 v7, 0x7f

    if-le v2, v7, :cond_5

    const/4 v2, 0x0

    goto/16 :goto_b

    :catchall_0
    move-exception v2

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/gk;->w()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iget-object v2, v2, Lcom/amap/api/col/hk;->F:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iget-object v2, v2, Lcom/amap/api/col/hk;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_d

    :catch_3
    move-exception v2

    const-string v18, "APS"

    const-string v19, "getApsReq part"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    move v2, v7

    goto/16 :goto_e

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    const/4 v7, 0x0

    iput-short v7, v2, Lcom/amap/api/col/hk;->b:S

    goto/16 :goto_f

    :catch_4
    move-exception v2

    const-string v7, "APS"

    const-string v18, "getApsReq"

    move-object/from16 v0, v18

    invoke-static {v2, v7, v0}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->I:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/col/gk;->W:Lcom/amap/api/col/hk;

    iget-object v2, v2, Lcom/amap/api/col/hk;->G:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_11

    :cond_1a
    const-string v2, "0"

    goto/16 :goto_12

    :catch_5
    move-exception v2

    goto/16 :goto_13

    :catch_6
    move-exception v18

    goto/16 :goto_c

    :cond_1b
    move-object v8, v7

    goto/16 :goto_9

    :cond_1c
    move-object v9, v8

    goto/16 :goto_3

    :cond_1d
    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private t()V
    .locals 8

    const-wide/16 v6, 0x2710

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/amap/api/col/gk;->u()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    sget-wide v4, Lcom/amap/api/col/gk;->T:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    :cond_0
    const/16 v1, 0x14

    iget-wide v4, p0, Lcom/amap/api/col/gk;->O:J

    sub-long v4, v2, v4

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/amap/api/col/gk;->d:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/gk;->h()V

    iget-wide v4, p0, Lcom/amap/api/col/gk;->O:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-ltz v0, :cond_2

    move v0, v1

    :goto_0
    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/gk;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0xbb8

    int-to-long v4, v1

    :try_start_1
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/gk;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/gk;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/gk;->T:J

    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    invoke-virtual {v0}, Lcom/amap/api/col/gx;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/gk;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/amap/api/col/gk;->F:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private u()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/amap/api/col/gk;->x()Z

    move-result v2

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->s:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-wide v2, Lcom/amap/api/col/gk;->S:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/col/gk;->S:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/col/gk;->T:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private v()Z
    .locals 6

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/amap/api/col/gk;->N:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/api/col/gk;->N:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private w()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/amap/api/col/gk;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/gk;->G:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private x()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    invoke-virtual {v0}, Lcom/amap/api/col/gx;->e()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private y()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private z()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/gk;->y()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/gk;->A()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "APS"

    const-string v3, "collStarted"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothDevice;I[B)Lcom/amap/api/col/gk$a;
    .locals 16

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v12

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/amap/api/col/gk;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0000000000000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v8, 0x0

    :cond_0
    :goto_0
    const/16 v2, 0x1d

    aget-byte v10, p3, v2

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v7, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ":"

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x6

    new-array v6, v2, [B

    const/4 v3, 0x0

    array-length v11, v5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v11, :cond_4

    aget-object v14, v5, v2

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v6, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "00000000000000000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0x10

    new-array v2, v2, [B

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object/from16 v0, p3

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lcom/amap/api/col/hu;->b([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x19

    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit16 v2, v2, 0x100

    const/16 v3, 0x1a

    aget-byte v3, p3, v3

    and-int/lit16 v3, v3, 0xff

    add-int v8, v2, v3

    const/16 v2, 0x1b

    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit16 v2, v2, 0x100

    const/16 v3, 0x1c

    aget-byte v3, p3, v3

    and-int/lit16 v3, v3, 0xff

    add-int v9, v2, v3

    const/16 v2, 0x2d95

    if-eq v9, v2, :cond_3

    const/16 v2, 0x820

    if-eq v8, v2, :cond_3

    const/16 v2, 0x704

    if-eq v8, v2, :cond_3

    if-nez p1, :cond_0

    :cond_3
    const/4 v3, 0x0

    :goto_2
    return-object v3

    :cond_4
    new-instance v3, Lcom/amap/api/col/gk$a;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    move/from16 v11, p2

    invoke-direct/range {v3 .. v13}, Lcom/amap/api/col/gk$a;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;IIIIJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "APS"

    const-string v4, "createFromScanData"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public declared-synchronized a()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v3, 0x4

    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    const-string v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget v2, p0, Lcom/amap/api/col/gk;->U:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amap/api/col/gk;->U:I

    iget v2, p0, Lcom/amap/api/col/gk;->U:I

    if-ne v2, v0, :cond_5

    invoke-direct {p0}, Lcom/amap/api/col/gk;->C()V

    invoke-direct {p0}, Lcom/amap/api/col/gk;->J()V

    iget-object v2, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/amap/api/col/gk;->y()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :try_start_2
    iget-object v2, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;

    const-string v4, "getColUpHist"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/amap/api/col/gk;->L()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/amap/api/col/gk;->ab:Ljava/lang/Object;

    const-string v4, "getOffDlHist"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/amap/api/col/gk;->V:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/gk;->V:Ljava/lang/String;

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    const-string v4, "pref"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/col/gk;->a(Landroid/content/SharedPreferences;)V

    :cond_5
    iget-wide v4, p0, Lcom/amap/api/col/gk;->N:J

    invoke-direct {p0, v4, v5}, Lcom/amap/api/col/gk;->b(J)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v2}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v0, p0, Lcom/amap/api/col/gk;->ao:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/col/hl;->b(J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_7
    :try_start_5
    iget-object v2, p0, Lcom/amap/api/col/gk;->ab:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/gk;->ab:Ljava/lang/Object;

    const-string v4, "stopOff"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->l:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_8
    :try_start_6
    iget-object v2, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    iget-boolean v4, p0, Lcom/amap/api/col/gk;->Q:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/amap/api/col/gw;->a(ZZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-direct {p0}, Lcom/amap/api/col/gk;->t()V

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amap/api/col/gk;->O:J

    invoke-virtual {p0}, Lcom/amap/api/col/gk;->e()V

    invoke-virtual {p0}, Lcom/amap/api/col/gk;->g()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {p0, v2}, Lcom/amap/api/col/gk;->a(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v2

    if-nez v2, :cond_d

    :try_start_9
    invoke-direct {p0}, Lcom/amap/api/col/gk;->L()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/amap/api/col/gk;->l:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/amap/api/col/gk;->ab:Ljava/lang/Object;

    const-string v3, "startOff"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/api/col/gk;->l:Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_9
    :goto_4
    :try_start_a
    iget-object v2, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/amap/api/col/gk;->a(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/amap/api/col/gk;->Q:Z

    if-nez v3, :cond_21

    iget-object v2, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    invoke-virtual {v2}, Lcom/amap/api/col/gw;->c()Lcom/amap/api/col/gv;

    move-result-object v2

    move-object v4, v2

    :goto_5
    if-nez v4, :cond_a

    iget-object v2, p0, Lcom/amap/api/col/gk;->aj:Lcom/amap/api/col/gv;

    if-eqz v2, :cond_12

    :cond_a
    iget-object v2, p0, Lcom/amap/api/col/gk;->aj:Lcom/amap/api/col/gv;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/amap/api/col/gk;->aj:Lcom/amap/api/col/gv;

    invoke-virtual {v2, v4}, Lcom/amap/api/col/gv;->a(Lcom/amap/api/col/gv;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_b
    move v3, v0

    :goto_6
    invoke-direct {p0}, Lcom/amap/api/col/gk;->v()Z

    move-result v5

    iget-object v2, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v6, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v6}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v6

    const v7, 0x43958000    # 299.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_13

    const/4 v6, 0x5

    if-le v2, v6, :cond_13

    :goto_7
    move v2, v0

    :goto_8
    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/amap/api/col/gk;->ai:Ljava/lang/String;

    if-eqz v0, :cond_14

    if-nez v2, :cond_14

    if-nez v3, :cond_14

    iget-boolean v0, p0, Lcom/amap/api/col/gk;->ao:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/amap/api/col/hl;->b(J)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/amap/api/col/gz;->a()Lcom/amap/api/col/gz;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/gk;->ai:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/amap/api/col/gz;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-wide v6, p0, Lcom/amap/api/col/gk;->ah:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/amap/api/col/gk;->ah:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xbb8

    cmp-long v0, v6, v8

    if-gez v0, :cond_14

    :cond_c
    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v1, "mem"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string v4, "APS"

    const-string v5, "getLocation"

    invoke-static {v2, v4, v5}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_d
    :try_start_b
    iget-boolean v0, p0, Lcom/amap/api/col/gk;->c:Z

    if-nez v0, :cond_e

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/col/gk;->a(ZLandroid/content/Context;)V

    :cond_e
    move v0, v3

    :goto_9
    if-lez v0, :cond_f

    iget-object v1, p0, Lcom/amap/api/col/gk;->b:Lcom/amap/api/col/gm;

    iget-boolean v1, v1, Lcom/amap/api/col/gm;->a:Z

    if-eqz v1, :cond_10

    :cond_f
    iget-object v0, p0, Lcom/amap/api/col/gk;->b:Lcom/amap/api/col/gm;

    iget-boolean v0, v0, Lcom/amap/api/col/gm;->a:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/amap/api/col/gk;->b:Lcom/amap/api/col/gm;

    invoke-virtual {v0}, Lcom/amap/api/col/gm;->f()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_10
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_11
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/amap/api/col/gk;->m:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    const-string v3, "APS"

    const-string v4, "getLocation:isOffLineLoc"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    move v3, v1

    goto/16 :goto_6

    :cond_13
    move v0, v1

    goto/16 :goto_7

    :cond_14
    if-nez v1, :cond_1a

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/gk;->ah:J

    :goto_a
    iget-object v0, p0, Lcom/amap/api/col/gk;->af:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/col/gk;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/amap/api/col/hu;->a()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/amap/api/col/gk;->ag:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0xbb8

    cmp-long v0, v0, v6

    if-gez v0, :cond_1b

    iget-object v0, p0, Lcom/amap/api/col/gk;->af:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    :goto_b
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/amap/api/col/gk;->an:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/amap/api/col/gk;->am:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/gk;->au:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/amap/api/col/gk;->ao:Z

    if-eqz v1, :cond_15

    if-nez v2, :cond_15

    if-nez v5, :cond_15

    invoke-static {}, Lcom/amap/api/col/gz;->a()Lcom/amap/api/col/gz;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/gk;->au:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/amap/api/col/gk;->ao:Z

    invoke-virtual {v0, v1, v3, v6}, Lcom/amap/api/col/gz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    :cond_15
    if-nez v5, :cond_16

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    if-eqz v2, :cond_1e

    :cond_17
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/col/gk;->a(ZZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v1, "new"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gk;->ai:Ljava/lang/String;

    iput-object v4, p0, Lcom/amap/api/col/gk;->aj:Lcom/amap/api/col/gv;

    invoke-direct {p0}, Lcom/amap/api/col/gk;->p()V

    :cond_18
    :goto_c
    invoke-static {}, Lcom/amap/api/col/gz;->a()Lcom/amap/api/col/gz;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/gk;->au:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v4, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/gz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;Landroid/content/Context;Z)V

    invoke-static {}, Lcom/amap/api/col/hc;->a()Lcom/amap/api/col/hc;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/col/hc;->a(Landroid/content/Context;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v1, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/gk;->a(Z)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/gk;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/gk;->ai:Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iput-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u79bb\u7ebf\u5b9a\u4f4d\uff0c\u5728\u7ebf\u5b9a\u4f4d\u5931\u8d25\u539f\u56e0:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    :cond_19
    iget-object v0, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_1a
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/gk;->ah:J

    goto/16 :goto_a

    :cond_1b
    invoke-static {}, Lcom/amap/api/col/hu;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/gk;->ag:J

    iget-object v0, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/gk;->af:Ljava/lang/String;

    goto/16 :goto_b

    :cond_1c
    iget-object v0, p0, Lcom/amap/api/col/gk;->af:Ljava/lang/String;

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/amap/api/col/hu;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/gk;->ag:J

    iget-object v0, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/gk;->af:Ljava/lang/String;

    goto/16 :goto_b

    :cond_1d
    invoke-static {}, Lcom/amap/api/col/hu;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/gk;->ag:J

    goto/16 :goto_b

    :cond_1e
    if-eqz v5, :cond_1f

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/col/gk;->a(ZZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gk;->ai:Ljava/lang/String;

    iput-object v4, p0, Lcom/amap/api/col/gk;->aj:Lcom/amap/api/col/gv;

    invoke-direct {p0}, Lcom/amap/api/col/gk;->p()V

    goto/16 :goto_c

    :cond_1f
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/amap/api/col/gk;->ah:J

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    iput-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/gk;->b(Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/amap/api/col/gk;->p()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_c

    :catch_3
    move-exception v2

    goto/16 :goto_1

    :cond_20
    move v2, v1

    goto/16 :goto_8

    :cond_21
    move-object v4, v2

    goto/16 :goto_5
.end method

.method public a(DD)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "output=json&radius=1000&extensions=all&location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/gk;->ak:Lcom/amap/api/col/hg;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    const-string v3, "http://restapi.amap.com/v3/geocode/regeo"

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/amap/api/col/hg;->a([BLandroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/hi;

    invoke-direct {v1}, Lcom/amap/api/col/hi;-><init>()V

    const-string v2, "\"status\":\"1\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/hi;->a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLatitude(D)V

    invoke-virtual {v0, p3, p4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;[Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/amap/api/col/gr;->a()Lcom/amap/api/col/gr;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/col/gk;->ao:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/col/gr;->a(Z)V

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/amap/api/col/gr;->a()Lcom/amap/api/col/gr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/gr;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    aget-object v0, p2, v2

    const-string v1, "shake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/amap/api/col/gr;->a()Lcom/amap/api/col/gr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/gr;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object p1

    goto :goto_0

    :cond_3
    aget-object v0, p2, v2

    const-string v1, "fusion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/api/col/gr;->a()Lcom/amap/api/col/gr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/gr;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object p1

    goto :goto_0
.end method

.method public declared-synchronized a(Z)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/gk;->Q:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    invoke-virtual {v0}, Lcom/amap/api/col/gw;->h()V

    :goto_0
    const-string v0, ""

    const-string v2, ""

    const-string v4, "network"

    iget-object v2, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    invoke-virtual {v2}, Lcom/amap/api/col/gx;->b()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    const-string v2, ""

    iget-object v2, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    invoke-virtual {v2}, Lcom/amap/api/col/gw;->e()I

    move-result v2

    iget-object v5, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    invoke-virtual {v5}, Lcom/amap/api/col/gw;->b()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_0
    iget-object v6, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    invoke-virtual {v1}, Lcom/amap/api/col/gw;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    invoke-virtual {v2}, Lcom/amap/api/col/gx;->f()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_6

    :cond_2
    const/16 v3, 0xc

    iput v3, p0, Lcom/amap/api/col/gk;->m:I

    iget-object v3, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    invoke-virtual {v0}, Lcom/amap/api/col/gw;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move-object v1, v2

    goto :goto_1

    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/hu;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0xc

    iput v1, p0, Lcom/amap/api/col/gk;->m:I

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    const-string v2, "\u2297 lstCgi & \u2297 wifis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    iput v1, p0, Lcom/amap/api/col/gk;->m:I

    goto :goto_2

    :cond_8
    packed-switch v2, :pswitch_data_0

    const/16 v1, 0xb

    iput v1, p0, Lcom/amap/api/col/gk;->m:I

    iget-object v1, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    const-string v2, "get cgi failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/col/hu;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/gv;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/amap/api/col/gv;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/amap/api/col/gv;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/amap/api/col/gv;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/amap/api/col/gv;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    iget-object v2, p0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/gx;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const-string v0, "cgiwifi"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_c
    const-string v0, "cgi"

    goto :goto_4

    :pswitch_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/gv;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/amap/api/col/gv;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/amap/api/col/gv;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/amap/api/col/gv;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/amap/api/col/gv;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/amap/api/col/gv;->i:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    iget-object v2, p0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/gx;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    const-string v0, "cgiwifi"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_e
    const-string v0, "cgi"

    goto :goto_5

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    iget-object v2, p0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/gx;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_f
    move v2, v3

    :goto_6
    if-nez p1, :cond_13

    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    iget-object v5, p0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v5}, Lcom/amap/api/col/gx;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/col/gk;->m:I

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    const-string v2, "\u2297 around wifi(s) & has access wifi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "#%s#"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_10
    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_13

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/col/gk;->m:I

    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    iget-object v3, p0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v3}, Lcom/amap/api/col/gx;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    const-string v2, "\u2297 access wifi & around wifi 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    const-string v2, "same access wifi & around wifi 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_12
    const-string v1, "network"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, ""

    const/4 v1, 0x2

    iput v1, p0, Lcom/amap/api/col/gk;->m:I

    iget-object v1, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    const-string v2, "is network & no wifi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :cond_13
    move v1, v2

    goto :goto_7

    :cond_14
    move v2, v1

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized a(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    iget-boolean v3, p0, Lcom/amap/api/col/gk;->Q:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/gw;->h()V

    :cond_0
    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v3, 0x2bc

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/amap/api/col/gw;->e()I

    move-result v3

    invoke-virtual {v0}, Lcom/amap/api/col/gw;->b()Ljava/util/ArrayList;

    move-result-object v4

    packed-switch v3, :pswitch_data_0

    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/gk;->V:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/gk;->V:Ljava/lang/String;

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/cz;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gk;->V:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/col/gk;->E()V

    iget-object v0, p0, Lcom/amap/api/col/gk;->V:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/amap/api/col/gk;->V:Ljava/lang/String;

    :cond_4
    const-string v0, ""

    iget-object v3, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    iget-object v4, p0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3, v4}, Lcom/amap/api/col/gx;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v0, p0, Lcom/amap/api/col/gk;->K:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->n:Z

    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v6, v2

    move v3, v2

    move v5, v2

    :goto_2
    if-ge v6, v8, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v9, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/amap/api/col/gk;->k:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v4, "<unknown ssid>"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    move v4, v1

    :goto_3
    const-string v0, "nb"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v0, "access"

    move v3, v1

    :goto_4
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "#%s,%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v9, 0x1

    aput-object v0, v11, v9

    invoke-static {v5, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v3

    move v3, v4

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    move v3, v1

    :goto_5
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/gv;

    iget v0, v0, Lcom/amap/api/col/gv;->b:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/gv;

    iget v0, v0, Lcom/amap/api/col/gv;->c:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/gv;

    iget v0, v0, Lcom/amap/api/col/gv;->d:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_c

    move v4, v1

    :goto_6
    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/col/gk;->k:Z

    if-nez v0, :cond_7

    if-nez v4, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    invoke-virtual {v0}, Lcom/amap/api/col/gx;->g()Ljava/util/List;

    move-result-object v6

    move v3, v2

    :goto_7
    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_7

    :catch_0
    move-exception v0

    :cond_7
    :try_start_3
    iget-boolean v0, p0, Lcom/amap/api/col/gk;->k:Z

    if-nez v0, :cond_8

    if-nez v4, :cond_8

    if-nez v2, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->n:Z

    :cond_8
    if-nez v5, :cond_9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",access"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    monitor-exit p0

    return-object p1

    :cond_b
    move v0, v2

    goto :goto_8

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v3, v5

    goto/16 :goto_4

    :cond_e
    move v4, v3

    goto/16 :goto_3

    :cond_f
    move-object v7, v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/gk;->c(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amap/api/col/gk;->c(Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/col/dh;->g:Z

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/col/gk;->e(Landroid/content/Context;)V

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/gk;->P:J

    iget-boolean v0, p0, Lcom/amap/api/col/gk;->ap:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/gk;->q()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->ap:Z

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/gk;->r()V

    iget-object v0, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    invoke-virtual {v0}, Lcom/amap/api/col/gw;->f()Landroid/telephony/CellLocation;

    invoke-static {}, Lcom/amap/api/col/gz;->a()Lcom/amap/api/col/gz;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/gz;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/col/hc;->a()Lcom/amap/api/col/hc;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/hc;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/col/gk;->f(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/amap/api/col/hu;->c()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/gk;->ad:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gk;->h:Landroid/bluetooth/BluetoothAdapter;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/amap/api/col/gk;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/gk;->av:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/amap/api/col/gk;->a(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/amap/api/col/gk;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->au:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/gk;->Q:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    iget-boolean v1, p0, Lcom/amap/api/col/gk;->Q:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/gw;->a(ZZ)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v1, "isOnceLocationLatest"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->aq:Z

    iget-boolean v0, p0, Lcom/amap/api/col/gk;->aq:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/amap/api/col/gk;->ap:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/amap/api/col/gk;->q()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->ap:Z

    :cond_3
    invoke-direct {p0}, Lcom/amap/api/col/gk;->t()V

    :cond_4
    invoke-virtual {p0}, Lcom/amap/api/col/gk;->e()V

    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/gk;->T:J

    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    invoke-virtual {v0}, Lcom/amap/api/col/gx;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/amap/api/col/gk;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/amap/api/col/gk;->F:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/gk;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/gk;->F:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    :try_start_3
    invoke-virtual {p0}, Lcom/amap/api/col/gk;->g()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/amap/api/col/gk;->a(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/col/gk;->an:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/col/gk;->am:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gk;->au:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/col/gk;->a(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->av:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_0
    move-exception v0

    :try_start_7
    const-string v1, "APS"

    const-string v2, "initFirstLocateParam"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/gz;->a()Lcom/amap/api/col/gz;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/gk;->au:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/gz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    iput-object p1, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v1, "collwifiscan"

    invoke-static {v0, v1}, Lcom/amap/api/col/hu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v1, "collwifiscan"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x14

    sput v0, Lcom/amap/api/col/dh;->f:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/amap/api/col/gk;->n()V

    return-void

    :cond_1
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/amap/api/col/dh;->f:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "setExtra"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized a(ZLandroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/gk;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/gk;->b:Lcom/amap/api/col/gm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/gm;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/col/gm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/gk;->b:Lcom/amap/api/col/gm;

    iget-object v0, p0, Lcom/amap/api/col/gk;->b:Lcom/amap/api/col/gm;

    invoke-virtual {v0}, Lcom/amap/api/col/gm;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/gk;->b:Lcom/amap/api/col/gm;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/gk;->b:Lcom/amap/api/col/gm;

    invoke-virtual {v0}, Lcom/amap/api/col/gm;->e()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->c:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/gk;->b:Lcom/amap/api/col/gm;

    invoke-virtual {v0}, Lcom/amap/api/col/gm;->c()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "APS"

    const-string v2, "bindService"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/gk;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v0, p0, Lcom/amap/api/col/gk;->Q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    invoke-virtual {v0}, Lcom/amap/api/col/gw;->c()Lcom/amap/api/col/gv;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_4

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    :goto_1
    iget v1, p0, Lcom/amap/api/col/gk;->m:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v6, v0

    :cond_0
    monitor-exit p0

    return-object v6

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "APS"

    const-string v3, "doFirstNetLocate"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_4
    invoke-direct {p0, v2, v3, p1}, Lcom/amap/api/col/gk;->a(ZZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    :goto_3
    :try_start_5
    invoke-static {v6}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "new"

    invoke-virtual {v6, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/gk;->ai:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/gk;->aj:Lcom/amap/api/col/gv;

    iput-object v6, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/gk;->b(Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/amap/api/col/gk;->p()V

    move-object v0, v6

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v6, v1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/col/gk;->e(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/gk;->a(Z)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/gk;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/amap/api/col/gk;->ai:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u79bb\u7ebf\u5b9a\u4f4d\u7ed3\u679c\uff0c\u5728\u7ebf\u5b9a\u4f4d\u5931\u8d25\u539f\u56e0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/gk;->b(Lorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/col/gk;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/col/gk;->a(ZZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/gk;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "doFusionLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/amap/api/col/gk;->v:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/gk;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/amap/api/col/gk;->v:I

    invoke-static {p1}, Lcom/amap/api/col/hl;->a(Landroid/content/Context;)Z

    invoke-static {}, Lcom/amap/api/col/hl;->t()I

    move-result v0

    sput v0, Lcom/amap/api/col/gk;->y:I

    sget v0, Lcom/amap/api/col/gk;->y:I

    invoke-static {p1, v0}, Lcom/amap/api/col/hu;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/gk;->x:J

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/gk;->w:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "APS"

    const-string v2, "initAuth"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->av:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->e:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/col/dh;->g:Z

    invoke-direct {p0}, Lcom/amap/api/col/gk;->D()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->ai:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/col/gk;->p()V

    iget-object v0, p0, Lcom/amap/api/col/gk;->b:Lcom/amap/api/col/gm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->b:Lcom/amap/api/col/gm;

    invoke-virtual {v0}, Lcom/amap/api/col/gm;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->b:Lcom/amap/api/col/gm;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->c:Z

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/gk;->G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/amap/api/col/hb;->a()Lcom/amap/api/col/hb;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/hb;->a(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/amap/api/col/gr;->a()Lcom/amap/api/col/gr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/gr;->b()V

    invoke-static {}, Lcom/amap/api/col/hu;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/gk;->J:Lcom/amap/api/col/gk$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/gk;->J:Lcom/amap/api/col/gk$c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/amap/api/col/gk;->J:Lcom/amap/api/col/gk$c;

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->ap:Z

    iget-object v0, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/gk;->D:Lcom/amap/api/col/gw;

    invoke-virtual {v0}, Lcom/amap/api/col/gw;->i()V

    :cond_2
    invoke-static {}, Lcom/amap/api/col/hc;->a()Lcom/amap/api/col/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/hc;->b()V

    const-string v0, "stopOff"

    invoke-direct {p0, v0}, Lcom/amap/api/col/gk;->a(Ljava/lang/String;)V

    const-string v0, "destroy"

    invoke-direct {p0, v0}, Lcom/amap/api/col/gk;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/gk;->l:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/gk;->ag:J

    invoke-direct {p0}, Lcom/amap/api/col/gk;->w()V

    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/col/gk;->r:Ljava/util/TreeMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/gk;->r:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->r:Ljava/util/TreeMap;

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->aa:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->ab:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->o:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->p:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amap/api/col/gk;->o()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/gk;->h:Landroid/bluetooth/BluetoothAdapter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "APS"

    const-string v2, "destroy part"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_6
    const-string v1, "APS"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/amap/api/col/gk;->J:Lcom/amap/api/col/gk$c;

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/gk;->J:Lcom/amap/api/col/gk$c;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "3.3.0"

    return-object v0
.end method

.method public declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/col/gk;->F:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/amap/api/col/gk;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/gk;->I:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amap/api/col/gk;->H:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/amap/api/col/gk;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0x14

    if-le v0, v4, :cond_0

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x1e

    if-lt v0, v4, :cond_2

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 8

    const/16 v3, 0x20

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v4

    sget-wide v6, Lcom/amap/api/col/gk;->T:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/amap/api/col/gk;->w()V

    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    invoke-static {}, Lcom/amap/api/col/hu;->g()Z

    move-result v0

    iget-object v2, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v4, "nbssid"

    invoke-static {v2, v4}, Lcom/amap/api/col/hu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    :try_start_2
    iget-object v2, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v4, "nbssid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x1

    :cond_3
    :goto_1
    move v4, v0

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/gk;->r:Ljava/util/TreeMap;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amap/api/col/gk;->r:Ljava/util/TreeMap;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/gk;->r:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v1

    :goto_3
    if-ge v2, v5, :cond_e

    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    :goto_4
    invoke-static {v1}, Lcom/amap/api/col/hu;->b(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_9

    :cond_5
    :goto_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_6
    :try_start_4
    iget-object v2, p0, Lcom/amap/api/col/gk;->L:Lorg/json/JSONObject;

    const-string v4, "nbssid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_5
    const-string v4, "APS"

    const-string v5, "setWifiOrder part"

    invoke-static {v2, v4, v5}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move v4, v0

    goto :goto_2

    :cond_8
    const-string v1, ""

    goto :goto_4

    :cond_9
    const/16 v1, 0x14

    if-le v5, v1, :cond_a

    iget v1, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v1}, Lcom/amap/api/col/gk;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_a
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    if-eqz v4, :cond_c

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v6, "*"

    const-string v7, "."

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_6
    if-lt v1, v3, :cond_b

    :try_start_7
    const-string v1, "<unknown ssid>"

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :cond_b
    :goto_7
    iget-object v1, p0, Lcom/amap/api/col/gk;->r:Ljava/util/TreeMap;

    iget v6, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v6, v6, 0x1e

    add-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    :try_start_8
    const-string v6, "APS"

    const-string v7, "setWifiOrder"

    invoke-static {v1, v6, v7}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_6

    :cond_c
    const-string v1, "<unknown ssid>"

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_7

    :cond_d
    const-string v1, "unkwn"

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/gk;->r:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, p0, Lcom/amap/api/col/gk;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/amap/api/col/gk;->r:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method public h()V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/gk;->u:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->C:Lcom/amap/api/col/gx;

    invoke-virtual {v0}, Lcom/amap/api/col/gx;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/gk;->S:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "updateWifi"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public i()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/col/gk;->w:J

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/amap/api/col/hl;->z()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v2

    sput-wide v2, Lcom/amap/api/col/gk;->w:J

    iget-object v2, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/hu;->e(Landroid/content/Context;)I

    move-result v2

    sget v3, Lcom/amap/api/col/gk;->y:I

    if-le v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/col/gk;->x:J

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/amap/api/col/hl;->A()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "APS"

    const-string v3, "isConfigNeedUpdate"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized j()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/col/gk;->at:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/amap/api/col/gk;->m:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/col/gk;->al:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/gz;->a()Lcom/amap/api/col/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/gz;->d()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/amap/api/col/gz;->a()Lcom/amap/api/col/gz;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/gk;->au:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/col/gz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/amap/api/col/gz;->a()Lcom/amap/api/col/gz;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/col/gz;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/amap/api/col/gz;->a()Lcom/amap/api/col/gz;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/gk;->au:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/gk;->z:Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/amap/api/col/gk;->ao:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/col/gz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/amap/api/col/gk;->ah:J

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    iput-object v0, p0, Lcom/amap/api/col/gk;->M:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/gk;->b(Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/amap/api/col/gk;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()V
    .locals 1

    invoke-static {}, Lcom/amap/api/col/hl;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/gk;->A:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/col/gk;->d(Landroid/content/Context;)V

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/gk;->t:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/api/col/hl;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/gk;->z()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/gk;->B()V

    :cond_1
    return-void
.end method
