.class public Lcom/miui/gamebooster/a/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ex:I

.field private ey:I

.field private ez:J


# direct methods
.method public constructor <init>(IIJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/gamebooster/a/f;->ey:I

    iput p2, p0, Lcom/miui/gamebooster/a/f;->ex:I

    iput-wide p3, p0, Lcom/miui/gamebooster/a/f;->ez:J

    return-void
.end method


# virtual methods
.method public fq()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/a/f;->ex:I

    return v0
.end method

.method public fr()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/a/f;->ey:I

    return v0
.end method

.method public fs()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/a/f;->ez:J

    return-wide v0
.end method
