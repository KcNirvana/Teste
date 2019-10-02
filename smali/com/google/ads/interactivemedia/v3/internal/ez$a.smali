.class public Lcom/google/ads/interactivemedia/v3/internal/ez$a;
.super Ljava/io/IOException;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/ads/interactivemedia/v3/internal/eu;


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lcom/google/ads/interactivemedia/v3/internal/eu;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ez$a;->b:Lcom/google/ads/interactivemedia/v3/internal/eu;

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ez$a;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/eu;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ez$a;->b:Lcom/google/ads/interactivemedia/v3/internal/eu;

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ez$a;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/ads/interactivemedia/v3/internal/eu;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ez$a;->b:Lcom/google/ads/interactivemedia/v3/internal/eu;

    iput p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ez$a;->a:I

    return-void
.end method
