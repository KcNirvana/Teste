.class final Lcom/ooyala/adtech/b;
.super Lcom/ooyala/adtech/j;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->d:Lcom/ooyala/adtech/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/ooyala/adtech/j;-><init>(Lcom/ooyala/adtech/TrackingEvent;)V

    iput-object p1, p0, Lcom/ooyala/adtech/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lcom/ooyala/adtech/b;->a:Ljava/lang/String;

    check-cast p1, Lcom/ooyala/adtech/b;

    iget-object p1, p1, Lcom/ooyala/adtech/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/ooyala/adtech/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-super {p0}, Lcom/ooyala/adtech/j;->hashCode()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method
