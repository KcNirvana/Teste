.class public Lcom/autonavi/its/sdk/util/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/its/sdk/util/DeviceInfo$GetCellInfoWorker;
    }
.end annotation


# static fields
.field private static final CELL_LOCATION_UPDATE_SPAN:J = 0x2710L

.field private static instance:Lcom/autonavi/its/sdk/util/DeviceInfo;

.field private static lastCellLocationUpdateTime:J

.field private static mNetType:Ljava/lang/String;


# instance fields
.field private ant:I

.field private bid:I

.field private cid:I

.field private lac:I

.field private mAMapVersion:Ljava/lang/String;

.field private mAccurate:I

.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private mDensityDpi:I

.field private final mDevice:Ljava/lang/String;

.field private mGLRender:Ljava/lang/String;

.field private mHeight:I

.field private mLastStartTime:I

.field private mLastStopTime:I

.field private mLat:I

.field private mLon:I

.field private final mManufacture:Ljava/lang/String;

.field private final mModel:Ljava/lang/String;

.field private mSDKVersion:I

.field private mStartTime:I

.field private mStopTime:I

.field private mStrength:I

.field private mWidth:I

.field private mcc:I

.field private mnc:I

.field private nid:I

.field private nt:I

.field private pt:I

.field private sid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->lastCellLocationUpdateTime:J

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mNetType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mModel:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mDevice:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mManufacture:Ljava/lang/String;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mSDKVersion:I

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mAMapVersion:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mGLRender:Ljava/lang/String;

    iput v4, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLastStartTime:I

    iput v4, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLastStopTime:I

    iput-object p1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mWidth:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mHeight:I

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mDensity:F

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mDensityDpi:I

    iget-object v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mAMapVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getAppTimeStamp()V
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x0

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLastStartTime:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLastStopTime:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SharedPreferences"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "AppStartTime"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLastStartTime:I

    const-string/jumbo v2, "AppStopTime"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLastStopTime:I

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "AppStartTime"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "AppStopTime"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/autonavi/its/sdk/util/DeviceInfo;
    .locals 3

    const-class v1, Lcom/autonavi/its/sdk/util/DeviceInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->instance:Lcom/autonavi/its/sdk/util/DeviceInfo;

    if-nez v0, :cond_0

    const-class v2, Lcom/autonavi/its/sdk/util/DeviceInfo;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Lcom/autonavi/its/sdk/util/DeviceInfo;

    invoke-direct {v0, p0}, Lcom/autonavi/its/sdk/util/DeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->instance:Lcom/autonavi/its/sdk/util/DeviceInfo;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->instance:Lcom/autonavi/its/sdk/util/DeviceInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_5
    sget-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->instance:Lcom/autonavi/its/sdk/util/DeviceInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public static getNetType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mNetType:Ljava/lang/String;

    return-object v0
.end method

