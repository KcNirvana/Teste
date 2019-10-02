.class public Lcom/ooyala/pulse/AdSurvey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/net/URL;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/AdSurvey;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSurvey()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/AdSurvey;->a:Ljava/net/URL;

    return-object v0
.end method

.method public setSurvey(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/AdSurvey;->a:Ljava/net/URL;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/AdSurvey;->b:Ljava/lang/String;

    return-void
.end method
