.class final Lcom/google/ads/interactivemedia/v3/internal/kp$a;
.super Lcom/google/ads/interactivemedia/v3/internal/kp$m;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/kp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field static final o:Lcom/google/ads/interactivemedia/v3/internal/kp$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kp$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/kp$a;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/kp$a;->o:Lcom/google/ads/interactivemedia/v3/internal/kp$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.any()"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/kp$m;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(C)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/kv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
