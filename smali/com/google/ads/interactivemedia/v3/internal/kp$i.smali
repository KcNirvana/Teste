.class final Lcom/google/ads/interactivemedia/v3/internal/kp$i;
.super Lcom/google/ads/interactivemedia/v3/internal/kp;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/kp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# static fields
.field static final o:Lcom/google/ads/interactivemedia/v3/internal/kp$i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kp$i;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/kp$i;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/kp$i;->o:Lcom/google/ads/interactivemedia/v3/internal/kp$i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/kp;-><init>()V

    return-void
.end method


# virtual methods
.method public a(C)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CharMatcher.javaLetter()"

    return-object v0
.end method
