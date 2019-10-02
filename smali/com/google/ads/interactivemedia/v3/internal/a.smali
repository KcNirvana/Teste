.class public final Lcom/google/ads/interactivemedia/v3/internal/a;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static a:Lcom/google/ads/interactivemedia/v3/internal/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/b;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/b;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/a;->a:Lcom/google/ads/interactivemedia/v3/internal/b;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/a;->a:Lcom/google/ads/interactivemedia/v3/internal/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/a;->a:Lcom/google/ads/interactivemedia/v3/internal/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/b;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/a;->a:Lcom/google/ads/interactivemedia/v3/internal/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/b;->b()Z

    move-result v0

    return v0
.end method
