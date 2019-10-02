.class public final enum Lcom/xiaomi/miglobaladsdk/Const$AdType;
.super Ljava/lang/Enum;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/miglobaladsdk/Const$AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/miglobaladsdk/Const$AdType;

.field public static final enum BANNER:Lcom/xiaomi/miglobaladsdk/Const$AdType;

.field public static final enum INTERSTITIAL:Lcom/xiaomi/miglobaladsdk/Const$AdType;

.field public static final enum NATIVE:Lcom/xiaomi/miglobaladsdk/Const$AdType;

.field public static final enum VIDEO:Lcom/xiaomi/miglobaladsdk/Const$AdType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/xiaomi/miglobaladsdk/Const$AdType;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/Const$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miglobaladsdk/Const$AdType;->NATIVE:Lcom/xiaomi/miglobaladsdk/Const$AdType;

    new-instance v0, Lcom/xiaomi/miglobaladsdk/Const$AdType;

    const-string v1, "BANNER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/miglobaladsdk/Const$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miglobaladsdk/Const$AdType;->BANNER:Lcom/xiaomi/miglobaladsdk/Const$AdType;

    new-instance v0, Lcom/xiaomi/miglobaladsdk/Const$AdType;

    const-string v1, "VIDEO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/miglobaladsdk/Const$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miglobaladsdk/Const$AdType;->VIDEO:Lcom/xiaomi/miglobaladsdk/Const$AdType;

    new-instance v0, Lcom/xiaomi/miglobaladsdk/Const$AdType;

    const-string v1, "INTERSTITIAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/miglobaladsdk/Const$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miglobaladsdk/Const$AdType;->INTERSTITIAL:Lcom/xiaomi/miglobaladsdk/Const$AdType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaomi/miglobaladsdk/Const$AdType;

    sget-object v1, Lcom/xiaomi/miglobaladsdk/Const$AdType;->NATIVE:Lcom/xiaomi/miglobaladsdk/Const$AdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/miglobaladsdk/Const$AdType;->BANNER:Lcom/xiaomi/miglobaladsdk/Const$AdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/miglobaladsdk/Const$AdType;->VIDEO:Lcom/xiaomi/miglobaladsdk/Const$AdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/miglobaladsdk/Const$AdType;->INTERSTITIAL:Lcom/xiaomi/miglobaladsdk/Const$AdType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/miglobaladsdk/Const$AdType;->$VALUES:[Lcom/xiaomi/miglobaladsdk/Const$AdType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/Const$AdType;
    .locals 1

    const-class v0, Lcom/xiaomi/miglobaladsdk/Const$AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/miglobaladsdk/Const$AdType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/miglobaladsdk/Const$AdType;
    .locals 1

    sget-object v0, Lcom/xiaomi/miglobaladsdk/Const$AdType;->$VALUES:[Lcom/xiaomi/miglobaladsdk/Const$AdType;

    invoke-virtual {v0}, [Lcom/xiaomi/miglobaladsdk/Const$AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/miglobaladsdk/Const$AdType;

    return-object v0
.end method
