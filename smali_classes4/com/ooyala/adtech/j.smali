.class Lcom/ooyala/adtech/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final c:Lcom/ooyala/adtech/TrackingEvent;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/TrackingEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ooyala/adtech/j;->c:Lcom/ooyala/adtech/TrackingEvent;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
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
    iget-object v2, p0, Lcom/ooyala/adtech/j;->c:Lcom/ooyala/adtech/TrackingEvent;

    check-cast p1, Lcom/ooyala/adtech/j;

    iget-object p1, p1, Lcom/ooyala/adtech/j;->c:Lcom/ooyala/adtech/TrackingEvent;

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/j;->c:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
