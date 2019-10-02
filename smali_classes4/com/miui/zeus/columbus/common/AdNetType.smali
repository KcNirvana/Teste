.class public final enum Lcom/miui/zeus/columbus/common/AdNetType;
.super Ljava/lang/Enum;
.source "AdNetType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/zeus/columbus/common/AdNetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/zeus/columbus/common/AdNetType;

.field public static final enum NETWORK_2G:Lcom/miui/zeus/columbus/common/AdNetType;

.field public static final enum NETWORK_3G:Lcom/miui/zeus/columbus/common/AdNetType;

.field public static final enum NETWORK_4G:Lcom/miui/zeus/columbus/common/AdNetType;

.field public static final enum NETWORK_ALL:Lcom/miui/zeus/columbus/common/AdNetType;

.field public static final enum NETWORK_MOBILE:Lcom/miui/zeus/columbus/common/AdNetType;

.field public static final enum NETWORK_WIFI:Lcom/miui/zeus/columbus/common/AdNetType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/miui/zeus/columbus/common/AdNetType;

    const-string v1, "NETWORK_WIFI"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/zeus/columbus/common/AdNetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_WIFI:Lcom/miui/zeus/columbus/common/AdNetType;

    new-instance v0, Lcom/miui/zeus/columbus/common/AdNetType;

    const-string v1, "NETWORK_2G"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/miui/zeus/columbus/common/AdNetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_2G:Lcom/miui/zeus/columbus/common/AdNetType;

    new-instance v0, Lcom/miui/zeus/columbus/common/AdNetType;

    const-string v1, "NETWORK_3G"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/zeus/columbus/common/AdNetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_3G:Lcom/miui/zeus/columbus/common/AdNetType;

    new-instance v0, Lcom/miui/zeus/columbus/common/AdNetType;

    const-string v1, "NETWORK_4G"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/miui/zeus/columbus/common/AdNetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_4G:Lcom/miui/zeus/columbus/common/AdNetType;

    new-instance v0, Lcom/miui/zeus/columbus/common/AdNetType;

    const-string v1, "NETWORK_MOBILE"

    const/4 v7, -0x2

    invoke-direct {v0, v1, v5, v7}, Lcom/miui/zeus/columbus/common/AdNetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_MOBILE:Lcom/miui/zeus/columbus/common/AdNetType;

    new-instance v0, Lcom/miui/zeus/columbus/common/AdNetType;

    const-string v1, "NETWORK_ALL"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/miui/zeus/columbus/common/AdNetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_ALL:Lcom/miui/zeus/columbus/common/AdNetType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/zeus/columbus/common/AdNetType;

    sget-object v1, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_WIFI:Lcom/miui/zeus/columbus/common/AdNetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_2G:Lcom/miui/zeus/columbus/common/AdNetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_3G:Lcom/miui/zeus/columbus/common/AdNetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_4G:Lcom/miui/zeus/columbus/common/AdNetType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_MOBILE:Lcom/miui/zeus/columbus/common/AdNetType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_ALL:Lcom/miui/zeus/columbus/common/AdNetType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/zeus/columbus/common/AdNetType;->$VALUES:[Lcom/miui/zeus/columbus/common/AdNetType;

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

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/zeus/columbus/common/AdNetType;->mValue:I

    iput p3, p0, Lcom/miui/zeus/columbus/common/AdNetType;->mValue:I

    return-void
.end method

.method public static is2GAllowed(I)Z
    .locals 1

    sget-object v0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_2G:Lcom/miui/zeus/columbus/common/AdNetType;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/common/AdNetType;->value()I

    move-result v0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static is3GAllowed(I)Z
    .locals 1

    sget-object v0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_3G:Lcom/miui/zeus/columbus/common/AdNetType;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/common/AdNetType;->value()I

    move-result v0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static is4GAllowed(I)Z
    .locals 1

    sget-object v0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_4G:Lcom/miui/zeus/columbus/common/AdNetType;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/common/AdNetType;->value()I

    move-result v0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMobileAllowed(I)Z
    .locals 1

    sget-object v0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_MOBILE:Lcom/miui/zeus/columbus/common/AdNetType;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/common/AdNetType;->value()I

    move-result v0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWifiAllowed(I)Z
    .locals 1

    sget-object v0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_WIFI:Lcom/miui/zeus/columbus/common/AdNetType;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/common/AdNetType;->value()I

    move-result v0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(I)Lcom/miui/zeus/columbus/common/AdNetType;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_MOBILE:Lcom/miui/zeus/columbus/common/AdNetType;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_2G:Lcom/miui/zeus/columbus/common/AdNetType;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_WIFI:Lcom/miui/zeus/columbus/common/AdNetType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_4G:Lcom/miui/zeus/columbus/common/AdNetType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_3G:Lcom/miui/zeus/columbus/common/AdNetType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/miui/zeus/columbus/common/AdNetType;->NETWORK_ALL:Lcom/miui/zeus/columbus/common/AdNetType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/zeus/columbus/common/AdNetType;
    .locals 1

    const-class v0, Lcom/miui/zeus/columbus/common/AdNetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/zeus/columbus/common/AdNetType;

    return-object p0
.end method

.method public static values()[Lcom/miui/zeus/columbus/common/AdNetType;
    .locals 1

    sget-object v0, Lcom/miui/zeus/columbus/common/AdNetType;->$VALUES:[Lcom/miui/zeus/columbus/common/AdNetType;

    invoke-virtual {v0}, [Lcom/miui/zeus/columbus/common/AdNetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/zeus/columbus/common/AdNetType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/common/AdNetType;->mValue:I

    return v0
.end method
