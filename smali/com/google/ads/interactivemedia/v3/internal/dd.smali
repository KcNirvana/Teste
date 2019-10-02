.class public final Lcom/google/ads/interactivemedia/v3/internal/dd;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I


# instance fields
.field public final g:I

.field public final h:I

.field public final i:J

.field public final j:J

.field public final k:J

.field public final l:Lcom/google/ads/interactivemedia/v3/internal/bj;

.field public final m:[Lcom/google/ads/interactivemedia/v3/internal/de;

.field public final n:[J

.field public final o:[J

.field public final p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vide"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->a:I

    const-string v0, "soun"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->b:I

    const-string v0, "text"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->c:I

    const-string v0, "sbtl"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->d:I

    const-string v0, "subt"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->e:I

    const-string v0, "meta"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->f:I

    return-void
.end method

.method public constructor <init>(IIJJJLcom/google/ads/interactivemedia/v3/internal/bj;[Lcom/google/ads/interactivemedia/v3/internal/de;I[J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dd;->g:I

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dd;->h:I

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dd;->i:J

    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/internal/dd;->j:J

    iput-wide p7, p0, Lcom/google/ads/interactivemedia/v3/internal/dd;->k:J

    iput-object p9, p0, Lcom/google/ads/interactivemedia/v3/internal/dd;->l:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iput-object p10, p0, Lcom/google/ads/interactivemedia/v3/internal/dd;->m:[Lcom/google/ads/interactivemedia/v3/internal/de;

    iput p11, p0, Lcom/google/ads/interactivemedia/v3/internal/dd;->p:I

    iput-object p12, p0, Lcom/google/ads/interactivemedia/v3/internal/dd;->n:[J

    iput-object p13, p0, Lcom/google/ads/interactivemedia/v3/internal/dd;->o:[J

    return-void
.end method
