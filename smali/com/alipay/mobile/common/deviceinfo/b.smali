.class public final Lcom/alipay/mobile/common/deviceinfo/b;
.super Ljava/lang/Object;
.source "ReportLocationService.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/deviceinfo/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/mobile/common/deviceinfo/a/a;

.field private d:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/b;->b:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/deviceinfo/a/a;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/deviceinfo/a/a;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/b;->c:Lcom/alipay/mobile/common/deviceinfo/a/a;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/common/deviceinfo/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/b;->d:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/b;->d:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/b;->d:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    return-object v0
.end method

.method public static a()Lcom/alipay/mobile/common/deviceinfo/b;
    .locals 2

    const-class v1, Lcom/alipay/mobile/common/deviceinfo/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/deviceinfo/b;->a:Lcom/alipay/mobile/common/deviceinfo/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/deviceinfo/b;

    invoke-direct {v0}, Lcom/alipay/mobile/common/deviceinfo/b;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/b;->a:Lcom/alipay/mobile/common/deviceinfo/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/alipay/mobile/common/deviceinfo/b;->a:Lcom/alipay/mobile/common/deviceinfo/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/alipay/mobile/common/deviceinfo/b;Ljava/util/Map;)Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/deviceinfo/b;->c(Ljava/util/Map;)Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/common/deviceinfo/b;Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationResPbPB;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/deviceinfo/b;->a(Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationResPbPB;)V

    return-void
.end method

