.class public final enum Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;
.super Ljava/lang/Enum;
.source "NetState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MN2G:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

.field public static final enum MN3G:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

.field public static final enum MN4G:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

.field public static final enum NONE:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

.field public static final enum WIFI:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

.field private static final synthetic a:[Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->NONE:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    new-instance v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    const-string v1, "MN2G"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->MN2G:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    new-instance v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    const-string v1, "MN3G"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->MN3G:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    new-instance v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    const-string v1, "MN4G"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->MN4G:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    new-instance v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    const-string v1, "WIFI"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->WIFI:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    sget-object v1, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->NONE:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->MN2G:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->MN3G:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->MN4G:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->WIFI:Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->a:[Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;
    .locals 1

    const-class v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;
    .locals 1

    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->a:[Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    invoke-virtual {v0}, [Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ad/mediationconfig/internal/utils/NetState;

    return-object v0
.end method
