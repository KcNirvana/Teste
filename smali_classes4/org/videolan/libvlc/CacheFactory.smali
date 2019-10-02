.class public Lorg/videolan/libvlc/CacheFactory;
.super Ljava/lang/Object;
.source "CacheFactory.java"


# static fields
.field private static sICacheManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/videolan/libvlc/ICacheManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheManager()Lorg/videolan/libvlc/ICacheManager;
    .locals 1

    sget-object v0, Lorg/videolan/libvlc/CacheFactory;->sICacheManager:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lorg/videolan/libvlc/ProxyCacheManager;

    sput-object v0, Lorg/videolan/libvlc/CacheFactory;->sICacheManager:Ljava/lang/Class;

    :cond_0
    :try_start_0
    sget-object v0, Lorg/videolan/libvlc/CacheFactory;->sICacheManager:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/ICacheManager;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
