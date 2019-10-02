.class public Lcom/ooyala/pulse/AdVerification;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/Trackable;


# instance fields
.field final a:Lcom/ooyala/adtech/TrackingEvents;

.field b:Ljava/net/URL;

.field c:Ljava/lang/String;

.field d:Ljava/net/URL;

.field e:Ljava/lang/String;

.field f:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ooyala/adtech/TrackingEvents;

    invoke-direct {v0}, Lcom/ooyala/adtech/TrackingEvents;-><init>()V

    iput-object v0, p0, Lcom/ooyala/pulse/AdVerification;->a:Lcom/ooyala/adtech/TrackingEvents;

    return-void
.end method


# virtual methods
.method public getFlashApiFramework()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/AdVerification;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFlashResource()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/AdVerification;->b:Ljava/net/URL;

    return-object v0
.end method

.method public getJavaScriptApiFramework()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/AdVerification;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaScriptResource()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/AdVerification;->d:Ljava/net/URL;

    return-object v0
.end method

.method public getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/ooyala/pulse/AdVerification;->a:Lcom/ooyala/adtech/TrackingEvents;

    return-object v0
.end method

.method public getVendor()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/AdVerification;->f:Ljava/net/URL;

    return-object v0
.end method

.method public setFlashApiFramework(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/AdVerification;->c:Ljava/lang/String;

    return-void
.end method

.method public setFlashResource(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/AdVerification;->b:Ljava/net/URL;

    return-void
.end method

.method public setJavaScriptApiFramework(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/AdVerification;->e:Ljava/lang/String;

    return-void
.end method

.method public setJavaScriptResource(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/AdVerification;->d:Ljava/net/URL;

    return-void
.end method

.method public setVendor(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/AdVerification;->f:Ljava/net/URL;

    return-void
.end method
