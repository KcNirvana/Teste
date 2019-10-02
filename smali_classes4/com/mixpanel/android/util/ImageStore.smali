.class public Lcom/mixpanel/android/util/ImageStore;
.super Ljava/lang/Object;
.source "ImageStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/util/ImageStore$CantGetImageException;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIRECTORY_PREFIX:Ljava/lang/String; = "MixpanelAPI.Images."

.field private static final FILE_PREFIX:Ljava/lang/String; = "MP_IMG_"

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.ImageStore"

.field private static final MAX_BITMAP_SIZE:I = 0x989680

.field private static sMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

.field private final mDigest:Ljava/security/MessageDigest;

.field private final mDirectory:Ljava/io/File;

.field private final mPoster:Lcom/mixpanel/android/util/RemoteService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MixpanelAPI.Images."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/mixpanel/android/util/HttpService;

    invoke-direct {v0}, Lcom/mixpanel/android/util/HttpService;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/mixpanel/android/util/ImageStore;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/util/RemoteService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/util/RemoteService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/mixpanel/android/util/ImageStore;->mDirectory:Ljava/io/File;

    iput-object p3, p0, Lcom/mixpanel/android/util/ImageStore;->mPoster:Lcom/mixpanel/android/util/RemoteService;

    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/mixpanel/android/util/ImageStore;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    :try_start_0
    const-string p1, "SHA1"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "MixpanelAPI.ImageStore"

    const-string p2, "Images won\'t be stored because this platform doesn\'t supply a SHA1 hash function"

    invoke-static {p1, p2}, Lcom/mixpanel/android/util/MPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/mixpanel/android/util/ImageStore;->mDigest:Ljava/security/MessageDigest;

    sget-object p1, Lcom/mixpanel/android/util/ImageStore;->sMemoryCache:Landroid/util/LruCache;

    if-nez p1, :cond_1

    const-class p1, Lcom/mixpanel/android/util/ImageStore;

    monitor-enter p1

    :try_start_1
    sget-object p2, Lcom/mixpanel/android/util/ImageStore;->sMemoryCache:Landroid/util/LruCache;

    if-nez p2, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide p2

    const-wide/16 v0, 0x400

    div-long/2addr p2, v0

    long-to-int p2, p2

    iget-object p3, p0, Lcom/mixpanel/android/util/ImageStore;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    invoke-virtual {p3}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getImageCacheMaxMemoryFactor()I

    move-result p3

    div-int/2addr p2, p3

    new-instance p3, Lcom/mixpanel/android/util/ImageStore$1;

    invoke-direct {p3, p0, p2}, Lcom/mixpanel/android/util/ImageStore$1;-><init>(Lcom/mixpanel/android/util/ImageStore;I)V

    sput-object p3, Lcom/mixpanel/android/util/ImageStore;->sMemoryCache:Landroid/util/LruCache;

    :cond_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_1
    :goto_1
    return-void
.end method

.method public static addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {p0}, Lcom/mixpanel/android/util/ImageStore;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mixpanel/android/util/ImageStore;->sMemoryCache:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mixpanel/android/util/ImageStore;->sMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v1, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static clearMemCache()V
    .locals 2

    sget-object v0, Lcom/mixpanel/android/util/ImageStore;->sMemoryCache:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mixpanel/android/util/ImageStore;->sMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static decodeImage(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/util/ImageStore$CantGetImageException;
        }
    .end annotation

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    mul-float v1, v1, v0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float v1, v1, v0

    invoke-static {}, Lcom/mixpanel/android/util/ImageStore;->getAvailableMemory()F

    move-result v0

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    new-instance p0, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;

    const-string v0, "Bitmap on disk can\'t be opened or was corrupt"

    invoke-direct {p0, v0}, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;

    const-string v0, "Do not have enough memory for the image"

    invoke-direct {p0, v0}, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getAvailableMemory()F
    .locals 5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-float v1, v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-float v0, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/mixpanel/android/util/ImageStore;->sMemoryCache:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mixpanel/android/util/ImageStore;->sMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v1, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeBitmapFromMemCache(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/mixpanel/android/util/ImageStore;->sMemoryCache:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mixpanel/android/util/ImageStore;->sMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v1, p0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private storedFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/mixpanel/android/util/ImageStore;->mDigest:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/util/ImageStore;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MP_IMG_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mixpanel/android/util/ImageStore;->mDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public clearStorage()V
    .locals 6

    iget-object v0, p0, Lcom/mixpanel/android/util/ImageStore;->mDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MP_IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mixpanel/android/util/ImageStore;->clearMemCache()V

    return-void
.end method

.method public deleteStorage(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/mixpanel/android/util/ImageStore;->storedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-static {p1}, Lcom/mixpanel/android/util/ImageStore;->removeBitmapFromMemCache(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/util/ImageStore$CantGetImageException;
        }
    .end annotation

    invoke-static {p1}, Lcom/mixpanel/android/util/ImageStore;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mixpanel/android/util/ImageStore;->getImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/mixpanel/android/util/ImageStore;->decodeImage(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mixpanel/android/util/ImageStore;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v0
.end method

.method public getImageFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/util/ImageStore$CantGetImageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/mixpanel/android/util/ImageStore;->storedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/util/ImageStore;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/mixpanel/android/util/ImageStore;->mPoster:Lcom/mixpanel/android/util/RemoteService;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1}, Lcom/mixpanel/android/util/RemoteService;->performRequest(Ljava/lang/String;Ljava/util/Map;Ljavax/net/ssl/SSLSocketFactory;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    array-length v1, p1

    const v2, 0x989680

    if-ge v1, v2, :cond_2

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string v1, "MixpanelAPI.ImageStore"

    const-string v2, "Problem closing output file"

    invoke-static {v1, v2, p1}, Lcom/mixpanel/android/util/MPLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v3, v1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v3, v1

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v3, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    :goto_0
    :try_start_4
    new-instance v0, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;

    const-string v1, "Can\'t store bitmap"

    invoke-direct {v0, v1, p1}, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p1

    :goto_1
    new-instance v0, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;

    const-string v1, "It appears that ImageStore is misconfigured, or disk storage is unavailable- can\'t write to bitmap directory"

    invoke-direct {v0, v1, p1}, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    const-string v1, "MixpanelAPI.ImageStore"

    const-string v2, "Problem closing output file"

    invoke-static {v1, v2, v0}, Lcom/mixpanel/android/util/MPLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    throw p1

    :cond_2
    :goto_4
    return-object v0

    :catch_6
    move-exception p1

    new-instance v0, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;

    const-string v1, "Couldn\'t download image due to service availability"

    invoke-direct {v0, v1, p1}, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_7
    move-exception p1

    new-instance v0, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;

    const-string v1, "Can\'t download bitmap"

    invoke-direct {v0, v1, p1}, Lcom/mixpanel/android/util/ImageStore$CantGetImageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
