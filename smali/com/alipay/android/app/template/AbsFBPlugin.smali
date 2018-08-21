.class public abstract Lcom/alipay/android/app/template/AbsFBPlugin;
.super Ljava/lang/Object;
.source "AbsFBPlugin.java"

# interfaces
.implements Lcom/alipay/android/app/template/FBPlugin;


# instance fields
.field mNode:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncryptValue()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNode()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/template/AbsFBPlugin;->mNode:J

    return-wide v0
.end method

.method public onLoadFinish()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setNode(J)V
    .locals 1

    iput-wide p1, p0, Lcom/alipay/android/app/template/AbsFBPlugin;->mNode:J

    return-void
.end method

.method public setRect(FFFF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateFunc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
