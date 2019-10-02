.class public Lcom/ooyala/pulse/IFrameResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/pulse/Resource;


# instance fields
.field a:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/IFrameResource;->a:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public getURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/IFrameResource;->a:Ljava/net/URL;

    return-object v0
.end method
