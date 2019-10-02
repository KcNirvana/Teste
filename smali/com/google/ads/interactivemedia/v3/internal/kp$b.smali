.class final Lcom/google/ads/interactivemedia/v3/internal/kp$b;
.super Lcom/google/ads/interactivemedia/v3/internal/kp$m;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/kp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final o:Lcom/google/ads/interactivemedia/v3/internal/kp$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kp$b;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/kp$b;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/kp$b;->o:Lcom/google/ads/interactivemedia/v3/internal/kp$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.ascii()"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/kp$m;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(C)Z
    .locals 1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