.method private a(Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;)V
    .locals 5

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->a()Lcom/alipay/android/phone/inside/commonbiz/b/a/d;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-wide v2, v0

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->latitude:Ljava/lang/Double;

    invoke-virtual {v4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-wide v2, v0

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->longitude:Ljava/lang/Double;

    invoke-virtual {v4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-wide v2, v0

    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->accuracy:Ljava/lang/Double;

    invoke-virtual {v4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-wide v2, v0

    :goto_3
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->altitude:Ljava/lang/Double;

    invoke-virtual {v4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-wide v2, v0

    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->direction:Ljava/lang/Double;

    invoke-virtual {v4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->speed:Ljava/lang/Double;

    :cond_0
    :goto_6
    return-void

    :cond_1
    invoke-virtual {v4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "ReportLocationService"

    const-string/jumbo v3, "buildLbsLocationInfo error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private a(Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;Lcom/alipay/android/phone/inside/commonbiz/b/a/b;)V
    .locals 3

    const/4 v1, -0x1

    new-instance v2, Lcom/alipay/mobile/common/deviceinfo/model/CDMAInfoPbPB;

    invoke-direct {v2}, Lcom/alipay/mobile/common/deviceinfo/model/CDMAInfoPbPB;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/CDMAInfoPbPB;->bsid:Ljava/lang/Integer;

    invoke-virtual {p2}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/CDMAInfoPbPB;->nid:Ljava/lang/Integer;

    invoke-virtual {p2}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/CDMAInfoPbPB;->rssi:Ljava/lang/Integer;

    invoke-virtual {p2}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/CDMAInfoPbPB;->sid:Ljava/lang/Integer;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iput-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cdmaInfos:Ljava/util/List;

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3
.end method

.method private a(Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/inside/commonbiz/b/a/c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v3, -0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    move v1, v0

    :goto_0
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_7

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;

    if-eqz v0, :cond_0

    new-instance v6, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;

    invoke-direct {v6}, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v6, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->mnc:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v6, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->mcc:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v6, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->lac:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v6, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->cid:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v3

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;->rssi:Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6

    :cond_7
    iput-object v5, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->gsmInfos:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationResPbPB;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/b;->b:Landroid/content/Context;

    const-string/jumbo v1, "deviceLock"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "serverTimeDiff"

    iget-object v2, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationResPbPB;->serverTime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "ReportLocationService"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/deviceinfo/b;->b(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/common/deviceinfo/b;)Lcom/alipay/mobile/common/deviceinfo/a/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/b;->c:Lcom/alipay/mobile/common/deviceinfo/a/a;

    return-object v0
.end method

.method private b(Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;)V
    .locals 9

    :try_start_0
    const-string/jumbo v0, "com.alipay.android.phone.inside.PHONE_CASHIER_GET_TID"

    invoke-static {v0}, Lcom/alipay/android/phone/inside/framework/a/c;->b(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/service/a;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/inside/framework/service/a;->startForResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "ReportLocationService"

    const-string/jumbo v2, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid=null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "Tid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TidSeed"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "IMEI"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "IMSI"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "VirtualImei"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "VirtualImsi"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid=%s, key=%s, imei=%s, imsi=%s, vimei=%s, vimsi=%s"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    const/4 v8, 0x3

    aput-object v4, v7, v8

    const/4 v8, 0x4

    aput-object v5, v7, v8

    const/4 v8, 0x5

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v7

    const-string/jumbo v8, "ReportLocationService"

    invoke-interface {v7, v8, v6}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;

    invoke-direct {v6}, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;-><init>()V

    iget-object v7, p0, Lcom/alipay/mobile/common/deviceinfo/b;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->appPackageName:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/common/b/b;->n()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->deviceName:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/common/b/a;->e()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->productId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/common/b/a;->g()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->productVersion:Ljava/lang/String;

    iput-object v0, v6, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->vimsi:Ljava/lang/String;

    iput-object v5, v6, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->vimei:Ljava/lang/String;

    iput-object v4, v6, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->imsi:Ljava/lang/String;

    iput-object v3, v6, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->imei:Ljava/lang/String;

    iput-object v1, v6, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->tid:Ljava/lang/String;

    iput-object v2, v6, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->clientKey:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->utdid:Ljava/lang/String;

    iput-object v6, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->tidInfo:Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "ReportLocationService"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/deviceinfo/a;->a(Landroid/content/Context;)Lcom/alipay/mobile/common/deviceinfo/a;

    move-result-object v0

    const-string/jumbo v1, ".LocationCfg"

    const-string/jumbo v2, "unifylogin$"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/deviceinfo/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "ReportLocationService"

    const-string/jumbo v2, "disallow report alive time"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/common/deviceinfo/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/deviceinfo/c;-><init>(Lcom/alipay/mobile/common/deviceinfo/b;Ljava/util/Map;)V

    const-string/jumbo v2, "AliInside.reportDeviceLocation"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private c(Ljava/util/Map;)Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;

    invoke-direct {v2}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;-><init>()V

    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/deviceinfo/b;->a(Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/deviceinfo/b;->b()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    :goto_0
    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->apdid:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->imei:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->imsi:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->extraInfos:Ljava/util/List;

    invoke-direct {p0}, Lcom/alipay/mobile/common/deviceinfo/b;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiInfos:Ljava/util/List;

    const-string/jumbo v0, "Android"

    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->os:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->osVersion:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/common/deviceinfo/b;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiConn:Ljava/lang/Boolean;

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->a()Lcom/alipay/android/phone/inside/commonbiz/b/a/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->a()Lcom/alipay/android/phone/inside/commonbiz/b/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->lbsOpen:Ljava/lang/Boolean;

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->c()Lcom/alipay/android/phone/inside/commonbiz/b/a/e;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->c()Lcom/alipay/android/phone/inside/commonbiz/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->e()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->currentMobileOperator:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/common/deviceinfo/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->accessWirelessNetType:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->source:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->queryLbs:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "viewId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->viewId:Ljava/lang/String;

    :cond_0
    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/deviceinfo/b;->b(Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;)V

    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/deviceinfo/b;->c(Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;)V

    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/deviceinfo/b;->d(Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;)V

    return-object v2

    :cond_1
    const-string/jumbo v0, ""

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method private c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->b()Lcom/alipay/android/phone/inside/commonbiz/b/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/commonbiz/b/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->bluetoothOpen:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/commonbiz/b/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->bluetoothMac:Ljava/lang/String;

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/commonbiz/b/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "ReportLocationService"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private d(Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->c()Lcom/alipay/android/phone/inside/commonbiz/b/a/e;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->d()Lcom/alipay/android/phone/inside/commonbiz/b/a/b;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v0, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;->GSM:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    iput-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cellType:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/common/deviceinfo/b;->a(Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "ReportLocationService"

    const-string/jumbo v3, "buildBaseStation error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    :try_start_1
    sget-object v1, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;->CDMA:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    iput-object v1, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cellType:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/deviceinfo/b;->a(Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;Lcom/alipay/android/phone/inside/commonbiz/b/a/b;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->i()Z

    move-result v0

    return v0
.end method

.method private e()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/commonbiz/b/a/f;

    new-instance v5, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;

    invoke-direct {v5}, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v5, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->rssi:Ljava/lang/Double;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/f;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->ssid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/f;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;->wifiMac:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "ReportLocationService"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "ReportLocationService"

    const-string/jumbo v2, "begin report device location"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "viewId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/deviceinfo/b;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "ReportLocationService"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/b;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/deviceinfo/b;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    return-object v0
.end method