.method private static setNetType(I)V
    .locals 1

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "1xRTT"

    sput-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mNetType:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "CDMA"

    sput-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mNetType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "EDGE"

    sput-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mNetType:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "EVDO_0"

    sput-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mNetType:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "EVDO_A"

    sput-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mNetType:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "GPRS"

    sput-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mNetType:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "HSDPA"

    sput-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mNetType:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "HSPA"

    sput-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mNetType:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "HSUPA"

    sput-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mNetType:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "IDEN"

    sput-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mNetType:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "UMTS"

    sput-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mNetType:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "UNKNOWN"

    sput-object v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mNetType:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_5
        :pswitch_2
        :pswitch_a
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private toByte()[B
    .locals 3

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mWidth:I

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->convertShort(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mHeight:I

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->convertShort(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLon:I

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->convertInt(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLat:I

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->convertInt(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->ant:I

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->covertBytes(B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->nt:I

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->covertBytes(B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->pt:I

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->covertBytes(B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mcc:I

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->convertShort(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mnc:I

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->convertShort(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->lac:I

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->convertInt(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->cid:I

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->convertInt(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->sid:I

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->convertInt(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->nid:I

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->convertInt(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->bid:I

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->convertInt(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mStrength:I

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->convertInt(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mSDKVersion:I

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->convertShort(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v2, ""

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->get2BString(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mModel:Ljava/lang/String;

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->get2BString(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mDevice:Ljava/lang/String;

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->get2BString(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mManufacture:Ljava/lang/String;

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->get2BString(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mAMapVersion:Ljava/lang/String;

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->get2BString(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLastStartTime:I

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->convertInt(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLastStopTime:I

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->convertInt(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mGLRender:Ljava/lang/String;

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->get2BString(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mAccurate:I

    invoke-static {v2}, Lcom/autonavi/its/sdk/util/Convert;->convertShort(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLastStartTime:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLastStopTime:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private tryToUpdateCellInfo(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/autonavi/its/sdk/util/DeviceInfo;->lastCellLocationUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/sdk/util/DeviceInfo;->getCellInfo()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/autonavi/its/sdk/util/DeviceInfo;->lastCellLocationUpdateTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method public getAMapVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mAMapVersion:Ljava/lang/String;

    return-object v0
.end method

.method getCellInfo()V
    .locals 11

    const/4 v10, 0x3

    :try_start_0
    iget-object v8, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    iput v8, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->ant:I

    :cond_0
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    iput v8, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->nt:I

    iget v8, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->nt:I

    invoke-static {v8}, Lcom/autonavi/its/sdk/util/DeviceInfo;->setNetType(I)V

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    iput v8, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->pt:I

    iget v8, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->pt:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    instance-of v8, v2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v8

    iput v8, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->lac:I

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v8

    iput v8, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->cid:I

    :cond_1
    :goto_0
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_1
    const-string/jumbo v8, "null"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v10, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mcc:I

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mnc:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_2
    iget v8, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->pt:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    instance-of v8, v2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v8

    iput v8, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->sid:I

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v8

    iput v8, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->nid:I

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v8

    iput v8, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->bid:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v8

    goto :goto_1

    :catch_2
    move-exception v8

    goto :goto_1
.end method

.method public getScreenDensity()F
    .locals 3

    const/4 v1, 0x0

    iget v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mDensity:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mWidth:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mHeight:I

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mDensity:F

    :cond_2
    iget v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mDensity:F

    goto :goto_0
.end method

.method public getScreenDensityDpi()I
    .locals 2

    iget v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mDensityDpi:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mWidth:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mHeight:I

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mDensity:F

    :cond_2
    iget v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mDensityDpi:I

    goto :goto_0
.end method

.method public getScreenHeight()I
    .locals 2

    iget v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mHeight:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mWidth:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mHeight:I

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mDensity:F

    :cond_2
    iget v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mHeight:I

    goto :goto_0
.end method

.method public getScreenWidth()I
    .locals 2

    iget v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mWidth:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mWidth:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mHeight:I

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mDensity:F

    :cond_2
    iget v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mWidth:I

    goto :goto_0
.end method

.method public setGLRender(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mGLRender:Ljava/lang/String;

    return-void
.end method

.method public setLocation(III)V
    .locals 2

    const/16 v1, 0x7fff

    iput p1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLon:I

    iput p2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLat:I

    iput p3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mAccurate:I

    iget v0, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mAccurate:I

    if-le v0, v1, :cond_0

    iput v1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mAccurate:I

    :cond_0
    return-void
.end method

.method public setStartTime()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/autonavi/its/sdk/util/TimeUtil;->getTimeSecondFrom2011()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mStartTime:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mSDKVersion:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mAMapVersion:Ljava/lang/String;

    iput v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLon:I

    iput v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLat:I

    iput v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mAccurate:I

    iput v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mStrength:I

    iput v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mStopTime:I

    iput v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLastStartTime:I

    iput v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLastStopTime:I

    return-void
.end method

.method public setStopTime()V
    .locals 6

    const/4 v5, -0x1

    invoke-static {}, Lcom/autonavi/its/sdk/util/TimeUtil;->getTimeSecondFrom2011()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mStopTime:I

    iget-object v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SharedPreferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "AppStartTime"

    iget v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mStartTime:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "AppStopTime"

    iget v3, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mStopTime:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput v5, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLastStartTime:I

    iput v5, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mLastStopTime:I

    return-void
.end method

.method public setStrength(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mStrength:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/autonavi/its/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/autonavi/its/sdk/util/DeviceInfo;->tryToUpdateCellInfo(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/autonavi/its/sdk/util/DeviceInfo;->getAppTimeStamp()V

    invoke-direct {p0}, Lcom/autonavi/its/sdk/util/DeviceInfo;->toByte()[B

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/its/sdk/util/Convert;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
