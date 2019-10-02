.class public final enum Lcom/miui/zeus/columbus/common/AdError;
.super Ljava/lang/Enum;
.source "AdError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/zeus/columbus/common/AdError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/zeus/columbus/common/AdError;

.field public static final enum ERROR_EXCEPTION:Lcom/miui/zeus/columbus/common/AdError;

.field public static final enum ERROR_INVALID_RESPONSE:Lcom/miui/zeus/columbus/common/AdError;

.field public static final enum ERROR_NETWORK:Lcom/miui/zeus/columbus/common/AdError;

.field public static final enum ERROR_NO_AD:Lcom/miui/zeus/columbus/common/AdError;

.field public static final enum ERROR_NULL_RESPONSE:Lcom/miui/zeus/columbus/common/AdError;

.field public static final enum ERROR_SDK_NOT_READY:Lcom/miui/zeus/columbus/common/AdError;

.field public static final enum ERROR_SERVER:Lcom/miui/zeus/columbus/common/AdError;

.field public static final enum ERROR_SPLASH_CONFIG_NOT_READY:Lcom/miui/zeus/columbus/common/AdError;

.field public static final enum ERROR_SPLASH_CREATE_VIEW_FAIL:Lcom/miui/zeus/columbus/common/AdError;

.field public static final enum ERROR_SPLASH_SHOW_TOO_OFTEN:Lcom/miui/zeus/columbus/common/AdError;

.field public static final enum ERROR_TIMEOUT:Lcom/miui/zeus/columbus/common/AdError;

