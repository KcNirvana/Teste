.class public final enum Lcom/ooyala/adtech/TrackingError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/adtech/TrackingError$PulseError;,
        Lcom/ooyala/adtech/TrackingError$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ooyala/adtech/TrackingError;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum AD_GENERAL_ERROR:Lcom/ooyala/adtech/TrackingError;

.field public static final enum AD_NO_AD:Lcom/ooyala/adtech/TrackingError;

.field public static final enum AD_TYPE_NOT_SUPPORTED:Lcom/ooyala/adtech/TrackingError;

.field public static final enum CREATIVE_MEDIA_FILE_DISPLAY_ERROR:Lcom/ooyala/adtech/TrackingError;

.field public static final enum CREATIVE_MEDIA_FILE_NOT_FOUND:Lcom/ooyala/adtech/TrackingError;

.field public static final enum CREATIVE_MEDIA_FILE_TIMEOUT:Lcom/ooyala/adtech/TrackingError;

.field public static final enum CREATIVE_NO_SUPPORTED_MEDIA_FILE_FOUND:Lcom/ooyala/adtech/TrackingError;

.field private static final synthetic a:[Lcom/ooyala/adtech/TrackingError;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/ooyala/adtech/TrackingError;

    const-string v1, "AD_TYPE_NOT_SUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ooyala/adtech/TrackingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError;->AD_TYPE_NOT_SUPPORTED:Lcom/ooyala/adtech/TrackingError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError;

    const-string v1, "AD_NO_AD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ooyala/adtech/TrackingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError;->AD_NO_AD:Lcom/ooyala/adtech/TrackingError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError;

    const-string v1, "AD_GENERAL_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ooyala/adtech/TrackingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError;->AD_GENERAL_ERROR:Lcom/ooyala/adtech/TrackingError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError;

    const-string v1, "CREATIVE_MEDIA_FILE_NOT_FOUND"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ooyala/adtech/TrackingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError;->CREATIVE_MEDIA_FILE_NOT_FOUND:Lcom/ooyala/adtech/TrackingError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError;

    const-string v1, "CREATIVE_MEDIA_FILE_TIMEOUT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ooyala/adtech/TrackingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError;->CREATIVE_MEDIA_FILE_TIMEOUT:Lcom/ooyala/adtech/TrackingError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError;

    const-string v1, "CREATIVE_NO_SUPPORTED_MEDIA_FILE_FOUND"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ooyala/adtech/TrackingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError;->CREATIVE_NO_SUPPORTED_MEDIA_FILE_FOUND:Lcom/ooyala/adtech/TrackingError;

    new-instance v0, Lcom/ooyala/adtech/TrackingError;

    const-string v1, "CREATIVE_MEDIA_FILE_DISPLAY_ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ooyala/adtech/TrackingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError;->CREATIVE_MEDIA_FILE_DISPLAY_ERROR:Lcom/ooyala/adtech/TrackingError;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/ooyala/adtech/TrackingError;

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->AD_TYPE_NOT_SUPPORTED:Lcom/ooyala/adtech/TrackingError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->AD_NO_AD:Lcom/ooyala/adtech/TrackingError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->AD_GENERAL_ERROR:Lcom/ooyala/adtech/TrackingError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->CREATIVE_MEDIA_FILE_NOT_FOUND:Lcom/ooyala/adtech/TrackingError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->CREATIVE_MEDIA_FILE_TIMEOUT:Lcom/ooyala/adtech/TrackingError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->CREATIVE_NO_SUPPORTED_MEDIA_FILE_FOUND:Lcom/ooyala/adtech/TrackingError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->CREATIVE_MEDIA_FILE_DISPLAY_ERROR:Lcom/ooyala/adtech/TrackingError;

    aput-object v1, v0, v8

    sput-object v0, Lcom/ooyala/adtech/TrackingError;->a:[Lcom/ooyala/adtech/TrackingError;

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

.method public static getPulseErrorCode(Lcom/ooyala/adtech/TrackingError;)Lcom/ooyala/adtech/TrackingError$PulseError;
    .locals 1

    sget-object v0, Lcom/ooyala/adtech/TrackingError$1;->a:[I

    invoke-virtual {p0}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/ooyala/adtech/TrackingError$PulseError;->UNDEFINED_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/ooyala/adtech/TrackingError$PulseError;->GENERAL_LINEAR_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/ooyala/adtech/TrackingError$PulseError;->NO_VAST_RESPONSE_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/ooyala/adtech/TrackingError$PulseError;->AD_TYPE_NOT_SUPPORTED_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/adtech/TrackingError;
    .locals 1

    const-class v0, Lcom/ooyala/adtech/TrackingError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ooyala/adtech/TrackingError;

    return-object p0
.end method

.method public static values()[Lcom/ooyala/adtech/TrackingError;
    .locals 1

    sget-object v0, Lcom/ooyala/adtech/TrackingError;->a:[Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v0}, [Lcom/ooyala/adtech/TrackingError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/adtech/TrackingError;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/ooyala/adtech/Trackable;)Lcom/ooyala/adtech/TrackingError$a;
    .locals 1

    instance-of v0, p1, Lcom/ooyala/adtech/Ad;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/ooyala/adtech/TrackingError$1;->a:[I

    invoke-virtual {p0}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/ooyala/adtech/TrackingError$a;->o:Lcom/ooyala/adtech/TrackingError$a;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/ooyala/adtech/TrackingError$a;->m:Lcom/ooyala/adtech/TrackingError$a;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/ooyala/adtech/TrackingError$a;->e:Lcom/ooyala/adtech/TrackingError$a;

    return-object p1

    :cond_0
    instance-of v0, p1, Lcom/ooyala/adtech/LinearCreative;

    if-eqz v0, :cond_1

    sget-object p1, Lcom/ooyala/adtech/TrackingError$1;->a:[I

    invoke-virtual {p0}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    sget-object p1, Lcom/ooyala/adtech/TrackingError$a;->s:Lcom/ooyala/adtech/TrackingError$a;

    return-object p1

    :pswitch_4
    sget-object p1, Lcom/ooyala/adtech/TrackingError$a;->r:Lcom/ooyala/adtech/TrackingError$a;

    return-object p1

    :pswitch_5
    sget-object p1, Lcom/ooyala/adtech/TrackingError$a;->q:Lcom/ooyala/adtech/TrackingError$a;

    return-object p1

    :pswitch_6
    sget-object p1, Lcom/ooyala/adtech/TrackingError$a;->p:Lcom/ooyala/adtech/TrackingError$a;

    return-object p1

    :cond_1
    instance-of p1, p1, Lcom/ooyala/adtech/NonLinearCreative;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/ooyala/adtech/TrackingError$1;->a:[I

    invoke-virtual {p0}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_2

    goto :goto_0

    :pswitch_7
    sget-object p1, Lcom/ooyala/adtech/TrackingError$a;->s:Lcom/ooyala/adtech/TrackingError$a;

    return-object p1

    :pswitch_8
    sget-object p1, Lcom/ooyala/adtech/TrackingError$a;->y:Lcom/ooyala/adtech/TrackingError$a;

    return-object p1

    :pswitch_9
    sget-object p1, Lcom/ooyala/adtech/TrackingError$a;->q:Lcom/ooyala/adtech/TrackingError$a;

    return-object p1

    :pswitch_a
    sget-object p1, Lcom/ooyala/adtech/TrackingError$a;->x:Lcom/ooyala/adtech/TrackingError$a;

    return-object p1

    :cond_2
    :goto_0
    sget-object p1, Lcom/ooyala/adtech/TrackingError$a;->a:Lcom/ooyala/adtech/TrackingError$a;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
