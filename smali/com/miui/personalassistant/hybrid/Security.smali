.class public Lcom/miui/personalassistant/hybrid/Security;
.super Ljava/lang/Object;
.source "Security.java"


# instance fields
.field private signature:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/hybrid/Security;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/hybrid/Security;->timestamp:J

    return-wide v0
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/hybrid/Security;->signature:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/personalassistant/hybrid/Security;->timestamp:J

    return-void
.end method
