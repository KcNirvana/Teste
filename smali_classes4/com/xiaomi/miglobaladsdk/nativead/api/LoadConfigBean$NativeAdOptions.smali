.class public final enum Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;
.super Ljava/lang/Enum;
.source "LoadConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeAdOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADCHOICES_BOTTOM_LEFT:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

.field public static final enum ADCHOICES_BOTTOM_RIGHT:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

.field public static final enum ADCHOICES_TOP_LEFT:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

.field public static final enum ADCHOICES_TOP_RIGHT:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

.field private static final synthetic a:[Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    const-string v1, "ADCHOICES_TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;->ADCHOICES_TOP_LEFT:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    const-string v1, "ADCHOICES_TOP_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;->ADCHOICES_TOP_RIGHT:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    const-string v1, "ADCHOICES_BOTTOM_RIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;->ADCHOICES_BOTTOM_RIGHT:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    const-string v1, "ADCHOICES_BOTTOM_LEFT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;->ADCHOICES_BOTTOM_LEFT:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    sget-object v1, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;->ADCHOICES_TOP_LEFT:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;->ADCHOICES_TOP_RIGHT:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;->ADCHOICES_BOTTOM_RIGHT:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;->ADCHOICES_BOTTOM_LEFT:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;->a:[Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;
    .locals 1

    const-class v0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;
    .locals 1

    sget-object v0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;->a:[Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    invoke-virtual {v0}, [Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    return-object v0
.end method
