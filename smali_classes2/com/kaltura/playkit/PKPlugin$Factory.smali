.class public interface abstract Lcom/kaltura/playkit/PKPlugin$Factory;
.super Ljava/lang/Object;
.source "PKPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/PKPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract newInstance()Lcom/kaltura/playkit/PKPlugin;
.end method

.method public abstract warmUp(Landroid/content/Context;)V
.end method