.field public static final enum ERROR_UNKNOWN:Lcom/miui/zeus/columbus/common/AdError;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/miui/zeus/columbus/common/AdError;

    const-string v1, "ERROR_NO_AD"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/zeus/columbus/common/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_NO_AD:Lcom/miui/zeus/columbus/common/AdError;

    new-instance v0, Lcom/miui/zeus/columbus/common/AdError;

    const-string v1, "ERROR_NETWORK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/miui/zeus/columbus/common/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_NETWORK:Lcom/miui/zeus/columbus/common/AdError;

    new-instance v0, Lcom/miui/zeus/columbus/common/AdError;

    const-string v1, "ERROR_TIMEOUT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/zeus/columbus/common/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_TIMEOUT:Lcom/miui/zeus/columbus/common/AdError;

    new-instance v0, Lcom/miui/zeus/columbus/common/AdError;

    const-string v1, "ERROR_INVALID_RESPONSE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/miui/zeus/columbus/common/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_INVALID_RESPONSE:Lcom/miui/zeus/columbus/common/AdError;

    new-instance v0, Lcom/miui/zeus/columbus/common/AdError;

    const-string v1, "ERROR_SERVER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/miui/zeus/columbus/common/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_SERVER:Lcom/miui/zeus/columbus/common/AdError;

    new-instance v0, Lcom/miui/zeus/columbus/common/AdError;

    const-string v1, "ERROR_SDK_NOT_READY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/miui/zeus/columbus/common/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_SDK_NOT_READY:Lcom/miui/zeus/columbus/common/AdError;

    new-instance v0, Lcom/miui/zeus/columbus/common/AdError;

    const-string v1, "ERROR_SPLASH_CONFIG_NOT_READY"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/miui/zeus/columbus/common/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_SPLASH_CONFIG_NOT_READY:Lcom/miui/zeus/columbus/common/AdError;

    new-instance v0, Lcom/miui/zeus/columbus/common/AdError;

    const-string v1, "ERROR_SPLASH_SHOW_TOO_OFTEN"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lcom/miui/zeus/columbus/common/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_SPLASH_SHOW_TOO_OFTEN:Lcom/miui/zeus/columbus/common/AdError;

    new-instance v0, Lcom/miui/zeus/columbus/common/AdError;

    const-string v1, "ERROR_SPLASH_CREATE_VIEW_FAIL"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11}, Lcom/miui/zeus/columbus/common/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_SPLASH_CREATE_VIEW_FAIL:Lcom/miui/zeus/columbus/common/AdError;

    new-instance v0, Lcom/miui/zeus/columbus/common/AdError;

    const-string v1, "ERROR_NULL_RESPONSE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v11, v12}, Lcom/miui/zeus/columbus/common/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_NULL_RESPONSE:Lcom/miui/zeus/columbus/common/AdError;

    new-instance v0, Lcom/miui/zeus/columbus/common/AdError;

    const-string v1, "ERROR_EXCEPTION"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v12, v13}, Lcom/miui/zeus/columbus/common/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_EXCEPTION:Lcom/miui/zeus/columbus/common/AdError;

    new-instance v0, Lcom/miui/zeus/columbus/common/AdError;

    const-string v1, "ERROR_UNKNOWN"

    const/16 v14, 0x3e8

    invoke-direct {v0, v1, v13, v14}, Lcom/miui/zeus/columbus/common/AdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_UNKNOWN:Lcom/miui/zeus/columbus/common/AdError;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/miui/zeus/columbus/common/AdError;

    sget-object v1, Lcom/miui/zeus/columbus/common/AdError;->ERROR_NO_AD:Lcom/miui/zeus/columbus/common/AdError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/zeus/columbus/common/AdError;->ERROR_NETWORK:Lcom/miui/zeus/columbus/common/AdError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/zeus/columbus/common/AdError;->ERROR_TIMEOUT:Lcom/miui/zeus/columbus/common/AdError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/zeus/columbus/common/AdError;->ERROR_INVALID_RESPONSE:Lcom/miui/zeus/columbus/common/AdError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/zeus/columbus/common/AdError;->ERROR_SERVER:Lcom/miui/zeus/columbus/common/AdError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/zeus/columbus/common/AdError;->ERROR_SDK_NOT_READY:Lcom/miui/zeus/columbus/common/AdError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/zeus/columbus/common/AdError;->ERROR_SPLASH_CONFIG_NOT_READY:Lcom/miui/zeus/columbus/common/AdError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/zeus/columbus/common/AdError;->ERROR_SPLASH_SHOW_TOO_OFTEN:Lcom/miui/zeus/columbus/common/AdError;

    aput-object v1, v0, v9

    sget-object v1, Lcom/miui/zeus/columbus/common/AdError;->ERROR_SPLASH_CREATE_VIEW_FAIL:Lcom/miui/zeus/columbus/common/AdError;

    aput-object v1, v0, v10

    sget-object v1, Lcom/miui/zeus/columbus/common/AdError;->ERROR_NULL_RESPONSE:Lcom/miui/zeus/columbus/common/AdError;

    aput-object v1, v0, v11

    sget-object v1, Lcom/miui/zeus/columbus/common/AdError;->ERROR_EXCEPTION:Lcom/miui/zeus/columbus/common/AdError;

    aput-object v1, v0, v12

    sget-object v1, Lcom/miui/zeus/columbus/common/AdError;->ERROR_UNKNOWN:Lcom/miui/zeus/columbus/common/AdError;

    aput-object v1, v0, v13

    sput-object v0, Lcom/miui/zeus/columbus/common/AdError;->$VALUES:[Lcom/miui/zeus/columbus/common/AdError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/zeus/columbus/common/AdError;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/miui/zeus/columbus/common/AdError;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_UNKNOWN:Lcom/miui/zeus/columbus/common/AdError;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_EXCEPTION:Lcom/miui/zeus/columbus/common/AdError;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_NULL_RESPONSE:Lcom/miui/zeus/columbus/common/AdError;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_SPLASH_CREATE_VIEW_FAIL:Lcom/miui/zeus/columbus/common/AdError;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_SPLASH_SHOW_TOO_OFTEN:Lcom/miui/zeus/columbus/common/AdError;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_SPLASH_CONFIG_NOT_READY:Lcom/miui/zeus/columbus/common/AdError;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_SDK_NOT_READY:Lcom/miui/zeus/columbus/common/AdError;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_SERVER:Lcom/miui/zeus/columbus/common/AdError;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_INVALID_RESPONSE:Lcom/miui/zeus/columbus/common/AdError;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_TIMEOUT:Lcom/miui/zeus/columbus/common/AdError;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_NETWORK:Lcom/miui/zeus/columbus/common/AdError;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/miui/zeus/columbus/common/AdError;->ERROR_NO_AD:Lcom/miui/zeus/columbus/common/AdError;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/zeus/columbus/common/AdError;
    .locals 1

    const-class v0, Lcom/miui/zeus/columbus/common/AdError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/zeus/columbus/common/AdError;

    return-object p0
.end method

.method public static values()[Lcom/miui/zeus/columbus/common/AdError;
    .locals 1

    sget-object v0, Lcom/miui/zeus/columbus/common/AdError;->$VALUES:[Lcom/miui/zeus/columbus/common/AdError;

    invoke-virtual {v0}, [Lcom/miui/zeus/columbus/common/AdError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/zeus/columbus/common/AdError;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/common/AdError;->mValue:I

    return v0
.end method
