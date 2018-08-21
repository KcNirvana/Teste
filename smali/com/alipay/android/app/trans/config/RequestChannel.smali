.class public final enum Lcom/alipay/android/app/trans/config/RequestChannel;
.super Ljava/lang/Enum;
.source "RequestChannel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/trans/config/RequestChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/trans/config/RequestChannel;

.field public static final enum BYTES_CASHIER:Lcom/alipay/android/app/trans/config/RequestChannel;

.field public static final enum BYTES_SECURITY:Lcom/alipay/android/app/trans/config/RequestChannel;

.field public static final enum DYNAMIC_HOST:Lcom/alipay/android/app/trans/config/RequestChannel;

.field public static final enum PB_V1_CASHIER:Lcom/alipay/android/app/trans/config/RequestChannel;

.field public static final enum PB_V1_SECURITY:Lcom/alipay/android/app/trans/config/RequestChannel;

.field public static final enum PB_V2_CASHIER:Lcom/alipay/android/app/trans/config/RequestChannel;

.field public static final enum PB_V2_SDK:Lcom/alipay/android/app/trans/config/RequestChannel;

.field public static final enum PB_V2_SECURITY:Lcom/alipay/android/app/trans/config/RequestChannel;

.field public static final enum PB_V3_CASHIER:Lcom/alipay/android/app/trans/config/RequestChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/android/app/trans/config/RequestChannel;

    const-string/jumbo v1, "PB_V1_CASHIER"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/trans/config/RequestChannel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/trans/config/RequestChannel;->PB_V1_CASHIER:Lcom/alipay/android/app/trans/config/RequestChannel;

    new-instance v0, Lcom/alipay/android/app/trans/config/RequestChannel;

    const-string/jumbo v1, "PB_V1_SECURITY"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/trans/config/RequestChannel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/trans/config/RequestChannel;->PB_V1_SECURITY:Lcom/alipay/android/app/trans/config/RequestChannel;

    new-instance v0, Lcom/alipay/android/app/trans/config/RequestChannel;

    const-string/jumbo v1, "PB_V2_CASHIER"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/app/trans/config/RequestChannel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/trans/config/RequestChannel;->PB_V2_CASHIER:Lcom/alipay/android/app/trans/config/RequestChannel;

    new-instance v0, Lcom/alipay/android/app/trans/config/RequestChannel;

    const-string/jumbo v1, "PB_V2_SECURITY"

    invoke-direct {v0, v1, v6}, Lcom/alipay/android/app/trans/config/RequestChannel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/trans/config/RequestChannel;->PB_V2_SECURITY:Lcom/alipay/android/app/trans/config/RequestChannel;

    new-instance v0, Lcom/alipay/android/app/trans/config/RequestChannel;

    const-string/jumbo v1, "PB_V2_SDK"

    invoke-direct {v0, v1, v7}, Lcom/alipay/android/app/trans/config/RequestChannel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/trans/config/RequestChannel;->PB_V2_SDK:Lcom/alipay/android/app/trans/config/RequestChannel;

    new-instance v0, Lcom/alipay/android/app/trans/config/RequestChannel;

    const-string/jumbo v1, "PB_V3_CASHIER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/trans/config/RequestChannel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/trans/config/RequestChannel;->PB_V3_CASHIER:Lcom/alipay/android/app/trans/config/RequestChannel;

    new-instance v0, Lcom/alipay/android/app/trans/config/RequestChannel;

    const-string/jumbo v1, "BYTES_CASHIER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/trans/config/RequestChannel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/trans/config/RequestChannel;->BYTES_CASHIER:Lcom/alipay/android/app/trans/config/RequestChannel;

    new-instance v0, Lcom/alipay/android/app/trans/config/RequestChannel;

    const-string/jumbo v1, "BYTES_SECURITY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/trans/config/RequestChannel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/trans/config/RequestChannel;->BYTES_SECURITY:Lcom/alipay/android/app/trans/config/RequestChannel;

    new-instance v0, Lcom/alipay/android/app/trans/config/RequestChannel;

    const-string/jumbo v1, "DYNAMIC_HOST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/trans/config/RequestChannel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/trans/config/RequestChannel;->DYNAMIC_HOST:Lcom/alipay/android/app/trans/config/RequestChannel;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/alipay/android/app/trans/config/RequestChannel;

    sget-object v1, Lcom/alipay/android/app/trans/config/RequestChannel;->PB_V1_CASHIER:Lcom/alipay/android/app/trans/config/RequestChannel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/trans/config/RequestChannel;->PB_V1_SECURITY:Lcom/alipay/android/app/trans/config/RequestChannel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/trans/config/RequestChannel;->PB_V2_CASHIER:Lcom/alipay/android/app/trans/config/RequestChannel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/trans/config/RequestChannel;->PB_V2_SECURITY:Lcom/alipay/android/app/trans/config/RequestChannel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/trans/config/RequestChannel;->PB_V2_SDK:Lcom/alipay/android/app/trans/config/RequestChannel;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/trans/config/RequestChannel;->PB_V3_CASHIER:Lcom/alipay/android/app/trans/config/RequestChannel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/trans/config/RequestChannel;->BYTES_CASHIER:Lcom/alipay/android/app/trans/config/RequestChannel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/app/trans/config/RequestChannel;->BYTES_SECURITY:Lcom/alipay/android/app/trans/config/RequestChannel;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/android/app/trans/config/RequestChannel;->DYNAMIC_HOST:Lcom/alipay/android/app/trans/config/RequestChannel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/trans/config/RequestChannel;->$VALUES:[Lcom/alipay/android/app/trans/config/RequestChannel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/trans/config/RequestChannel;
    .locals 1

    const-class v0, Lcom/alipay/android/app/trans/config/RequestChannel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/trans/config/RequestChannel;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/trans/config/RequestChannel;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/trans/config/RequestChannel;->$VALUES:[Lcom/alipay/android/app/trans/config/RequestChannel;

    invoke-virtual {v0}, [Lcom/alipay/android/app/trans/config/RequestChannel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/trans/config/RequestChannel;

    return-object v0
.end method
