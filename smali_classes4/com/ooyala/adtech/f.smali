.class final Lcom/ooyala/adtech/f;
.super Lcom/ooyala/adtech/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/adtech/f$a;
    }
.end annotation


# instance fields
.field a:I

.field b:F


# direct methods
.method constructor <init>(FI)V
    .locals 1

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->f:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/ooyala/adtech/j;-><init>(Lcom/ooyala/adtech/TrackingEvent;)V

    iput p2, p0, Lcom/ooyala/adtech/f;->a:I

    iput p1, p0, Lcom/ooyala/adtech/f;->b:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/ooyala/adtech/f;

    iget v2, p0, Lcom/ooyala/adtech/f;->a:I

    iget v3, p1, Lcom/ooyala/adtech/f;->a:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/ooyala/adtech/f;->b:F

    iget p1, p1, Lcom/ooyala/adtech/f;->b:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/ooyala/adtech/f;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lcom/ooyala/adtech/f;->a:I

    sget v2, Lcom/ooyala/adtech/f$a;->a:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    mul-int v0, v0, v1

    return v0
.end method
