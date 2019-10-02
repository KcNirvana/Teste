.class public final enum Lcom/ooyala/pulse/PulseAdError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ooyala/pulse/PulseAdError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COULD_NOT_PLAY:Lcom/ooyala/pulse/PulseAdError;

.field public static final enum NO_SUPPORTED_MEDIA_FILE:Lcom/ooyala/pulse/PulseAdError;

.field public static final enum REQUEST_FAILED:Lcom/ooyala/pulse/PulseAdError;

.field public static final enum REQUEST_TIMED_OUT:Lcom/ooyala/pulse/PulseAdError;

.field private static final synthetic a:[Lcom/ooyala/pulse/PulseAdError;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/ooyala/pulse/PulseAdError;

    const-string v1, "REQUEST_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ooyala/pulse/PulseAdError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/PulseAdError;->REQUEST_FAILED:Lcom/ooyala/pulse/PulseAdError;

    new-instance v0, Lcom/ooyala/pulse/PulseAdError;

    const-string v1, "REQUEST_TIMED_OUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ooyala/pulse/PulseAdError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/PulseAdError;->REQUEST_TIMED_OUT:Lcom/ooyala/pulse/PulseAdError;

    new-instance v0, Lcom/ooyala/pulse/PulseAdError;

    const-string v1, "NO_SUPPORTED_MEDIA_FILE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ooyala/pulse/PulseAdError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/PulseAdError;->NO_SUPPORTED_MEDIA_FILE:Lcom/ooyala/pulse/PulseAdError;

    new-instance v0, Lcom/ooyala/pulse/PulseAdError;

    const-string v1, "COULD_NOT_PLAY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ooyala/pulse/PulseAdError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/PulseAdError;->COULD_NOT_PLAY:Lcom/ooyala/pulse/PulseAdError;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ooyala/pulse/PulseAdError;

    sget-object v1, Lcom/ooyala/pulse/PulseAdError;->REQUEST_FAILED:Lcom/ooyala/pulse/PulseAdError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/pulse/PulseAdError;->REQUEST_TIMED_OUT:Lcom/ooyala/pulse/PulseAdError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ooyala/pulse/PulseAdError;->NO_SUPPORTED_MEDIA_FILE:Lcom/ooyala/pulse/PulseAdError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ooyala/pulse/PulseAdError;->COULD_NOT_PLAY:Lcom/ooyala/pulse/PulseAdError;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ooyala/pulse/PulseAdError;->a:[Lcom/ooyala/pulse/PulseAdError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/pulse/PulseAdError;
    .locals 1

    const-class v0, Lcom/ooyala/pulse/PulseAdError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ooyala/pulse/PulseAdError;

    return-object p0
.end method

.method public static values()[Lcom/ooyala/pulse/PulseAdError;
    .locals 1

    sget-object v0, Lcom/ooyala/pulse/PulseAdError;->a:[Lcom/ooyala/pulse/PulseAdError;

    invoke-virtual {v0}, [Lcom/ooyala/pulse/PulseAdError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/pulse/PulseAdError;

    return-object v0
.end method
