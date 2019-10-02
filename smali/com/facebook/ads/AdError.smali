.class public Lcom/facebook/ads/AdError;
.super Ljava/lang/Object;


# static fields
.field public static final AD_ASSETS_UNSUPPORTED_TYPE_ERROR:Lcom/facebook/ads/AdError;

.field public static final AD_ASSETS_UNSUPPORTED_TYPE_ERROR_CODE:I = 0x1773

.field public static final BROKEN_MEDIA_ERROR:Lcom/facebook/ads/AdError;

.field public static final BROKEN_MEDIA_ERROR_CODE:I = 0x834

.field public static final CACHE_ERROR:Lcom/facebook/ads/AdError;

.field public static final CACHE_ERROR_CODE:I = 0x7d2

.field public static final CLEAR_TEXT_SUPPORT_NOT_ALLOWED:I = 0x1b5b

.field public static final ICONVIEW_MISSING_ERROR_CODE:I = 0x1772

.field public static final INCORRECT_STATE_ERROR:I = 0x1b5c

.field public static final INTERNAL_ERROR:Lcom/facebook/ads/AdError;

.field public static final INTERNAL_ERROR_2003:I = 0x7d3

.field public static final INTERNAL_ERROR_2004:I = 0x7d4

.field public static final INTERNAL_ERROR_2006:I = 0x7d6

.field public static final INTERNAL_ERROR_CODE:I = 0x7d1

.field public static final INTERSTITIAL_AD_TIMEOUT:I = 0x7d9

.field public static final LOAD_CALLED_WHILE_SHOWING_AD:I = 0x1b5a

.field public static final LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/AdError;

.field public static final LOAD_TOO_FREQUENTLY_ERROR_CODE:I = 0x3ea

.field public static final MEDIATION_ERROR:Lcom/facebook/ads/AdError;

.field public static final MEDIATION_ERROR_CODE:I = 0xbb9

.field public static final MEDIAVIEW_MISSING_ERROR_CODE:I = 0x1771

.field public static final MISSING_DEPENDENCIES_ERROR:I = 0x1b5d

.field public static final MISSING_PROPERTIES:Lcom/facebook/ads/AdError;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NETWORK_ERROR:Lcom/facebook/ads/AdError;

.field public static final NETWORK_ERROR_CODE:I = 0x3e8

.field public static final NO_FILL:Lcom/facebook/ads/AdError;

.field public static final NO_FILL_ERROR_CODE:I = 0x3e9

.field public static final REMOTE_ADS_SERVICE_ERROR:I = 0x7d8

.field public static final SERVER_ERROR:Lcom/facebook/ads/AdError;

.field public static final SERVER_ERROR_CODE:I = 0x7d0

.field public static final SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

.field public static final SHOW_CALLED_BEFORE_LOAD_ERROR_CODE:I = 0x1b59


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/facebook/ads/AdError;

    const-string v1, "Network Error"

    const/16 v2, 0x3e8

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdError;->NETWORK_ERROR:Lcom/facebook/ads/AdError;

    new-instance v0, Lcom/facebook/ads/AdError;

    const-string v1, "No Fill"

    const/16 v2, 0x3e9

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    new-instance v0, Lcom/facebook/ads/AdError;

    const-string v1, "Ad was re-loaded too frequently"

    const/16 v2, 0x3ea

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdError;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/AdError;

    new-instance v0, Lcom/facebook/ads/AdError;

    const-string v1, "Server Error"

    const/16 v2, 0x7d0

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdError;->SERVER_ERROR:Lcom/facebook/ads/AdError;

    new-instance v0, Lcom/facebook/ads/AdError;

    const-string v1, "Internal Error"

    const/16 v2, 0x7d1

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    new-instance v0, Lcom/facebook/ads/AdError;

    const-string v1, "Cache Error"

    const/16 v2, 0x7d2

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    new-instance v0, Lcom/facebook/ads/AdError;

    const-string v1, "Mediation Error"

    const/16 v3, 0xbb9

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdError;->MEDIATION_ERROR:Lcom/facebook/ads/AdError;

    new-instance v0, Lcom/facebook/ads/AdError;

    const-string v1, "Native ad failed to load due to missing properties"

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdError;->MISSING_PROPERTIES:Lcom/facebook/ads/AdError;

    new-instance v0, Lcom/facebook/ads/AdError;

    const-string v1, "Native ad failed to load its media"

    const/16 v2, 0x834

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdError;->BROKEN_MEDIA_ERROR:Lcom/facebook/ads/AdError;

    new-instance v0, Lcom/facebook/ads/AdError;

    const-string v1, "unsupported type of ad assets"

    const/16 v2, 0x1773

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdError;->AD_ASSETS_UNSUPPORTED_TYPE_ERROR:Lcom/facebook/ads/AdError;

    new-instance v0, Lcom/facebook/ads/AdError;

    const-string v1, "Ad not loaded. First call loadAd() and wait for onAdLoaded() to be invoked before executing show()"

    const/16 v2, 0x1b59

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "unknown error"

    :cond_0
    iput p1, p0, Lcom/facebook/ads/AdError;->a:I

    iput-object p2, p0, Lcom/facebook/ads/AdError;->b:Ljava/lang/String;

    return-void
.end method

.method public static getAdErrorFromWrapper(Lcom/facebook/ads/internal/protocol/a;)Lcom/facebook/ads/AdError;
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/protocol/a;->a()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/protocol/a;->a()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/protocol/a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/facebook/ads/AdError;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public static internalError(I)Lcom/facebook/ads/AdError;
    .locals 6

    new-instance v0, Lcom/facebook/ads/AdError;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Internal error %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/AdError;->a:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AdError;->b:Ljava/lang/String;

    return-object v0
.end method
