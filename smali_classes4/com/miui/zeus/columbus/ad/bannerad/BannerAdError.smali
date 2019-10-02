.class public Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;
.super Ljava/lang/Object;
.source "BannerAdError.java"


# static fields
.field public static final ANALYTICS_ERROR:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

.field public static final ANALYTICS_ERROR_CODE:I = 0xbba

.field public static final INTERNAL_ERROR:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

.field public static final INTERNAL_ERROR_CODE:I = 0x7d1

.field public static final LOAD_TOO_FREQUENTLY:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

.field public static final LOAD_TOO_FREQUENTLY_ERROR_CODE:I = 0x3ea

.field public static final MEDIATION_ERROR:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

.field public static final MEDIATION_ERROR_CODE:I = 0xbb9

.field public static final MISSING_PROPERTIES:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NETWORK_ERROR:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

.field public static final NETWORK_ERROR_CODE:I = 0x3e8

.field public static final NO_FILL:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

.field public static final NO_FILL_ERROR_CODE:I = 0x3e9

.field public static final SERVER_ERROR:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

.field public static final SERVER_ERROR_CODE:I = 0x7d0


# instance fields
.field private final mCode:I

.field private final mMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    const-string v1, "Network Error"

    const/16 v2, 0x3e8

    invoke-direct {v0, v2, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->NETWORK_ERROR:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    new-instance v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    const-string v1, "No Fill"

    const/16 v2, 0x3e9

    invoke-direct {v0, v2, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->NO_FILL:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    new-instance v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    const-string v1, "Ad was re-loaded too frequently"

    const/16 v2, 0x3ea

    invoke-direct {v0, v2, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->LOAD_TOO_FREQUENTLY:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    new-instance v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    const-string v1, "Server Error"

    const/16 v2, 0x7d0

    invoke-direct {v0, v2, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->SERVER_ERROR:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    new-instance v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    const-string v1, "Internal Error"

    const/16 v2, 0x7d1

    invoke-direct {v0, v2, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->INTERNAL_ERROR:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    new-instance v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    const-string v1, "Mediation Error"

    const/16 v2, 0xbb9

    invoke-direct {v0, v2, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->MEDIATION_ERROR:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    new-instance v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    const-string v1, "Native ad failed to load due to missing properties"

    const/16 v2, 0x7d2

    invoke-direct {v0, v2, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->MISSING_PROPERTIES:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    new-instance v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    const-string v1, "analytics error"

    const/16 v2, 0xbba

    invoke-direct {v0, v2, v1}, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->ANALYTICS_ERROR:Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "Unknown Error"

    :cond_0
    iput p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->mCode:I

    iput-object p2, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->mMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->mCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/BannerAdError;->mMsg:Ljava/lang/String;

    return-object v0
.end method
