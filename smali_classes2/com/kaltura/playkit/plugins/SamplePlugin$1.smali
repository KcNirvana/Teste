.class final Lcom/kaltura/playkit/plugins/SamplePlugin$1;
.super Ljava/lang/Object;
.source "SamplePlugin.java"

# interfaces
.implements Lcom/kaltura/playkit/PKPlugin$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/SamplePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Sample"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "vootdev"

    return-object v0
.end method

.method public newInstance()Lcom/kaltura/playkit/PKPlugin;
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/plugins/SamplePlugin;

    invoke-direct {v0}, Lcom/kaltura/playkit/plugins/SamplePlugin;-><init>()V

    return-object v0
.end method

.method public warmUp(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
