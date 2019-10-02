.class public final enum Lcom/ooyala/pulse/PulseAd$Variant;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/pulse/PulseAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Variant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ooyala/pulse/PulseAd$Variant;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum VARIANT_NORMAL:Lcom/ooyala/pulse/PulseAd$Variant;

.field public static final enum VARIANT_SPONSOR:Lcom/ooyala/pulse/PulseAd$Variant;

.field private static final synthetic a:[Lcom/ooyala/pulse/PulseAd$Variant;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/ooyala/pulse/PulseAd$Variant;

    const-string v1, "VARIANT_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ooyala/pulse/PulseAd$Variant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/PulseAd$Variant;->VARIANT_NORMAL:Lcom/ooyala/pulse/PulseAd$Variant;

    new-instance v0, Lcom/ooyala/pulse/PulseAd$Variant;

    const-string v1, "VARIANT_SPONSOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ooyala/pulse/PulseAd$Variant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/PulseAd$Variant;->VARIANT_SPONSOR:Lcom/ooyala/pulse/PulseAd$Variant;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ooyala/pulse/PulseAd$Variant;

    sget-object v1, Lcom/ooyala/pulse/PulseAd$Variant;->VARIANT_NORMAL:Lcom/ooyala/pulse/PulseAd$Variant;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/pulse/PulseAd$Variant;->VARIANT_SPONSOR:Lcom/ooyala/pulse/PulseAd$Variant;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ooyala/pulse/PulseAd$Variant;->a:[Lcom/ooyala/pulse/PulseAd$Variant;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/pulse/PulseAd$Variant;
    .locals 1

    const-class v0, Lcom/ooyala/pulse/PulseAd$Variant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ooyala/pulse/PulseAd$Variant;

    return-object p0
.end method

.method public static values()[Lcom/ooyala/pulse/PulseAd$Variant;
    .locals 1

    sget-object v0, Lcom/ooyala/pulse/PulseAd$Variant;->a:[Lcom/ooyala/pulse/PulseAd$Variant;

    invoke-virtual {v0}, [Lcom/ooyala/pulse/PulseAd$Variant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/pulse/PulseAd$Variant;

    return-object v0
.end method
