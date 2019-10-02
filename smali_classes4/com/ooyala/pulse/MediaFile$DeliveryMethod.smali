.class public final enum Lcom/ooyala/pulse/MediaFile$DeliveryMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/pulse/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeliveryMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ooyala/pulse/MediaFile$DeliveryMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PROGRESSIVE:Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

.field public static final enum STREAMING:Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

.field private static final synthetic a:[Lcom/ooyala/pulse/MediaFile$DeliveryMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    const-string v1, "PROGRESSIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ooyala/pulse/MediaFile$DeliveryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/MediaFile$DeliveryMethod;->PROGRESSIVE:Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    new-instance v0, Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    const-string v1, "STREAMING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ooyala/pulse/MediaFile$DeliveryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/MediaFile$DeliveryMethod;->STREAMING:Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    sget-object v1, Lcom/ooyala/pulse/MediaFile$DeliveryMethod;->PROGRESSIVE:Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/pulse/MediaFile$DeliveryMethod;->STREAMING:Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ooyala/pulse/MediaFile$DeliveryMethod;->a:[Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/pulse/MediaFile$DeliveryMethod;
    .locals 1

    const-class v0, Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    return-object p0
.end method

.method public static values()[Lcom/ooyala/pulse/MediaFile$DeliveryMethod;
    .locals 1

    sget-object v0, Lcom/ooyala/pulse/MediaFile$DeliveryMethod;->a:[Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    invoke-virtual {v0}, [Lcom/ooyala/pulse/MediaFile$DeliveryMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    return-object v0
.end method
