.class public Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;
.super Ljava/lang/Object;
.source "GeocoderLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader$Holder;
    }
.end annotation


# static fields
.field private static KEY_ADMIN_AREA:Ljava/lang/String; = "admin_area"

.field private static KEY_FEATURE_NAME:Ljava/lang/String; = "feature_name"

.field private static KEY_IS_FAKE:Ljava/lang/String; = "is_fake"

.field private static KEY_LOCALITY:Ljava/lang/String; = "locality"

.field private static KEY_SUBLOCALITY:Ljava/lang/String; = "sublocality"

.field private static KEY_SUB_ADMIN_AREA:Ljava/lang/String; = "sub_admin_area"

.field public static final LEVEL_ADMIN_AREA:I = 0x1

.field public static final LEVEL_FEATURE_NAME:I = 0x4

.field public static final LEVEL_LOCALITY:I = 0x2

.field public static final LEVEL_SUBLOCALITY:I = 0x3

.field public static final LEVEL_SUB_ADMIN_AREA:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GeocoderLoader"

.field private static mAddressMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mIsStarting:Z

.field private mNeedFetchElse:Z

.field private mObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->mAddressMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->mObj:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->fetch()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->mAddressMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->toJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static createFakeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->KEY_IS_FAKE:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private fetch()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->mNeedFetchElse:Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->loadData()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->mIsStarting:Z

    return-void

    :cond_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-static {}, Lcom/miui/video/framework/task/ThreadPoolManager;->getNetworkThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader$2;

    invoke-direct {v4, p0, v2}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader$2;-><init>(Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->mObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v2, p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->mNeedFetchElse:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->fetch()V

    goto :goto_2

    :cond_2
    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->mIsStarting:Z

    :goto_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader$Holder;->INSTANCE:Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;

    return-object v0
.end method

.method public static getName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->KEY_SUB_ADMIN_AREA:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->KEY_FEATURE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->KEY_SUBLOCALITY:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->KEY_LOCALITY:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->KEY_ADMIN_AREA:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string p0, ""

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isFakeAddress(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->KEY_IS_FAKE:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return v1
.end method

.method private loadData()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Latitude:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Longtitude:Lorg/greenrobot/greendao/Property;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v2

    sget-object v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/Property;->isNull()Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static toJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->KEY_ADMIN_AREA:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->KEY_SUB_ADMIN_AREA:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->KEY_LOCALITY:Ljava/lang/String;

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->KEY_SUBLOCALITY:Ljava/lang/String;

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->KEY_FEATURE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public start()V
    .locals 3

    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->mObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->mNeedFetchElse:Z

    iget-boolean v2, p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->mIsStarting:Z

    if-eqz v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->mIsStarting:Z

    new-instance v1, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader$1;-><init>(Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;)V

    invoke-static {v1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
