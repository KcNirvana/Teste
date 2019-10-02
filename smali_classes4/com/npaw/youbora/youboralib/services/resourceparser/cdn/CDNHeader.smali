.class public Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;
.super Ljava/lang/Object;
.source "CDNHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private regexPattern:Ljava/lang/String;

.field private type:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;


# direct methods
.method public constructor <init>(Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;->setType(Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;)V

    invoke-virtual {p0, p2}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;->setRegexPattern(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegexPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;->regexPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;->type:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;->name:Ljava/lang/String;

    return-void
.end method

.method public setRegexPattern(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;->regexPattern:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;->type:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    return-void
.end method
