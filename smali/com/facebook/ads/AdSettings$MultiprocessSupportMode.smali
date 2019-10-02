.class public final enum Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/AdSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultiprocessSupportMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MULTIPROCESS_SUPPORT_MODE_AUTO:Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

.field public static final enum MULTIPROCESS_SUPPORT_MODE_OFF:Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

.field private static final synthetic a:[Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

.field public static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

    const-string v1, "MULTIPROCESS_SUPPORT_MODE_AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;->MULTIPROCESS_SUPPORT_MODE_AUTO:Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

    new-instance v0, Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

    const-string v1, "MULTIPROCESS_SUPPORT_MODE_OFF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;->MULTIPROCESS_SUPPORT_MODE_OFF:Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

    sget-object v1, Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;->MULTIPROCESS_SUPPORT_MODE_AUTO:Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;->MULTIPROCESS_SUPPORT_MODE_OFF:Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;->a:[Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;
    .locals 1

    const-class v0, Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;
    .locals 1

    sget-object v0, Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;->a:[Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

    invoke-virtual {v0}, [Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/AdSettings$MultiprocessSupportMode;

    return-object v0
.end method
