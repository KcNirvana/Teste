.class public Lcom/ooyala/pulse/StaticResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/pulse/Resource;


# instance fields
.field a:Ljava/net/URL;

.field b:Ljava/lang/String;

.field c:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/StaticResource;->a:Ljava/net/URL;

    iput-object p2, p0, Lcom/ooyala/pulse/StaticResource;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ooyala/pulse/StaticResource;->c:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public getClickThrough()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/StaticResource;->a:Ljava/net/URL;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/StaticResource;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/StaticResource;->c:Ljava/net/URL;

    return-object v0
.end method
