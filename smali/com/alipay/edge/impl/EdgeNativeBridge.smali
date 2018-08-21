.class public Lcom/alipay/edge/impl/EdgeNativeBridge;
.super Ljava/lang/Object;
.source "EdgeNativeBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/edge/impl/EdgeNativeBridge$a;
    }
.end annotation


# static fields
.field private static final CALLBACK_REPORT_DEVICE_DATA:I = 0x2

.field private static isSoLoadesSuccess:Z

.field private static mDeviceDataComingListener:Lcom/alipay/edge/impl/EdgeNativeBridge$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/edge/impl/EdgeNativeBridge;->isSoLoadesSuccess:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/edge/impl/EdgeNativeBridge;->mDeviceDataComingListener:Lcom/alipay/edge/impl/EdgeNativeBridge$a;

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/security/senative/APSE;->getVersion()I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/edge/impl/EdgeNativeBridge;->isSoLoadesSuccess:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/alipay/edge/impl/EdgeNativeBridge;->isSoLoadesSuccess:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceDataAsync(ILcom/alipay/edge/impl/EdgeNativeBridge$a;)V
    .locals 0

    sput-object p1, Lcom/alipay/edge/impl/EdgeNativeBridge;->mDeviceDataComingListener:Lcom/alipay/edge/impl/EdgeNativeBridge$a;

    invoke-static {p0}, Lcom/alipay/edge/impl/EdgeNativeBridge;->getDeviceDataAsync(I)[B

    return-void
.end method

.method private static native getDeviceDataAsync(I)[B
.end method

.method public static native getDeviceDataSync(I[B)[B
.end method

.method public static native getRiskResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)I
.end method

.method public static native getSync()Z
.end method

.method public static native initialize(Ljava/lang/Object;[BLjava/lang/String;I)I
.end method

.method public static isLoadOk()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/edge/impl/EdgeNativeBridge;->isSoLoadesSuccess:Z

    return v0
.end method

.method private static onCallbackFromNativeWorld([BI)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/alipay/edge/impl/EdgeNativeBridge;->mDeviceDataComingListener:Lcom/alipay/edge/impl/EdgeNativeBridge$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/edge/impl/EdgeNativeBridge;->mDeviceDataComingListener:Lcom/alipay/edge/impl/EdgeNativeBridge$a;

    invoke-interface {v0, p0}, Lcom/alipay/edge/impl/EdgeNativeBridge$a;->a([B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static native postUserAction(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native updateResource([B)I
.end method
