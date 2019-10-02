.class public interface abstract Lorg/videolan/libvlc/ICacheManager;
.super Ljava/lang/Object;
.source "ICacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/ICacheManager$ICacheAvailableListener;
    }
.end annotation


# virtual methods
.method public abstract clearCache(Landroid/content/Context;)V
.end method

.method public abstract doCacheLogic(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isSupportCache()Z
.end method

.method public abstract release()V
.end method

.method public abstract setCacheAvailableListener(Lorg/videolan/libvlc/ICacheManager$ICacheAvailableListener;)V
.end method

.method public abstract stopCache(Landroid/content/Context;Ljava/lang/String;)V
.end method
