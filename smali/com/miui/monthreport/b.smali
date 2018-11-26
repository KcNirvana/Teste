.class public Lcom/miui/monthreport/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aYL:Lcom/miui/monthreport/b;


# instance fields
.field private aYK:Landroid/location/LocationManager;

.field private aYM:Lcom/miui/monthreport/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/monthreport/b;->aYL:Lcom/miui/monthreport/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/miui/monthreport/b;->aYK:Landroid/location/LocationManager;

    new-instance v0, Lcom/miui/monthreport/c;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/monthreport/b;->aYK:Landroid/location/LocationManager;

    invoke-direct {v0, v1, v2}, Lcom/miui/monthreport/c;-><init>(Landroid/os/Looper;Landroid/location/LocationManager;)V

    iput-object v0, p0, Lcom/miui/monthreport/b;->aYM:Lcom/miui/monthreport/c;

    return-void
.end method

.method private buC(Ljava/util/List;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/miui/monthreport/LocationGetterManager$LocateType;->values()[Lcom/miui/monthreport/LocationGetterManager$LocateType;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    sget-object v4, Lcom/miui/monthreport/LocationGetterManager$LocateType;->aYN:Lcom/miui/monthreport/LocationGetterManager$LocateType;

    if-ne v3, v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static buD(ILcom/miui/monthreport/d;)Landroid/os/Message;
    .locals 1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p0, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private varargs buF([Lcom/miui/monthreport/LocationGetterManager$LocateType;)Ljava/util/List;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/monthreport/b;->buC(Ljava/util/List;)V

    :cond_1
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    sget-object v4, Lcom/miui/monthreport/LocationGetterManager$LocateType;->aYN:Lcom/miui/monthreport/LocationGetterManager$LocateType;

    if-ne v3, v4, :cond_3

    invoke-direct {p0, v1}, Lcom/miui/monthreport/b;->buC(Ljava/util/List;)V

    :cond_2
    new-instance v0, Lcom/miui/monthreport/p;

    invoke-direct {v0, p0}, Lcom/miui/monthreport/p;-><init>(Lcom/miui/monthreport/b;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1

    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic buG(Lcom/miui/monthreport/b;)Lcom/miui/monthreport/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/monthreport/b;->aYM:Lcom/miui/monthreport/c;

    return-object v0
.end method

.method static synthetic buH(ILcom/miui/monthreport/d;)Landroid/os/Message;
    .locals 1

    invoke-static {p0, p1}, Lcom/miui/monthreport/b;->buD(ILcom/miui/monthreport/d;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/monthreport/b;
    .locals 2

    const-class v1, Lcom/miui/monthreport/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/monthreport/b;->aYL:Lcom/miui/monthreport/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/monthreport/b;

    invoke-direct {v0, p0}, Lcom/miui/monthreport/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/monthreport/b;->aYL:Lcom/miui/monthreport/b;

    :cond_0
    sget-object v0, Lcom/miui/monthreport/b;->aYL:Lcom/miui/monthreport/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public varargs buE(ZLcom/miui/monthreport/e;[Lcom/miui/monthreport/LocationGetterManager$LocateType;)V
    .locals 8

    const/4 v1, 0x0

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/miui/monthreport/b;->buF([Lcom/miui/monthreport/LocationGetterManager$LocateType;)Ljava/util/List;

    move-result-object v2

    if-nez p1, :cond_5

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v1

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/monthreport/LocationGetterManager$LocateType;

    :try_start_0
    iget-object v4, p0, Lcom/miui/monthreport/b;->aYK:Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/miui/monthreport/LocationGetterManager$LocateType;->buI(Lcom/miui/monthreport/LocationGetterManager$LocateType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    invoke-interface {p2, v1, v0}, Lcom/miui/monthreport/e;->buQ(ZLandroid/location/Location;)V

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    new-instance v0, Lcom/miui/monthreport/d;

    invoke-direct {v0, p0, p2, v2}, Lcom/miui/monthreport/d;-><init>(Lcom/miui/monthreport/b;Lcom/miui/monthreport/e;Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/monthreport/b;->aYM:Lcom/miui/monthreport/c;

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/miui/monthreport/b;->buD(ILcom/miui/monthreport/d;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/monthreport/c;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method
