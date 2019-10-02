.class public Lcom/ooyala/pulse/UniversalAdId;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/ooyala/pulse/UniversalAdId;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/UniversalAdId;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/UniversalAdId;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/UniversalAdId;->a:Ljava/lang/String;

    return-void
.end method

.method public setRegistry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/UniversalAdId;->b:Ljava/lang/String;

    return-void
.end method
